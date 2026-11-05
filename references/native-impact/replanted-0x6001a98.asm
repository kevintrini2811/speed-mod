006c8400: push rdi
006c8402: sub rsp, 0x80
006c8409: cmp byte ptr [rip + 0x48232a5], 0
006c8410: mov rdi, rcx
006c8413: jne 0x1806c8440
006c8415: lea rcx, [rip + 0x4562ba4]
006c841c: call 0x1804feb70
006c8421: lea rcx, [rip + 0x45b9028]
006c8428: call 0x1804feb70
006c842d: lea rcx, [rip + 0x45b90f4]
006c8434: call 0x1804feb70
006c8439: mov byte ptr [rip + 0x4823275], 1
006c8440: xorps xmm0, xmm0
006c8443: xorps xmm1, xmm1
006c8446: xor edx, edx
006c8448: mov rcx, rdi
006c844b: movups xmmword ptr [rsp + 0x30], xmm0
006c8450: movups xmmword ptr [rsp + 0x20], xmm1
006c8455: call 0x1806c8a60
006c845a: test al, al
006c845c: jne 0x1806c8623
006c8462: mov qword ptr [rsp + 0x98], rbp
006c846a: mov qword ptr [rsp + 0xa0], rsi
006c8472: movaps xmmword ptr [rsp + 0x70], xmm6
006c8477: movaps xmmword ptr [rsp + 0x50], xmm8
006c847d: mov qword ptr [rsp + 0x90], rbx
006c8485: movaps xmmword ptr [rsp + 0x60], xmm7
006c848a: xor r8d, r8d
006c848d: lea rcx, [rsp + 0x40]
006c8492: mov rdx, rdi
006c8495: call 0x1806c86f0
006c849a: xor ebp, ebp
006c849c: xor esi, esi
006c849e: xor edx, edx
006c84a0: xorps xmm8, xmm8
006c84a4: xorps xmm6, xmm6
006c84a7: movups xmm0, xmmword ptr [rax]
006c84aa: mov rax, qword ptr [rdi + 0x18]
006c84ae: movups xmmword ptr [rsp + 0x30], xmm0
006c84b3: test rax, rax
006c84b6: je 0x1806c862e
006c84bc: movss xmm7, dword ptr [rip + 0x356b964]
006c84c4: nop dword ptr [rax]
006c84c8: nop dword ptr [rax + rax]
006c84d0: mov rcx, qword ptr [rax + 0x70]
006c84d4: test rcx, rcx
006c84d7: je 0x1806c862e
006c84dd: cmp edx, dword ptr [rcx + 0x28]
006c84e0: jge 0x1806c85ef
006c84e6: mov rax, qword ptr [rdi + 0x18]
006c84ea: test rax, rax
006c84ed: je 0x1806c862e
006c84f3: mov rcx, qword ptr [rax + 0x70]
006c84f7: test rcx, rcx
006c84fa: je 0x1806c862e
006c8500: mov r8, qword ptr [rip + 0x45b9021]
006c8507: mov edx, esi
006c8509: call 0x182449330
006c850e: mov rbx, rax
006c8511: test rax, rax
006c8514: je 0x1806c862e
006c851a: mov edx, dword ptr [rax + 0x34]
006c851d: xor ecx, ecx
006c851f: sub edx, dword ptr [rdi + 0x34]
006c8522: cmp dword ptr [rax + 0x70], 0x19
006c8526: cmovne ecx, edx
006c8529: test ecx, ecx
006c852b: jne 0x1806c85dd
006c8531: mov edx, dword ptr [rdi + 0xc0]
006c8537: xor r8d, r8d
006c853a: mov rcx, rax
006c853d: call 0x1806f12f0
006c8542: test al, al
006c8544: je 0x1806c85dd
006c854a: cmp dword ptr [rbx + 0x74], 0x3b
006c854e: jne 0x1806c855d
006c8550: comiss xmm7, dword ptr [rdi + 0x84]
006c8557: jae 0x1806c85dd
006c855d: cmp dword ptr [rdi + 0xa8], 7
006c8564: jne 0x1806c8583
006c8566: cmp dword ptr [rdi + 0xac], 0x19
006c856d: jge 0x1806c8583
006c856f: movss xmm0, dword ptr [rdi + 0x88]
006c8577: comiss xmm0, xmm8
006c857b: jb 0x1806c8583
006c857d: cmp dword ptr [rbx + 0x70], 0x11
006c8581: je 0x1806c85dd
006c8583: xor r8d, r8d
006c8586: lea rcx, [rsp + 0x40]
006c858b: mov rdx, rbx
006c858e: call 0x1806f2d70
006c8593: mov rcx, qword ptr [rip + 0x4562a26]
006c859a: movups xmm0, xmmword ptr [rax]
006c859d: movups xmmword ptr [rsp + 0x20], xmm0
006c85a2: cmp dword ptr [rcx + 0xe4], 0
006c85a9: jne 0x1806c85b0
006c85ab: call 0x1804feeb0
006c85b0: xor r8d, r8d
006c85b3: lea rdx, [rsp + 0x20]
006c85b8: lea rcx, [rsp + 0x30]
006c85bd: call 0x1806cbaa0
006c85c2: test eax, eax
006c85c4: js 0x1806c85dd
006c85c6: test rbp, rbp
006c85c9: je 0x1806c85d5
006c85cb: movss xmm0, dword ptr [rbx + 0x20]
006c85d0: comiss xmm0, xmm6
006c85d3: jae 0x1806c85dd
006c85d5: movss xmm6, dword ptr [rbx + 0x20]
006c85da: mov rbp, rbx
006c85dd: mov rax, qword ptr [rdi + 0x18]
006c85e1: inc esi
006c85e3: mov edx, esi
006c85e5: test rax, rax
006c85e8: je 0x1806c862e
006c85ea: jmp 0x1806c84d0
006c85ef: movaps xmm7, xmmword ptr [rsp + 0x60]
006c85f4: mov rax, rbp
006c85f7: mov rbp, qword ptr [rsp + 0x98]
006c85ff: mov rbx, qword ptr [rsp + 0x90]
006c8607: mov rsi, qword ptr [rsp + 0xa0]
006c860f: movaps xmm6, xmmword ptr [rsp + 0x70]
006c8614: movaps xmm8, xmmword ptr [rsp + 0x50]
006c861a: add rsp, 0x80
006c8621: pop rdi
006c8622: ret 
006c8623: xor eax, eax
006c8625: add rsp, 0x80
006c862c: pop rdi
006c862d: ret 
006c862e: call 0x1804fee20
006c8633: int3 
006c8634: int3 
006c8635: int3 
006c8636: int3 
006c8637: int3 
006c8638: int3 
006c8639: int3 
006c863a: int3 
006c863b: int3 
006c863c: int3 
006c863d: int3 
006c863e: int3 
006c863f: int3 
