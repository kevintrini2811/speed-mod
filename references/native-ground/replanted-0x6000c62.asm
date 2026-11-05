007c8450: mov qword ptr [rsp + 8], rbx
007c8455: push rdi
007c8456: sub rsp, 0x20
007c845a: cmp byte ptr [rip + 0x4723a01], 0
007c8461: mov rbx, rcx
007c8464: jne 0x1807c8479
007c8466: lea rcx, [rip + 0x446500b]
007c846d: call 0x1804feb70
007c8472: mov byte ptr [rip + 0x47239e9], 1
007c8479: mov rcx, qword ptr [rip + 0x4464ff8]
007c8480: mov rdi, qword ptr [rbx + 0x158]
007c8487: cmp dword ptr [rcx + 0xe4], 0
007c848e: jne 0x1807c8495
007c8490: call 0x1804feeb0
007c8495: xor r8d, r8d
007c8498: xor edx, edx
007c849a: mov rcx, rdi
007c849d: call 0x183832900
007c84a2: test al, al
007c84a4: je 0x1807c84b9
007c84a6: mov rcx, qword ptr [rbx + 0x158]
007c84ad: test rcx, rcx
007c84b0: je 0x1807c84c4
007c84b2: xor edx, edx
007c84b4: call 0x180724f50
007c84b9: mov rbx, qword ptr [rsp + 0x30]
007c84be: add rsp, 0x20
007c84c2: pop rdi
007c84c3: ret 
007c84c4: call 0x1804fee20
007c84c9: int3 
007c84ca: int3 
007c84cb: int3 
007c84cc: int3 
007c84cd: int3 
007c84ce: int3 
007c84cf: int3 
