007c64e0: mov qword ptr [rsp + 8], rbx
007c64e5: push rdi
007c64e6: sub rsp, 0x40
007c64ea: cmp byte ptr [rip + 0x4725953], 0
007c64f1: mov rbx, rcx
007c64f4: jne 0x1807c6509
007c64f6: lea rcx, [rip + 0x4466f7b]
007c64fd: call 0x1804feb70
007c6502: mov byte ptr [rip + 0x472593b], 1
007c6509: xor edx, edx
007c650b: mov rcx, rbx
007c650e: call 0x1807cb4b0
007c6513: mov rcx, qword ptr [rip + 0x4466f5e]
007c651a: mov rdi, qword ptr [rbx + 0x30]
007c651e: cmp dword ptr [rcx + 0xe4], 0
007c6525: jne 0x1807c652c
007c6527: call 0x1804feeb0
007c652c: xor r8d, r8d
007c652f: xor edx, edx
007c6531: mov rcx, rdi
007c6534: call 0x183832900
007c6539: test al, al
007c653b: je 0x1807c65a9
007c653d: mov rax, qword ptr [rbx + 0x138]
007c6544: mov rdi, qword ptr [rbx + 0x30]
007c6548: test rax, rax
007c654b: je 0x1807c65b4
007c654d: movss xmm2, dword ptr [rax + 0xb4]
007c6555: xorps xmm1, xmm1
007c6558: mulss xmm2, dword ptr [rip + 0x346d704]
007c6560: mulss xmm2, dword ptr [rip + 0x346d6c4]
007c6568: xorps xmm0, xmm0
007c656b: movss dword ptr [rsp + 0x28], xmm2
007c6571: unpcklps xmm0, xmm1
007c6574: lea rdx, [rsp + 0x20]
007c6579: xor r8d, r8d
007c657c: movsd qword ptr [rsp + 0x20], xmm0
007c6582: lea rcx, [rsp + 0x30]
007c6587: call 0x183824170
007c658c: test rdi, rdi
007c658f: je 0x1807c65b4
007c6591: movups xmm0, xmmword ptr [rax]
007c6594: xor r8d, r8d
007c6597: lea rdx, [rsp + 0x20]
007c659c: mov rcx, rdi
007c659f: movaps xmmword ptr [rsp + 0x20], xmm0
007c65a4: call 0x1838491f0
007c65a9: mov rbx, qword ptr [rsp + 0x50]
007c65ae: add rsp, 0x40
007c65b2: pop rdi
007c65b3: ret 
007c65b4: call 0x1804fee20
007c65b9: int3 
007c65ba: int3 
007c65bb: int3 
007c65bc: int3 
007c65bd: int3 
007c65be: int3 
007c65bf: int3 
