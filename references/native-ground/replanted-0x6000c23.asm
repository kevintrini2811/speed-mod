007c84d0: push rbx
007c84d2: sub rsp, 0x20
007c84d6: cmp byte ptr [rip + 0x4723975], 0
007c84dd: mov rbx, rcx
007c84e0: jne 0x1807c84f5
007c84e2: lea rcx, [rip + 0x4464f8f]
007c84e9: call 0x1804feb70
007c84ee: mov byte ptr [rip + 0x472395d], 1
007c84f5: cmp byte ptr [rbx + 0x150], 0
007c84fc: je 0x1807c854d
007c84fe: mov rcx, qword ptr [rip + 0x4464f73]
007c8505: mov qword ptr [rsp + 0x30], rdi
007c850a: mov rdi, qword ptr [rbx + 0x158]
007c8511: cmp dword ptr [rcx + 0xe4], 0
007c8518: jne 0x1807c851f
007c851a: call 0x1804feeb0
007c851f: xor r8d, r8d
007c8522: xor edx, edx
007c8524: mov rcx, rdi
007c8527: call 0x183832900
007c852c: mov rdi, qword ptr [rsp + 0x30]
007c8531: test al, al
007c8533: je 0x1807c854d
007c8535: mov rcx, qword ptr [rbx + 0x158]
007c853c: test rcx, rcx
007c853f: je 0x1807c8553
007c8541: xor edx, edx
007c8543: add rsp, 0x20
007c8547: pop rbx
007c8548: jmp 0x180721db0
007c854d: add rsp, 0x20
007c8551: pop rbx
007c8552: ret 
007c8553: call 0x1804fee20
007c8558: int3 
007c8559: int3 
007c855a: int3 
007c855b: int3 
007c855c: int3 
007c855d: int3 
007c855e: int3 
007c855f: int3 
