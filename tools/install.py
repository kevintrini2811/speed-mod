"""Install the built SpeedMod/FusionMod pair without starting the game."""
import datetime
import fcntl
import hashlib
import json
import os
from pathlib import Path
import tempfile
import xml.etree.ElementTree as ET
import pefile

ROOT = Path(__file__).resolve().parents[1]
GAME = Path("/mnt/FastGaming1/SteamLibrary/steamapps/common/PVZ Replanted")
MODS = GAME / "Mods"

def digest(data):
    return hashlib.sha256(data).hexdigest() if data is not None else None

def atomic(path, data):
    stat = path.stat() if path.exists() else path.parent.stat()
    fd, name = tempfile.mkstemp(dir=path.parent, prefix=".SpeedMod-")
    try:
        with os.fdopen(fd, "wb") as stream:
            stream.write(data); stream.flush(); os.fsync(stream.fileno())
        os.chmod(name, 0o644)
        os.chown(name, stat.st_uid, stat.st_gid)
        os.replace(name, path)
        directory = os.open(path.parent, os.O_DIRECTORY)
        try: os.fsync(directory)
        finally: os.close(directory)
    finally:
        if os.path.exists(name): os.unlink(name)

def version(path):
    pe = pefile.PE(str(path))
    try:
        info = pe.VS_FIXEDFILEINFO[0]
        return (info.FileVersionMS >> 16, info.FileVersionMS & 65535,
                info.FileVersionLS >> 16, info.FileVersionLS & 65535)
    finally:
        pe.close()

def install():
    builds = {"SpeedMod.dll": ROOT/"bin/Release/net6.0/SpeedMod.dll",
              "FusionMod.dll": ROOT.parent/"fusion-mod/bin/Release/net6.0/FusionMod.dll"}
    projects = {"SpeedMod.dll": ROOT/"SpeedMod.csproj", "FusionMod.dll": ROOT.parent/"fusion-mod/FusionMod.csproj"}
    versions = {name: ET.parse(path).findtext(".//Version") for name,path in projects.items()}
    expected = {name: tuple(map(int, value.split("."))) + (0,) for name,value in versions.items()}
    payload = {}
    for name, path in builds.items():
        if version(path) != expected[name]: raise ValueError(f"Unexpected built version: {path}")
        payload[name] = path.read_bytes()
    originals = {name: (MODS/name).read_bytes() if (MODS/name).exists() else None for name in builds}
    backup = ROOT/"backups"/datetime.datetime.now().strftime("%Y%m%d-%H%M%S-%f")
    backup.mkdir(parents=True)
    for name, data in originals.items():
        if data is not None: (backup/name).write_bytes(data)
    proof = {"game_started": False, "before": {n: digest(d) for n,d in originals.items()},
             "after": {n: digest(d) for n,d in payload.items()}}
    (backup/"installation.json").write_text(json.dumps(proof, indent=2)+"\n")
    checksums = "".join(f"{digest(data)}  {name}\n" for name,data in payload.items())
    previous = ROOT.parent/"fusion-mod/SHA256SUMS"
    lines = [line for line in previous.read_text().splitlines()
             if line.split()[-1] not in builds]
    writes = {MODS/name: data for name,data in payload.items()}
    writes[ROOT/"SHA256SUMS"] = checksums.encode()
    writes[previous] = ("\n".join(lines)+"\n"+checksums).encode()
    snapshots = {path: path.read_bytes() if path.exists() else None for path in writes}
    snapshots.update({MODS/name: data for name,data in originals.items()})
    for path in (ROOT/"SHA256SUMS", previous):
        if snapshots[path] is not None:
            (backup/(path.parent.name+"-SHA256SUMS")).write_bytes(snapshots[path])
    changed = []
    try:
        for path, data in writes.items():
            current = path.read_bytes() if path.exists() else None
            expected = originals[path.name] if path.parent == MODS else snapshots[path]
            if current != expected: raise ValueError(f"File changed concurrently: {path}")
            changed.append(path); atomic(path, data)
        for path, data in writes.items():
            if path.read_bytes() != data: raise ValueError(f"Installed hash mismatch: {path}")
    except BaseException:
        for path in reversed(changed):
            if snapshots[path] is None: path.unlink(missing_ok=True)
            else: atomic(path, snapshots[path])
        raise
    print(f"Installed SpeedMod {versions['SpeedMod.dll']} and FusionMod {versions['FusionMod.dll']}. Backup: {backup}")

if __name__ == "__main__":
    with (MODS/".FusionMod.release.lock").open("a") as fusion_lock, (MODS/".SpeedMod.release.lock").open("a") as speed_lock:
        fcntl.flock(fusion_lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        fcntl.flock(speed_lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        install()
