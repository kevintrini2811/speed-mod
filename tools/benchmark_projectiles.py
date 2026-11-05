"""Compare projectile load through DebugMod 1.1.1 without profile writes.

Start at the splash screen or main menu. Run before and after installing SpeedMod,
restarting the game between versions. Each run creates and leaves a debug level.
"""
import argparse
import json
from pathlib import Path
import statistics
import sys
import time

sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "debug-mod/tools"))
import debug_api


def run(output):
    root = debug_api.GAME / "UserData/DebugModApi"
    results = []
    session_board = None

    def call(command, args=None):
        response = debug_api.call(root, command, args or {})
        if not response.get("ok"):
            raise RuntimeError(response)
        return response["result"]

    def wait(command, predicate):
        deadline = time.monotonic() + 90
        while time.monotonic() < deadline:
            try:
                response = debug_api.call(root, command, {})
                if response.get("ok") and predicate(response["result"]):
                    return response["result"]
            except debug_api.ApiFailure:
                pass
            time.sleep(.3)
        raise RuntimeError("State timeout: " + command)

    wait("help", lambda result: "startup.continue" in result["commands"])
    deadline = time.monotonic() + 90
    while True:
        response = debug_api.call(root, "startup.continue", {})
        if response.get("ok"):
            break
        if response.get("error", {}).get("code") != "STARTUP_NOT_READY" or time.monotonic() >= deadline:
            raise RuntimeError(response)
        time.sleep(.3)
    wait("status", lambda state: state["ready"] and not state["board"])
    try:
        call("debug.start", {"index": 1})
        wait("chooser", lambda state: state["visible"])
        call("chooser.select", {"indices": [0], "confirm": True})
        wait("chooser", lambda state: state["zombiePhase"])
        call("chooser.select", {"indices": [], "confirm": True})
        state = wait("status", lambda state: state["scene"] == "Playing")
        session_board = state["board"]
        for row in range(5):
            zombie = call("zombie.place", {"type": "Normal", "col": 8, "row": row})["native"]
            frozen = call("debug.zombie.set", {
                "board": session_board, "id": zombie["DataID"],
                "health": 10000000, "freezeTicks": 1000000,
            })["native"]
            assert frozen["mIceTrapCounter"] > 999000
        for row in range(5):
            for col in range(6):
                call("plant.place", {"type": "Repeater", "col": col, "row": row})
        print("Combat workload ready: 30 Repeaters, 5 frozen targets.", flush=True)
        for index in [0, 4, 5, 6, 6, 5, 4, 0]:
            speed = call("speed", {"index": index})
            time.sleep(1)
            samples = []
            first = call("fps")
            start = time.monotonic()
            while time.monotonic() - start < 6:
                samples.append(call("fps"))
                time.sleep(.12)
            last = call("fps")
            elapsed = time.monotonic() - start
            assert first["board"] == last["board"] == session_board
            shots = call("projectiles")["items"]
            plants = call("plants")["items"]
            zombies = call("zombies")["items"]
            assert len(plants) == 30 and len(zombies) == 5
            tick_count = last["simulationTick"] - first["simulationTick"]
            result = {
                "index": index, "scale": speed["effective"], "elapsed": elapsed,
                "fps": (last["frame"] - first["frame"]) / elapsed,
                "instant_median": statistics.median(sample["instantaneous"] for sample in samples),
                "simulation_ticks_per_second": tick_count / elapsed,
                "simulation_rate": tick_count * last["tickSeconds"] / elapsed,
                "projectiles": len(shots), "plants": len(plants), "zombies": len(zombies),
                "target_health": [zombie["native"]["mBodyHealth"] for zombie in zombies],
                "samples": samples,
            }
            results.append(result)
            output.write_text(json.dumps(results, indent=2) + "\n")
            print({key: value for key, value in result.items() if key != "samples"}, flush=True)
    finally:
        if session_board:
            current = call("status")
            if current["debug"] and current["board"] == session_board:
                call("speed", {"index": 0})
                call("level.leave")
                wait("status", lambda state: state["ready"] and not state["board"])


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("output", type=Path)
    run(parser.parse_args().output)
