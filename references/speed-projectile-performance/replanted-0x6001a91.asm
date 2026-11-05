006ca280: mov qword ptr [rsp + 8], rbx
006ca285: push rdi
006ca286: sub rsp, 0x30
006ca28a: inc dword ptr [rcx + 0xac]
006ca290: mov rbx, rcx
006ca293: mov rax, qword ptr [rcx + 0x10]
006ca297: movaps xmmword ptr [rsp + 0x20], xmm6
006ca29c: test rax, rax
006ca29f: je 0x1806ca4c1
006ca2a5: cmp dword ptr [rax + 0xe0], 3
006ca2ac: je 0x1806ca2da
006ca2ae: mov rax, qword ptr [rcx + 0x18]
006ca2b2: test rax, rax
006ca2b5: je 0x1806ca4c1
006ca2bb: mov rcx, qword ptr [rax + 0x108]
006ca2c2: test rcx, rcx
006ca2c5: je 0x1806ca4c1
006ca2cb: xor edx, edx
006ca2cd: call 0x1806a5b20
006ca2d2: test al, al
006ca2d4: je 0x1806ca4b1
006ca2da: cmp dword ptr [rbx + 0xa8], 0
006ca2e1: mov eax, 0x14
006ca2e6: je 0x1806ca339
006ca2e8: cmp dword ptr [rbx + 0xa8], 0xe
006ca2ef: je 0x1806ca339
006ca2f1: cmp dword ptr [rbx + 0xa8], 1
006ca2f8: je 0x1806ca339
006ca2fa: cmp dword ptr [rbx + 0xa8], 2
006ca301: je 0x1806ca339
006ca303: cmp dword ptr [rbx + 0xa8], 3
006ca30a: je 0x1806ca339
006ca30c: cmp dword ptr [rbx + 0xa8], 5
006ca313: je 0x1806ca339
006ca315: cmp dword ptr [rbx + 0xa8], 0xa
006ca31c: je 0x1806ca339
006ca31e: cmp dword ptr [rbx + 0xa8], 0xc
006ca325: je 0x1806ca339
006ca327: cmp dword ptr [rbx + 0xa8], 0xb
006ca32e: je 0x1806ca339
006ca330: cmp dword ptr [rbx + 0xa8], 0xd
006ca337: jne 0x1806ca33b
006ca339: xor eax, eax
006ca33b: cmp dword ptr [rbx + 0xac], eax
006ca341: jle 0x1806ca359
006ca343: mov edx, dword ptr [rbx + 0x34]
006ca346: xor r9d, r9d
006ca349: xor r8d, r8d
006ca34c: mov ecx, 0x4a768
006ca351: call 0x180665070
006ca356: mov dword ptr [rbx + 0x38], eax
006ca359: cmp dword ptr [rbx + 0xb0], 0
006ca360: jle 0x1806ca368
006ca362: dec dword ptr [rbx + 0xb0]
006ca368: cmp dword ptr [rbx + 0xa0], 0
006ca36f: movss xmm0, dword ptr [rbx + 0xb8]
006ca377: addss xmm0, dword ptr [rbx + 0xb4]
006ca37f: movss dword ptr [rbx + 0xb4], xmm0
006ca387: jle 0x1806ca3aa
006ca389: mov eax, dword ptr [rbx + 0x78]
006ca38c: mov ecx, dword ptr [rbx + 0xa0]
006ca392: inc eax
006ca394: imul ecx, dword ptr [rbx + 0x74]
006ca398: cdq 
006ca399: idiv ecx
006ca39b: mov eax, edx
006ca39d: mov dword ptr [rbx + 0x78], edx
006ca3a0: cdq 
006ca3a1: idiv dword ptr [rbx + 0xa0]
006ca3a7: mov dword ptr [rbx + 0x70], eax
006ca3aa: mov rcx, qword ptr [rbx + 0x18]
006ca3ae: mov edi, dword ptr [rbx + 0x34]
006ca3b1: test rcx, rcx
006ca3b4: je 0x1806ca4c1
006ca3ba: movss xmm1, dword ptr [rbx + 0x7c]
006ca3bf: xor r9d, r9d
006ca3c2: mov r8d, edi
006ca3c5: call 0x18065eb20
006ca3ca: movaps xmm6, xmm0
006ca3cd: xor edx, edx
006ca3cf: mov rcx, rbx
006ca3d2: cmp dword ptr [rbx + 0xa4], 1
006ca3d9: je 0x1806ca3e2
006ca3db: call 0x1806c9c90
006ca3e0: jmp 0x1806ca3e7
006ca3e2: call 0x1806c95f0
006ca3e7: mov rcx, qword ptr [rbx + 0x18]
006ca3eb: test rcx, rcx
006ca3ee: je 0x1806ca4c1
006ca3f4: movss xmm1, dword ptr [rbx + 0x7c]
006ca3f9: xor r9d, r9d
006ca3fc: mov r8d, edi
006ca3ff: call 0x18065eb20
006ca404: cmp dword ptr [rbx + 0xa8], 0xb
006ca40b: movaps xmm2, xmm0
006ca40e: subss xmm2, xmm6
006ca412: jne 0x1806ca417
006ca414: xorps xmm2, xmm2
006ca417: cmp dword ptr [rbx + 0xa4], 8
006ca41e: jne 0x1806ca433
006ca420: movaps xmm0, xmm2
006ca423: addss xmm0, dword ptr [rbx + 0x80]
006ca42b: movss dword ptr [rbx + 0x80], xmm0
006ca433: cmp dword ptr [rbx + 0xa4], 1
006ca43a: jne 0x1806ca463
006ca43c: movss xmm1, dword ptr [rbx + 0x84]
006ca444: movaps xmm0, xmm2
006ca447: addss xmm0, dword ptr [rbx + 0x80]
006ca44f: subss xmm1, xmm2
006ca453: movss dword ptr [rbx + 0x80], xmm0
006ca45b: movss dword ptr [rbx + 0x84], xmm1
006ca463: addss xmm2, dword ptr [rbx + 0x98]
006ca46b: movss xmm0, dword ptr [rbx + 0x84]
006ca473: xor r9d, r9d
006ca476: addss xmm0, dword ptr [rbx + 0x80]
006ca47e: mov eax, dword ptr [rbx + 0x7c]
006ca481: movss xmm1, dword ptr [rbx + 0x7c]
006ca486: mov ecx, dword ptr [rbx + 0xc8]
006ca48c: movss dword ptr [rbx + 0x98], xmm2
006ca494: movss xmm2, dword ptr [rbx + 0x84]
006ca49c: addss xmm2, dword ptr [rbx + 0x80]
006ca4a4: movss dword ptr [rbx + 0x24], xmm0
006ca4a9: mov dword ptr [rbx + 0x20], eax
006ca4ac: call 0x18060f880
006ca4b1: mov rbx, qword ptr [rsp + 0x40]
006ca4b6: movaps xmm6, xmmword ptr [rsp + 0x20]
006ca4bb: add rsp, 0x30
006ca4bf: pop rdi
006ca4c0: ret 
006ca4c1: call 0x1804fee20
006ca4c6: int3 
006ca4c7: int3 
006ca4c8: int3 
006ca4c9: int3 
006ca4ca: int3 
006ca4cb: int3 
006ca4cc: int3 
006ca4cd: int3 
006ca4ce: int3 
006ca4cf: int3 
