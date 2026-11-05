using ReplantedModUi;
using HarmonyLib;
using Il2Cpp;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using Object = UnityEngine.Object;
using Il2CppInterop.Runtime.InteropTypes.Arrays;
using UnityEngine.InputSystem;

namespace SpeedMod;

// TimeUtil owns pause counts and flowing time. Never write Time.timeScale:
// menus and pause must keep their native ownership. Native cycle selection is
// retained while slow, including fast-forward clicks made during slowdown.
public static class BoardSpeed
{
    private static TimeCycler? owner;
    private static GameObject? control;
    private static Image? indicator;
    private static Il2CppTMPro.TMP_Text? label;
    private static bool slow;
    private static Il2CppReferenceArray<TimeCycler.CycleData>? originalCycles;
    private static readonly List<GameObject> extraIndicators = new();

    private static void Extend(TimeCycler cycler)
    {
        originalCycles = cycler.m_cycles;
        var cycles = new Il2CppReferenceArray<TimeCycler.CycleData>(originalCycles.Length + 3);
        for (int i = 0; i < originalCycles.Length; ++i) cycles[i] = originalCycles[i];
        var staging = new GameObject("SpeedModCycleStaging");
        staging.SetActive(false);
        try
        {
            for (int i = 0; i < 3; ++i)
            {
                var template = originalCycles[originalCycles.Length - 1];
                var source = template.CurrentSpeedIndicator;
                // Native selection toggles every indicator independently.
                // Sharing one object would hide all but its final cycle.
                var icon = NativeUi.Clone(source, staging.transform, source.transform.parent, "SpeedModSpeed" + i);
                extraIndicators.Add(icon);
                cycles[originalCycles.Length + i] = new TimeCycler.CycleData
                { CurrentSpeedIndicator = icon, TimeScale = new[] { 5f, 10f, 20f }[i],
                    AudioTimescale = template.AudioTimescale, color = template.color };
            }
        }
        catch { Clear(false); throw; }
        finally { Object.Destroy(staging); }
        cycler.m_cycles = cycles;
    }
    public static TimeCycler? Cycler => owner != null ? owner : Object.FindObjectsOfType<TimeCycler>()
        .FirstOrDefault(value => value && value.gameObject.activeInHierarchy && value.m_button != null);

    public static RectTransform? SlowdownAnchor => control != null ? control.GetComponent<RectTransform>() : null;

    private static void Apply(TimeCycler cycler)
    {
        if (!slow) return;
        TimeUtil.SetFlowingTimeScale(.2f, 1f);
        // Native Update compares this with flowing time before resetting to 1x.
        cycler.m_lastTimeScaleSet = .2f;
    }

    internal static void CycleChanged(TimeCycler cycler)
    { if (owner?.Pointer == cycler.Pointer) Apply(cycler); }

    private static void Toggle()
    {
        if (owner == null || TimeUtil.IsTimePaused()) return;
        slow = !slow;
        if (slow) Apply(owner);
        else owner._setTimeIndex(owner.m_cycleIndex);
        Paint();
    }

    private static void Paint()
    {
        if (indicator != null) indicator.color = slow ? new Color(1f, .75f, .15f) : Color.white;
        if (control == null) return;
        if (label != null) { label.text = "0.2x"; label.gameObject.SetActive(slow); }
    }

