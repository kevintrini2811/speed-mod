"""Compose native slowdown button and roof using Plant Library's icon convention."""
import hashlib
import json
from pathlib import Path
import UnityPy
from PIL import Image, ImageOps

ROOT = Path(__file__).resolve().parents[1]
GAME = Path("/mnt/FastGaming1/SteamLibrary/steamapps/common/PVZ Replanted")
BUNDLES = GAME / "Replanted_Data/StreamingAssets/aa/StandaloneWindows64"
INPUTS = [BUNDLES / name for name in (
    "backgroundatlases_assets_all_19e402bc532d2cf4f6d062dcf0b108ec.bundle",
    "defaultlocalgroup_assets_ui/sprites_5b5218033ecdc00622a31e94d7a6a379.bundle",
    "uiatlasfrontend_assets_all.bundle", "uiatlasgameplay_assets_all.bundle")]

def sha256(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def export():
    env = UnityPy.load(*(str(p) for p in INPUTS))
    ids = {6300021484793803998: "Area5_Roof",
           -6031288369445383670: "SPR_MainHud_Acceleration_02",
           -7241453303276410771: "SPR_BasicButtonSmallBackground"}
    sprites = {}
    for obj in env.objects:
        if obj.type.name != "Sprite" or obj.path_id not in ids:
            continue
        data = obj.read()
        if data.m_Name != ids[obj.path_id]:
            raise ValueError("Unexpected native sprite")
        sprites[data.m_Name] = data.image.convert("RGBA")
    assets = ROOT / "assets"
    assets.mkdir(exist_ok=True)
    roof = sprites["Area5_Roof"]
    # Keep roof tiles, avoiding the sky and chimney at the outer edges.
    crop = (int(roof.width * .30), int(roof.height * .35), int(roof.width * .75), int(roof.height * .80))
    roof = roof.crop(crop)
    roof.save(assets / "roof.png")
    # The runtime mirrors the native 1.5x indicator. The native plate stays upright.
    arrows = ImageOps.mirror(sprites["SPR_MainHud_Acceleration_02"])
    plate = sprites["SPR_BasicButtonSmallBackground"]
    button = plate.resize((360, 360), Image.Resampling.LANCZOS)
    arrows = ImageOps.contain(arrows, (260, 260), Image.Resampling.LANCZOS)
    button.alpha_composite(arrows, ((360-arrows.width)//2, (360-arrows.height)//2))
    button.save(assets / "slowdown.png")
    icon = ImageOps.fit(roof, (512, 512), method=Image.Resampling.LANCZOS)
    icon.putalpha(255)
    icon.alpha_composite(button, (76, 76))
    icon.save(assets / "menu-icon.png")
    proof = {"reference": "../../plant-library/tools/export_menu_assets.py",
             "inputs": {str(p): sha256(p) for p in INPUTS},
             "sprites": ids, "roof_crop": crop, "indicator_mirrored": True,
             "icon_size": [512, 512], "game_started": False,
             "assets": {n: sha256(assets/n) for n in ("roof.png", "slowdown.png", "menu-icon.png")}}
    (assets / "sources.json").write_text(json.dumps(proof, indent=2) + "\n")

if __name__ == "__main__":
    export()
