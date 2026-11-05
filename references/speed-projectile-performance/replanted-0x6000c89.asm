007cb020: mov qword ptr [rsp + 0x20], rdi
007cb025: push rbp
007cb026: mov rbp, rsp
007cb029: sub rsp, 0x70
007cb02d: cmp byte ptr [rip + 0x4720e3a], 0
007cb034: mov rdi, rcx
007cb037: jne 0x1807cb04c
007cb039: lea rcx, [rip + 0x4462438]
007cb040: call 0x1804feb70
007cb045: mov byte ptr [rip + 0x4720e22], 1
007cb04c: cmp qword ptr [rdi + 0x20], 0
007cb051: je 0x1807cb229
007cb057: mov qword ptr [rsp + 0x88], rbx
007cb05f: mov rcx, qword ptr [rip + 0x4462412]
007cb066: mov rbx, qword ptr [rdi + 0x30]
007cb06a: cmp dword ptr [rcx + 0xe4], 0
007cb071: jne 0x1807cb078
007cb073: call 0x1804feeb0
007cb078: mov qword ptr [rsp + 0x90], rsi
007cb080: xor r8d, r8d
007cb083: movaps xmmword ptr [rsp + 0x60], xmm6
007cb088: xor edx, edx
007cb08a: movaps xmmword ptr [rsp + 0x50], xmm7
007cb08f: mov rcx, rbx
007cb092: movaps xmmword ptr [rsp + 0x40], xmm8
007cb098: call 0x183832900
007cb09d: mov rbx, qword ptr [rdi + 0x58]
007cb0a1: mov rcx, qword ptr [rdi + 0x20]
007cb0a5: test al, al
007cb0a7: jne 0x1807cb237
007cb0ad: test rcx, rcx
007cb0b0: je 0x1807cb3a7
007cb0b6: mov rdx, qword ptr [rcx]
007cb0b9: mov rax, qword ptr [rdx + 0x1d8]
007cb0c0: mov rdx, qword ptr [rdx + 0x1e0]
007cb0c7: call rax
007cb0c9: mov rcx, qword ptr [rdi + 0x20]
007cb0cd: movaps xmm7, xmm0
007cb0d0: movss xmm6, dword ptr [rdi + 0x80]
007cb0d8: movss xmm8, dword ptr [rdi + 0x10c]
007cb0e1: test rcx, rcx
007cb0e4: je 0x1807cb3a7
007cb0ea: mov rdx, qword ptr [rcx]
007cb0ed: mov rax, qword ptr [rdx + 0x1f8]
007cb0f4: mov rdx, qword ptr [rdx + 0x200]
007cb0fb: call rax
007cb0fd: mov rax, qword ptr [rdi + 0x20]
007cb101: movaps xmm2, xmm0
007cb104: test rax, rax
007cb107: je 0x1807cb3a7
007cb10d: movsd xmm1, qword ptr [rdi + 0x38]
007cb112: movsd qword ptr [rbp - 0x50], xmm1
007cb117: movaps xmm0, xmm1
007cb11a: shufps xmm0, xmm0, 0x55
007cb11e: addss xmm6, xmm7
007cb122: addss xmm2, dword ptr [rdi + 0x84]
007cb12a: addss xmm6, xmm8
007cb12f: addss xmm2, dword ptr [rdi + 0x110]
007cb137: mulss xmm6, dword ptr [rip + 0x3468ce1]
007cb13f: addss xmm2, dword ptr [rax + 0x68]
007cb144: addss xmm6, xmm1
007cb148: movss xmm1, dword ptr [rdi + 0x124]
007cb150: subss xmm1, dword ptr [rip + 0x3468c54]
007cb158: xorps xmm2, xmmword ptr [rip + 0x3468b41]
007cb15f: mulss xmm2, dword ptr [rip + 0x3468cb9]
007cb167: addss xmm1, dword ptr [rdi + 0x40]
007cb16c: addss xmm2, xmm0
007cb170: test rbx, rbx
007cb173: je 0x1807cb3a7
007cb179: unpcklps xmm6, xmm2
007cb17c: lea rdx, [rbp - 0x50]
007cb180: xor r8d, r8d
007cb183: movsd qword ptr [rbp - 0x50], xmm6
007cb188: mov rcx, rbx
007cb18b: movss dword ptr [rbp - 0x48], xmm1
007cb190: call 0x183849110
007cb195: mov rdx, qword ptr [rdi]
007cb198: mov rcx, rdi
007cb19b: mov rbx, qword ptr [rdi + 0x58]
007cb19f: mov rax, qword ptr [rdx + 0x1c8]
007cb1a6: mov rdx, qword ptr [rdx + 0x1d0]
007cb1ad: call rax
007cb1af: movss xmm2, dword ptr [rip + 0x3468a95]
007cb1b7: lea rdx, [rbp - 0x50]
007cb1bb: mov qword ptr [rbp + 0x10], rax
007cb1bf: lea rcx, [rbp - 0x40]
007cb1c3: movss xmm1, dword ptr [rbp + 0x14]
007cb1c8: xor r8d, r8d
007cb1cb: movss xmm0, dword ptr [rbp + 0x10]
007cb1d0: unpcklps xmm0, xmm1
007cb1d3: movsd qword ptr [rbp - 0x50], xmm0
007cb1d8: movss dword ptr [rbp - 0x48], xmm2
007cb1dd: call 0x1833c49a0
007cb1e2: test rbx, rbx
007cb1e5: je 0x1807cb3a7
007cb1eb: movsd xmm0, qword ptr [rax]
007cb1ef: lea rdx, [rbp - 0x50]
007cb1f3: mov eax, dword ptr [rax + 8]
007cb1f6: xor r8d, r8d
007cb1f9: movsd qword ptr [rbp - 0x50], xmm0
007cb1fe: mov rcx, rbx
007cb201: mov dword ptr [rbp - 0x48], eax
007cb204: call 0x1838492d0
007cb209: movaps xmm7, xmmword ptr [rsp + 0x50]
007cb20e: movaps xmm6, xmmword ptr [rsp + 0x60]
007cb213: mov rsi, qword ptr [rsp + 0x90]
007cb21b: movaps xmm8, xmmword ptr [rsp + 0x40]
007cb221: mov rbx, qword ptr [rsp + 0x88]
007cb229: mov rdi, qword ptr [rsp + 0x98]
007cb231: add rsp, 0x70
007cb235: pop rbp
007cb236: ret 
007cb237: test rcx, rcx
007cb23a: je 0x1807cb3a7
007cb240: mov rdx, qword ptr [rcx]
007cb243: mov rax, qword ptr [rdx + 0x1d8]
007cb24a: mov rdx, qword ptr [rdx + 0x1e0]
007cb251: call rax
007cb253: mov rcx, qword ptr [rdi + 0x20]
007cb257: movaps xmm7, xmm0
007cb25a: test rcx, rcx
007cb25d: je 0x1807cb3a7
007cb263: mov rdx, qword ptr [rcx]
007cb266: mulss xmm7, dword ptr [rip + 0x3468bb2]
007cb26e: mov rax, qword ptr [rdx + 0x1f8]
007cb275: mov rdx, qword ptr [rdx + 0x200]
007cb27c: call rax
007cb27e: xorps xmm0, xmmword ptr [rip + 0x3468a1b]
007cb285: movss xmm2, dword ptr [rdi + 0x124]
007cb28d: mulss xmm0, dword ptr [rip + 0x3468b8b]
007cb295: subss xmm2, dword ptr [rip + 0x3468b0f]
007cb29d: test rbx, rbx
007cb2a0: je 0x1807cb3a7
007cb2a6: unpcklps xmm7, xmm0
007cb2a9: lea rdx, [rbp - 0x50]
007cb2ad: xor r8d, r8d
007cb2b0: movsd qword ptr [rbp - 0x50], xmm7
007cb2b5: mov rcx, rbx
007cb2b8: movss dword ptr [rbp - 0x48], xmm2
007cb2bd: call 0x183849110
007cb2c2: mov rbx, qword ptr [rdi + 0x30]
007cb2c6: lea rcx, [rbp - 0x40]
007cb2ca: xor r8d, r8d
007cb2cd: mov rdx, rdi
007cb2d0: call 0x1807c9c60
007cb2d5: test rbx, rbx
007cb2d8: je 0x1807cb3a7
007cb2de: movsd xmm0, qword ptr [rax]
007cb2e2: lea rdx, [rbp - 0x50]
007cb2e6: mov eax, dword ptr [rax + 8]
007cb2e9: xor r8d, r8d
007cb2ec: mov rcx, rbx
007cb2ef: movsd qword ptr [rbp - 0x50], xmm0
007cb2f4: mov dword ptr [rbp - 0x48], eax
007cb2f7: call 0x183849110
007cb2fc: movss xmm1, dword ptr [rdi + 0x74]
007cb301: lea rdx, [rbp - 0x50]
007cb305: movss xmm0, dword ptr [rdi + 0x60]
007cb30a: lea rcx, [rbp - 0x40]
007cb30e: movss xmm2, dword ptr [rdi + 0x88]
007cb316: xor r8d, r8d
007cb319: mov rsi, qword ptr [rdi + 0x30]
007cb31d: unpcklps xmm0, xmm1
007cb320: movsd qword ptr [rbp - 0x50], xmm0
007cb325: movss dword ptr [rbp - 0x48], xmm2
007cb32a: call 0x1833c49a0
007cb32f: mov rdx, qword ptr [rdi]
007cb332: mov rcx, rdi
007cb335: movsd xmm6, qword ptr [rax]
007cb339: mov ebx, dword ptr [rax + 8]
007cb33c: mov rax, qword ptr [rdx + 0x1c8]
007cb343: mov rdx, qword ptr [rdx + 0x1d0]
007cb34a: call rax
007cb34c: mov qword ptr [rbp + 0x10], rax
007cb350: lea rdx, [rbp - 0x50]
007cb354: movaps xmm0, xmm6
007cb357: movsd qword ptr [rbp - 0x40], xmm6
007cb35c: mulss xmm0, dword ptr [rbp + 0x10]
007cb361: lea rcx, [rbp - 0x40]
007cb365: mov dword ptr [rbp - 0x48], ebx
007cb368: xor r8d, r8d
007cb36b: movaps xmm2, xmm6
007cb36e: shufps xmm2, xmm2, 0x55
007cb372: mulss xmm2, dword ptr [rbp + 0x14]
007cb377: unpcklps xmm0, xmm2
007cb37a: movsd qword ptr [rbp - 0x50], xmm0
007cb37f: call 0x1833c49a0
007cb384: test rsi, rsi
007cb387: je 0x1807cb3a7
007cb389: movsd xmm0, qword ptr [rax]
007cb38d: lea rdx, [rbp - 0x50]
007cb391: mov eax, dword ptr [rax + 8]
007cb394: xor r8d, r8d
007cb397: movsd qword ptr [rbp - 0x50], xmm0
007cb39c: mov rcx, rsi
007cb39f: mov dword ptr [rbp - 0x48], eax
007cb3a2: jmp 0x1807cb204
007cb3a7: call 0x1804fee20
007cb3ac: int3 
007cb3ad: int3 
007cb3ae: int3 
007cb3af: int3 
