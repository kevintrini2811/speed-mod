"""Read native Spine methods for the installed build; never load the game."""
from pathlib import Path
import struct, re, json, hashlib
import pefile
from capstone import Cs, CS_ARCH_X86, CS_MODE_64
ROOT = Path(__file__).resolve().parents[1]
GAME = Path("/mnt/FastGaming1/SteamLibrary/steamapps/common/PVZ Replanted")
pe = pefile.PE(str(GAME/"GameAssembly.dll"))
raw = (GAME/"GameAssembly.dll").read_bytes()
base = pe.OPTIONAL_HEADER.ImageBase
module_name = b"spine-unity.dll\0"
name_offset = raw.index(module_name)
name_ptr = struct.pack("<Q", base + pe.get_rva_from_offset(name_offset))
modules = []
at = 0
while True:
    at = raw.find(name_ptr, at)
    if at < 0: break
    count, pointer = struct.unpack_from("<QQ", raw, at+8)
    if 100 < count < 100000 and base < pointer < base+pe.OPTIONAL_HEADER.SizeOfImage:
        modules.append((count,pointer))
    at += 8
if len(modules) != 1: raise ValueError(modules)
count, pointer = modules[0]
method_ptrs = struct.unpack("<"+"Q"*count, pe.get_data(pointer-base,count*8))
names = {100663627:"Update-float", 100663628:"UpdateAnimationStatus",100663630:"StartApplyAnimation",
         100663631:"FinishApplyAnimation",100663632:"ApplyAnimation",100663633:"AfterAnimationApplied"}
output = ROOT/"references/native-spine"
output.mkdir(parents=True,exist_ok=True)
cs=Cs(CS_ARCH_X86, CS_MODE_64)
results={}
for token, name in names.items():
    rva=method_ptrs[(token & 0xffffff)-1]-base
    next_rva=min(p-base for p in method_ptrs if p-base>rva)
    results[name]=hex(rva)
    lines=[f"{i.address-base:08x}: {i.mnemonic} {i.op_str}" for i in cs.disasm(pe.get_data(rva,next_rva-rva),base+rva)]
    (output/(name+".asm")).write_text("\n".join(lines)+"\n")
(output/"sources.json").write_text(json.dumps({"game_assembly_sha256":hashlib.sha256(raw).hexdigest(),"methods":results},indent=2)+"\n")
print(results)
