006c7710: mov qword ptr [rsp + 0x18], rbx
006c7715: push rdi
006c7716: sub rsp, 0x40
006c771a: cmp byte ptr [rip + 0x4823f92], 0
006c7721: mov rdi, rdx
006c7724: mov rbx, rcx
006c7727: jne 0x1806c7748
006c7729: lea rcx, [rip + 0x45ada38]
006c7730: call 0x1804feb70
006c7735: lea rcx, [rip + 0x45ccae4]
006c773c: call 0x1804feb70
006c7741: mov byte ptr [rip + 0x4823f6b], 1
006c7748: mov qword ptr [rsp + 0x50], rbp
006c774d: xor r8d, r8d
006c7750: mov qword ptr [rsp + 0x58], rsi
006c7755: mov rdx, rdi
006c7758: mov rcx, rbx
006c775b: movaps xmmword ptr [rsp + 0x30], xmm6
006c7760: call 0x1806c8c30
006c7765: cmp dword ptr [rbx + 0xa8], 6
006c776c: je 0x1806c7777
006c776e: cmp dword ptr [rbx + 0xa8], 0xf
006c7775: jne 0x1806c778a
006c7777: test rdi, rdi
006c777a: je 0x1806c778a
006c777c: xor edx, edx
006c777e: mov rcx, rdi
006c7781: call 0x1806f3620
006c7786: test al, al
006c7788: jne 0x1806c77b3
006c778a: cmp dword ptr [rbx + 0xa8], 3
006c7791: je 0x1806c77fb
006c7793: cmp dword ptr [rbx + 0xa8], 5
006c779a: je 0x1806c77fb
006c779c: cmp dword ptr [rbx + 0xa8], 6
006c77a3: je 0x1806c780d
006c77a5: cmp dword ptr [rbx + 0xa8], 0xf
006c77ac: je 0x1806c77fb
006c77ae: test rdi, rdi
006c77b1: je 0x1806c782a
006c77b3: mov rcx, qword ptr [rbx + 0x10]
006c77b7: test rcx, rcx
006c77ba: je 0x1806c7ce4
006c77c0: mov edx, dword ptr [rbx + 0xa8]
006c77c6: xor r8d, r8d
006c77c9: call 0x1807dd970
006c77ce: xor r8d, r8d
006c77d1: mov rdx, rdi
006c77d4: mov rcx, rbx
006c77d7: mov rsi, rax
006c77da: call 0x1806c8640
006c77df: test rsi, rsi
006c77e2: je 0x1806c7ce4
006c77e8: mov edx, dword ptr [rsi + 0x38]
006c77eb: xor r9d, r9d
006c77ee: mov r8d, eax
006c77f1: mov rcx, rdi
006c77f4: call 0x1806f8f60
006c77f9: jmp 0x1806c782a
006c77fb: cmp dword ptr [rbx + 0xa8], 6
006c7802: je 0x1806c780d
006c7804: cmp dword ptr [rbx + 0xa8], 0xf
006c780b: jne 0x1806c781c
006c780d: test rdi, rdi
006c7810: je 0x1806c781c
006c7812: xor edx, edx
006c7814: mov rcx, rdi
006c7817: call 0x1806f5c60
006c781c: xor r8d, r8d
006c781f: mov rdx, rdi
006c7822: mov rcx, rbx
006c7825: call 0x1806c7cf0
006c782a: movss xmm2, dword ptr [rbx + 0x84]
006c7832: addss xmm2, dword ptr [rbx + 0x80]
006c783a: mov ebp, dword ptr [rbx + 0x38]
006c783d: movss xmm1, dword ptr [rbx + 0x7c]
006c7842: inc ebp
006c7844: cmp dword ptr [rbx + 0xa8], 3
006c784b: movss xmm6, dword ptr [rbx + 0x7c]
006c7850: subss xmm2, dword ptr [rbx + 0x8c]
006c7858: movss xmm3, dword ptr [rbx + 0x80]
006c7860: subss xmm1, dword ptr [rbx + 0x88]
006c7868: addss xmm6, dword ptr [rip + 0x356c544]
006c7870: addss xmm3, dword ptr [rip + 0x356c53c]
006c7878: subss xmm2, dword ptr [rbx + 0x90]
006c7880: je 0x1806c7c95
006c7886: cmp dword ptr [rbx + 0xa8], 5
006c788d: je 0x1806c7c7b
006c7893: cmp dword ptr [rbx + 0xa8], 0xb
006c789a: je 0x1806c7b85
006c78a0: cmp dword ptr [rbx + 0xa8], 0
006c78a7: je 0x1806c7b12
006c78ad: cmp dword ptr [rbx + 0xa8], 0xd
006c78b4: je 0x1806c7b12
006c78ba: cmp dword ptr [rbx + 0xa8], 0xe
006c78c1: je 0x1806c7b0b
006c78c7: cmp dword ptr [rbx + 0xa8], 1
006c78ce: je 0x1806c7b04
006c78d4: cmp dword ptr [rbx + 0xa8], 6
006c78db: je 0x1806c79db
006c78e1: cmp dword ptr [rbx + 0xa8], 0xf
006c78e8: je 0x1806c79db
006c78ee: cmp dword ptr [rbx + 0xa8], 7
006c78f5: je 0x1806c79d1
006c78fb: cmp dword ptr [rbx + 0xa8], 4
006c7902: je 0x1806c79bf
006c7908: cmp dword ptr [rbx + 0xa8], 2
006c790f: je 0x1806c799f
006c7915: cmp dword ptr [rbx + 0xa8], 0xc
006c791c: jne 0x1806c7cc1
006c7922: movaps xmm6, xmm1
006c7925: movaps xmm3, xmm2
006c7928: mov esi, 0x26
006c792d: subss xmm6, dword ptr [rip + 0x356c487]
006c7935: addss xmm3, dword ptr [rip + 0x356c6a7]
006c793d: test rdi, rdi
006c7940: je 0x1806c7b28
006c7946: xor edx, edx
006c7948: mov rcx, rdi
006c794b: call 0x1806e5f50
006c7950: addss xmm6, dword ptr [rip + 0x356c728]
006c7958: subss xmm6, dword ptr [rdi + 0x20]
006c795d: cmp dword ptr [rbx + 0xa4], 6
006c7964: je 0x1806c7b4b
006c796a: movss xmm1, dword ptr [rdi + 0x20]
006c796f: addss xmm1, dword ptr [rip + 0x356c44d]
006c7977: movss xmm0, dword ptr [rbx + 0x7c]
006c797c: comiss xmm0, xmm1
006c797f: jbe 0x1806c7b53
006c7985: cmp dword ptr [rbx + 0xa4], 1
006c798c: je 0x1806c7b53
006c7992: addss xmm6, dword ptr [rip + 0x356c50e]
006c799a: jmp 0x1806c7b53
006c799f: movaps xmm6, xmm1
006c79a2: movaps xmm3, xmm2
006c79a5: subss xmm6, dword ptr [rip + 0x356c627]
006c79ad: addss xmm3, dword ptr [rip + 0x356c537]
006c79b5: mov esi, 0x27
006c79ba: jmp 0x1806c7b1f
006c79bf: addss xmm6, dword ptr [rip + 0x356c581]
006c79c7: mov esi, 0x28
006c79cc: jmp 0x1806c7b1f
006c79d1: mov esi, 0x29
006c79d6: jmp 0x1806c7b1f
006c79db: xor r8d, r8d
006c79de: mov rdx, rdi
006c79e1: mov rcx, rbx
006c79e4: call 0x1806c88a0
006c79e9: test al, al
006c79eb: je 0x1806c7cc1
006c79f1: mov rcx, qword ptr [rbx + 0x10]
006c79f5: test rcx, rcx
006c79f8: je 0x1806c7ce4
006c79fe: movss xmm2, dword ptr [rbx + 0x80]
006c7a06: xor edi, edi
006c7a08: subss xmm2, dword ptr [rip + 0x356c418]
006c7a10: movss xmm1, dword ptr [rbx + 0x7c]
006c7a15: mov r9d, ebp
006c7a18: mov qword ptr [rsp + 0x28], rdi
006c7a1d: mov dword ptr [rsp + 0x20], 0x96
006c7a25: call 0x1807d96d0
006c7a2a: mov rdi, rax
006c7a2d: test rax, rax
006c7a30: je 0x1806c7ce4
006c7a36: cmp byte ptr [rip + 0x4823c8a], 0
006c7a3d: mov rsi, qword ptr [rip + 0x45cc7dc]
006c7a44: jne 0x1806c7a59
006c7a46: lea rcx, [rip + 0x4565a2b]
006c7a4d: call 0x1804feb70
006c7a52: mov byte ptr [rip + 0x4823c6e], 1
006c7a59: lea rcx, [rdi + 0xe0]
006c7a60: mov qword ptr [rdi + 0xe0], rsi
006c7a67: mov rdx, rsi
006c7a6a: call 0x1804fdea0
006c7a6f: mov rcx, qword ptr [rip + 0x4565a02]
006c7a76: mov rbp, qword ptr [rdi + 0xd0]
006c7a7d: cmp dword ptr [rcx + 0xe4], 0
006c7a84: jne 0x1806c7a8b
006c7a86: call 0x1804feeb0
006c7a8b: xor r8d, r8d
006c7a8e: xor edx, edx
006c7a90: mov rcx, rbp
006c7a93: call 0x183832900
006c7a98: test al, al
006c7a9a: je 0x1806c7aba
006c7a9c: mov rcx, qword ptr [rdi + 0xd0]
006c7aa3: test rcx, rcx
006c7aa6: je 0x1806c7ce4
006c7aac: xor r9d, r9d
006c7aaf: xor r8d, r8d
006c7ab2: mov rdx, rsi
006c7ab5: call 0x1807c86a0
006c7aba: movss xmm1, dword ptr [rip + 0x356c42e]
006c7ac2: xor r8d, r8d
006c7ac5: mov rcx, rdi
006c7ac8: mov dword ptr [rdi + 0x74], 0x3e800000
006c7acf: call 0x1806caee0
006c7ad4: xor r8d, r8d
006c7ad7: mov edx, 3
006c7adc: mov rcx, rdi
006c7adf: call 0x1806caf80
006c7ae4: movss xmm2, dword ptr [rip + 0x356c150]
006c7aec: xor r9d, r9d
006c7aef: movss xmm1, dword ptr [rip + 0x356c28d]
006c7af7: mov rcx, rdi
006c7afa: call 0x1806ca790
006c7aff: jmp 0x1806c7cc1
006c7b04: mov esi, 0x2b
006c7b09: jmp 0x1806c7b17
006c7b0b: mov esi, 0x6d
006c7b10: jmp 0x1806c7b17
006c7b12: mov esi, 0x25
006c7b17: addss xmm6, dword ptr [rip + 0x356c421]
006c7b1f: test rdi, rdi
006c7b22: jne 0x1806c7950
006c7b28: mov rcx, qword ptr [rbx + 0x10]
006c7b2c: test rcx, rcx
006c7b2f: je 0x1806c7ce4
006c7b35: xor edi, edi
006c7b37: movaps xmm2, xmm3
006c7b3a: mov qword ptr [rsp + 0x28], rdi
006c7b3f: movaps xmm1, xmm6
006c7b42: mov dword ptr [rsp + 0x20], esi
006c7b46: jmp 0x1806c7cb9
006c7b4b: addss xmm6, dword ptr [rip + 0x356c56d]
006c7b53: mov rcx, qword ptr [rbx + 0x10]
006c7b57: test rcx, rcx
006c7b5a: je 0x1806c7ce4
006c7b60: mov r9d, dword ptr [rdi + 0x38]
006c7b64: addss xmm6, dword ptr [rdi + 0x20]
006c7b69: movss xmm2, dword ptr [rbx + 0x24]
006c7b6e: add r9d, 0x14
006c7b72: xor edi, edi
006c7b74: mov qword ptr [rsp + 0x28], rdi
006c7b79: mov dword ptr [rsp + 0x20], esi
006c7b7d: movaps xmm1, xmm6
006c7b80: jmp 0x1806c7cbc
006c7b85: mov edx, dword ptr [rbx + 0xd0]
006c7b8b: xor r9d, r9d
006c7b8e: mov r8d, 2
006c7b94: mov ecx, 0x30d40
006c7b99: call 0x180665070
006c7b9e: mov rcx, qword ptr [rbx + 0x10]
006c7ba2: test rcx, rcx
006c7ba5: je 0x1806c7ce4
006c7bab: movss xmm2, dword ptr [rbx + 0x80]
006c7bb3: xor edi, edi
006c7bb5: movss xmm1, dword ptr [rbx + 0x7c]
006c7bba: mov r9d, eax
006c7bbd: movss xmm6, dword ptr [rip + 0x356c1ff]
006c7bc5: addss xmm1, dword ptr [rip + 0x356c1ff]
006c7bcd: addss xmm2, xmm6
006c7bd1: mov qword ptr [rsp + 0x28], rdi
006c7bd6: mov dword ptr [rsp + 0x20], 0x44
006c7bde: call 0x1807d9b50
006c7be3: mov rcx, qword ptr [rbx + 0x10]
006c7be7: test rcx, rcx
006c7bea: je 0x1806c7ce4
006c7bf0: movss xmm2, dword ptr [rbx + 0x80]
006c7bf8: mov r9d, ebp
006c7bfb: movss xmm1, dword ptr [rbx + 0x7c]
006c7c00: addss xmm2, xmm6
006c7c04: addss xmm1, dword ptr [rip + 0x356c1c0]
006c7c0c: mov qword ptr [rsp + 0x28], rdi
006c7c11: mov dword ptr [rsp + 0x20], 3
006c7c19: call 0x1807d9b50
006c7c1e: mov r8, qword ptr [rbx + 0x10]
006c7c22: test r8, r8
006c7c25: je 0x1806c7ce4
006c7c2b: mov r8, qword ptr [r8 + 0x58]
006c7c2f: test r8, r8
006c7c32: je 0x1806c7ce4
006c7c38: mov rdx, qword ptr [rip + 0x45ad529]
006c7c3f: mov ecx, 0x19
006c7c44: mov r9d, 0x30
006c7c4a: call 0x180002040
006c7c4f: mov rcx, qword ptr [rbx + 0x18]
006c7c53: test rcx, rcx
006c7c56: je 0x1806c7ce4
006c7c5c: movss xmm3, dword ptr [rip + 0x356bfe8]
006c7c64: mov edx, 3
006c7c69: mov r8d, 0xfffffffc
006c7c6f: mov qword ptr [rsp + 0x20], rdi
006c7c74: call 0x1806709c0
006c7c79: jmp 0x1806c7cc1
006c7c7b: mov rcx, qword ptr [rbx + 0x10]
006c7c7f: test rcx, rcx
006c7c82: je 0x1806c7ce4
006c7c84: xor edi, edi
006c7c86: mov qword ptr [rsp + 0x28], rdi
006c7c8b: mov dword ptr [rsp + 0x20], 1
006c7c93: jmp 0x1806c7ca9
006c7c95: mov rcx, qword ptr [rbx + 0x10]
006c7c99: test rcx, rcx
006c7c9c: je 0x1806c7ce4
006c7c9e: xor edi, edi
006c7ca0: mov qword ptr [rsp + 0x28], rdi
006c7ca5: mov dword ptr [rsp + 0x20], edi
006c7ca9: addss xmm1, dword ptr [rip + 0x356bfaf]
006c7cb1: addss xmm2, dword ptr [rip + 0x356bfa7]
006c7cb9: mov r9d, ebp
006c7cbc: call 0x1807d9b50
006c7cc1: xor edx, edx
006c7cc3: mov rcx, rbx
006c7cc6: movaps xmm6, xmmword ptr [rsp + 0x30]
006c7ccb: mov rsi, qword ptr [rsp + 0x58]
006c7cd0: mov rbp, qword ptr [rsp + 0x50]
006c7cd5: mov rbx, qword ptr [rsp + 0x60]
006c7cda: add rsp, 0x40
006c7cde: pop rdi
006c7cdf: jmp 0x1806c7650
006c7ce4: call 0x1804fee20
006c7ce9: int3 
006c7cea: int3 
006c7ceb: int3 
006c7cec: int3 
006c7ced: int3 
006c7cee: int3 
006c7cef: int3 