    internal static void Update(bool playing)
    {
        var current = playing ? owner != null ? owner : Cycler : null;
        if (owner != null && (current == null || current.Pointer != owner.Pointer)) Clear(false);
        if (current == null) return;
        var sourceRect = current.m_button.GetComponent<RectTransform>();
        // Native layout owns the source's dimensions. The serialized sizeDelta
        // is zero; copying it leaves fixed-size arrows above an invisible plate.
        if (sourceRect.rect.width <= 0 || sourceRect.rect.height <= 0) return;
        if (control != null)
        {
            if (label != null) NativeUi.MatchCaption(label, current.m_textMeshProUGUI);
            var controlRect = control.GetComponent<RectTransform>();
            controlRect.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, sourceRect.rect.width);
            controlRect.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, sourceRect.rect.height);
            controlRect.position = sourceRect.TransformPoint(new Vector3(-sourceRect.rect.width - 12, 0, 0));
            var mouse = Mouse.current;
            var canvas = sourceRect.GetComponentInParent<Canvas>();
            if (!TimeUtil.IsTimePaused() && mouse != null && mouse.rightButton.wasPressedThisFrame
                && RectTransformUtility.RectangleContainsScreenPoint(sourceRect, mouse.position.ReadValue(),
                    canvas != null && canvas.renderMode != RenderMode.ScreenSpaceOverlay ? canvas.worldCamera : null))
                current._setTimeIndex(Math.Max(0, current.m_cycleIndex - 1));
            return;
        }
        owner = current;
        Extend(current);
        var source = current.m_button;
        var staging = new GameObject("SpeedModSpeedStaging");
        staging.SetActive(false);
        try
        {
            var clone = NativeUi.Clone(source.gameObject, staging.transform, staging.transform, "SpeedModSlowdownButton");
            var wrapper = new GameObject("SpeedModSlowdown").AddComponent<RectTransform>();
            wrapper.SetParent(staging.transform, false);
            wrapper.anchorMin = sourceRect.anchorMin; wrapper.anchorMax = sourceRect.anchorMax;
            wrapper.pivot = sourceRect.pivot;
            wrapper.localScale = sourceRect.localScale;
            wrapper.anchoredPosition = sourceRect.anchoredPosition;
            var cloneRect = clone.GetComponent<RectTransform>();
            cloneRect.SetParent(wrapper, false);
            cloneRect.anchorMin = Vector2.zero; cloneRect.anchorMax = Vector2.one;
            cloneRect.offsetMin = cloneRect.offsetMax = Vector2.zero;
            cloneRect.localScale = Vector3.one;
            control = wrapper.gameObject;
            control.SetActive(false);
            wrapper.SetParent(source.transform.parent, false);
            wrapper.SetSizeWithCurrentAnchors(RectTransform.Axis.Horizontal, sourceRect.rect.width);
            wrapper.SetSizeWithCurrentAnchors(RectTransform.Axis.Vertical, sourceRect.rect.height);
            clone.SetActive(true);
            var button = clone.GetComponent<Button>();
            button.onClick = new Button.ButtonClickedEvent();
            button.onClick.AddListener((UnityAction)Toggle);
            indicator = button.targetGraphic?.TryCast<Image>();
            var layout = control.GetComponent<LayoutElement>() ?? control.AddComponent<LayoutElement>();
            layout.ignoreLayout = true;
            foreach (var graphic in control.GetComponentsInChildren<Image>(true))
            { var color = graphic.color; color.a = 1; graphic.color = color; graphic.enabled = true; }
            // The native targetGraphic is Background/Image. Keep its sliced
            // plate and sprite transitions instead of guessing by object name.
            foreach (var group in control.GetComponentsInChildren<CanvasGroup>(true)) group.alpha = 1;
            var colors = button.colors;
            colors.normalColor = Color.white;
            colors.highlightedColor = Color.white;
            colors.pressedColor = new Color(.8f, .8f, .8f, 1);
            colors.selectedColor = Color.white;
            colors.colorMultiplier = 1;
            button.colors = colors;
            var rect = control.GetComponent<RectTransform>();
            var original = source.GetComponent<RectTransform>();
            rect.anchoredPosition = original.anchoredPosition + new Vector2(-original.rect.width - 12, 0);
            // Keep only the original 1.5x indicator, mirrored horizontally.
            // The label remains readable. No invented replacement icon.
            GameObject? icon = null;
            for (int i = 0; i < current.m_cycles.Count; ++i)
                if (Math.Abs(current.m_cycles[i].TimeScale - 1.5f) < .01f)
                    icon = current.m_cycles[i].CurrentSpeedIndicator;
            foreach (var cycle in current.m_cycles)
            {
                if (cycle.CurrentSpeedIndicator == null) continue;
                string name = cycle.CurrentSpeedIndicator.name;
                foreach (var child in control.GetComponentsInChildren<Transform>(true))
                    if (child.name == name)
                    {
                        child.gameObject.SetActive(icon != null && name == icon.name);
                        if (icon != null && name == icon.name)
                        {
                            var scale = child.localScale; scale.x = -Math.Abs(scale.x); child.localScale = scale;
                            foreach (var label in child.GetComponentsInChildren<Il2CppTMPro.TMP_Text>(true))
                            { var textScale = label.transform.localScale; textScale.x *= -1; label.transform.localScale = textScale; }
                        }
                    }
            }
            label = NativeUi.CloneCaption(current.m_textMeshProUGUI, rect, "SlowdownState");
            Paint();
            control.SetActive(true);
        }
        catch { Clear(); throw; }
        finally { Object.Destroy(staging); }
    }

    internal static void Clear(bool restoreSelection = true)
    {
        bool restore = slow;
        slow = false;
        if (restore)
        {
            if (restoreSelection && owner != null) owner._setTimeIndex(owner.m_cycleIndex);
            else TimeUtil.SetFlowingTimeScale(1f, 1f);
        }
        if (control != null) { control.SetActive(false); Object.Destroy(control); }
        if (owner != null && originalCycles != null)
        {
            owner.m_cycleIndex = Math.Min(owner.m_cycleIndex, originalCycles.Length - 1);
            owner.m_cycles = originalCycles;
            if (restoreSelection) owner._setTimeIndex(owner.m_cycleIndex);
            else TimeUtil.SetFlowingTimeScale(1f, 1f);
        }
        foreach (var icon in extraIndicators) if (icon) Object.Destroy(icon);
        extraIndicators.Clear();
        originalCycles = null;
        control = null; indicator = null; label = null; owner = null;
    }
}

[HarmonyPatch(typeof(TimeCycler), nameof(TimeCycler._setTimeIndex))]
internal static class SlowdownCyclePatch
{ private static void Postfix(TimeCycler __instance) => BoardSpeed.CycleChanged(__instance); }
