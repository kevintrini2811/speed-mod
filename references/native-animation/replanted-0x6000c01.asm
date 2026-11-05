007c6410: mov qword ptr [rsp + 8], rbx
007c6415: mov qword ptr [rsp + 0x10], rbp
007c641a: mov qword ptr [rsp + 0x18], rsi
007c641f: push rdi
007c6420: sub rsp, 0x20
007c6424: cmp byte ptr [rip + 0x4725a1c], 0
007c642b: mov ebp, r8d
007c642e: mov rsi, rdx
007c6431: mov rdi, rcx
007c6434: jne 0x1807c6449
007c6436: lea rcx, [rip + 0x446703b]
007c643d: call 0x1804feb70
007c6442: mov byte ptr [rip + 0x47259fe], 1
007c6449: xor r9d, r9d
007c644c: mov r8d, ebp
007c644f: mov rdx, rsi
007c6452: mov rcx, rdi
007c6455: call 0x1807ca6f0
007c645a: mov rcx, qword ptr [rip + 0x4467017]
007c6461: mov rbx, qword ptr [rdi + 0x140]
007c6468: cmp dword ptr [rcx + 0xe4], 0
007c646f: jne 0x1807c6476
007c6471: call 0x1804feeb0
007c6476: xor r8d, r8d
007c6479: xor edx, edx
007c647b: mov rcx, rbx
007c647e: call 0x183832900
007c6483: xor r8d, r8d
007c6486: movzx edx, al
007c6489: mov rcx, rsi
007c648c: movzx ebx, al
007c648f: call 0x18063bab0
007c6494: test bl, bl
007c6496: je 0x1807c64bd
007c6498: mov rcx, qword ptr [rdi + 0x140]
007c649f: test rcx, rcx
007c64a2: je 0x1807c64d2
007c64a4: mov r9, qword ptr [rcx]
007c64a7: mov r8d, ebp
007c64aa: mov rdx, rsi
007c64ad: mov rax, qword ptr [r9 + 0x288]
007c64b4: mov r9, qword ptr [r9 + 0x290]
007c64bb: call rax
007c64bd: mov rbx, qword ptr [rsp + 0x30]
007c64c2: mov rbp, qword ptr [rsp + 0x38]
007c64c7: mov rsi, qword ptr [rsp + 0x40]
007c64cc: add rsp, 0x20
007c64d0: pop rdi
007c64d1: ret 
007c64d2: call 0x1804fee20
007c64d7: int3 
007c64d8: int3 
007c64d9: int3 
007c64da: int3 
007c64db: int3 
007c64dc: int3 
007c64dd: int3 
007c64de: int3 
007c64df: int3 
