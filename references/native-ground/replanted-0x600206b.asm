00722ab0: mov qword ptr [rsp + 0x20], rbx
00722ab5: mov dword ptr [rsp + 0x18], r8d
00722aba: push rbp
00722abb: push rsi
00722abc: push rdi
00722abd: push r12
00722abf: push r13
00722ac1: push r14
00722ac3: push r15
00722ac5: mov rbp, rsp
00722ac8: sub rsp, 0x60
00722acc: cmp byte ptr [rip + 0x47c8eb0], 0
00722ad3: mov rbx, rdx
00722ad6: mov r14, rcx
00722ad9: jne 0x180722b12
00722adb: lea rcx, [rip + 0x4514ed6]
00722ae2: call 0x1804feb70
00722ae7: lea rcx, [rip + 0x4542a6a]
00722aee: call 0x1804feb70
00722af3: lea rcx, [rip + 0x4542b2e]
00722afa: call 0x1804feb70
00722aff: lea rcx, [rip + 0x456bff2]
00722b06: call 0x1804feb70
00722b0b: mov byte ptr [rip + 0x47c8e71], 1
00722b12: xor eax, eax
00722b14: xor r12d, r12d
00722b17: xor edx, edx
00722b19: mov qword ptr [rbp - 0x28], rax
00722b1d: mov rcx, r14
00722b20: mov qword ptr [rbp - 0x30], r12
00722b24: call 0x180726380
00722b29: cmp byte ptr [rip + 0x47c8c66], r12b
00722b30: jne 0x180722b51
00722b32: lea rcx, [rip + 0x4570e9f]
00722b39: call 0x1804feb70
00722b3e: lea rcx, [rip + 0x451ba73]
00722b45: call 0x1804feb70
00722b4a: mov byte ptr [rip + 0x47c8c45], 1
00722b51: movsxd rsi, dword ptr [rbx + 0x10]
00722b55: mov r13, qword ptr [rip + 0x451ba5c]
00722b5c: cmp esi, dword ptr [rbx + 8]
00722b5f: jbe 0x180722b68
00722b61: xor ecx, ecx
00722b63: call 0x182c05bf0
00722b68: mov rcx, qword ptr [r13 + 0x20]
00722b6c: mov r15, rsi
00722b6f: add r15, qword ptr [rbx]
00722b72: mov edi, dword ptr [rbx + 8]
00722b75: mov qword ptr [rbp - 0x18], r12
00722b79: test byte ptr [rcx + 0x135], 1
00722b80: jne 0x180722b87
00722b82: call 0x1804fc300
00722b87: sub edi, esi
00722b89: mov qword ptr [rbp - 0x20], r15
00722b8d: cmp byte ptr [rip + 0x47c8c04], r12b
00722b94: mov dword ptr [rbp - 0x18], edi
00722b97: jne 0x180722bb8
00722b99: lea rcx, [rip + 0x45700b8]
00722ba0: call 0x1804feb70
00722ba5: lea rcx, [rip + 0x451be34]
00722bac: call 0x1804feb70
00722bb1: mov byte ptr [rip + 0x47c8be0], 1
00722bb8: cmp edi, 8
00722bbb: jge 0x180722bc9
00722bbd: xor edx, edx
00722bbf: mov ecx, 0x1c
00722bc4: call 0x182c05bc0
00722bc9: movaps xmm0, xmmword ptr [rbp - 0x20]
00722bcd: lea rcx, [rbp - 0x20]
00722bd1: mov rdx, qword ptr [rip + 0x4570080]
00722bd8: movdqa xmmword ptr [rbp - 0x20], xmm0
00722bdd: call 0x180721da0
00722be2: lea rdx, [r14 + 0x78]
00722be6: xor r8d, r8d
00722be9: mov rcx, rbx
00722bec: movss xmm0, dword ptr [rax + 4]
00722bf1: mov eax, dword ptr [rax]
00722bf3: movss dword ptr [r14 + 0x74], xmm0
00722bf9: mov dword ptr [r14 + 0x70], eax
00722bfd: add dword ptr [rbx + 0x10], 8
00722c01: call 0x18063b2a0
00722c06: lea rdx, [r14 + 0xa8]
00722c0d: xor r8d, r8d
00722c10: mov rcx, rbx
00722c13: call 0x1806e4a40
00722c18: lea rdx, [r14 + 0xb0]
00722c1f: xor r8d, r8d
00722c22: mov rcx, rbx
00722c25: call 0x18063b2a0
00722c2a: lea rdx, [r14 + 0xb4]
00722c31: xor r8d, r8d
00722c34: mov rcx, rbx
00722c37: call 0x18060d8c0
00722c3c: mov edi, dword ptr [rbp + 0x50]
00722c3f: mov dword ptr [rbp + 0x40], r12d
00722c43: cmp edi, 6
00722c46: jl 0x180722c57
00722c48: xor r8d, r8d
00722c4b: lea rdx, [rbp + 0x40]
00722c4f: mov rcx, rbx
00722c52: call 0x18060d8c0
00722c57: mov rcx, qword ptr [r14 + 0x80]
00722c5e: test rcx, rcx
00722c61: je 0x180722f94
00722c67: mov r8d, dword ptr [rcx + 0x18]
00722c6b: xor r15d, r15d
00722c6e: inc dword ptr [rcx + 0x1c]
00722c71: mov dword ptr [rcx + 0x18], r15d
00722c75: test r8d, r8d
00722c78: jle 0x180722c88
00722c7a: mov rcx, qword ptr [rcx + 0x10]
00722c7e: xor r9d, r9d
00722c81: xor edx, edx
00722c83: call 0x182bf45a0
00722c88: xor r8d, r8d
00722c8b: mov dword ptr [rbp + 0x40], r15d
00722c8f: lea rdx, [rbp + 0x40]
00722c93: mov rcx, rbx
00722c96: call 0x18063b5f0
00722c9b: mov esi, dword ptr [rbp + 0x40]
00722c9e: test esi, esi
00722ca0: jle 0x180722e39
00722ca6: nop word ptr [rax + rax]
00722cb0: cmp byte ptr [rip + 0x47c87f7], 0
00722cb7: mov rax, qword ptr [rip + 0x47e3872]
00722cbe: mov rcx, qword ptr [rax + 0xb8]
00722cc5: mov rax, qword ptr [rcx]
00722cc8: mov qword ptr [rbp - 0x30], rax
00722ccc: jne 0x180722ce1
00722cce: lea rcx, [rip + 0x451b9bb]
00722cd5: call 0x1804feb70
00722cda: mov byte ptr [rip + 0x47c87cd], 1
00722ce1: xor r8d, r8d
00722ce4: mov dword ptr [rbp + 0x48], r15d
00722ce8: lea rdx, [rbp + 0x48]
00722cec: mov rcx, rbx
00722cef: call 0x18063b5f0
00722cf4: mov edi, dword ptr [rbp + 0x48]
00722cf7: test edi, edi
00722cf9: je 0x180722d88
00722cff: xor ecx, ecx
00722d01: call 0x182a496d0
00722d06: movsxd rsi, dword ptr [rbx + 0x10]
00722d0a: mov r15, rax
00722d0d: mov r13, qword ptr [rip + 0x451b97c]
00722d14: cmp esi, dword ptr [rbx + 8]
00722d17: ja 0x180722d22
00722d19: mov ecx, dword ptr [rbx + 8]
00722d1c: sub ecx, esi
00722d1e: cmp edi, ecx
00722d20: jbe 0x180722d29
00722d22: xor ecx, ecx
00722d24: call 0x182c05bf0
00722d29: mov rcx, qword ptr [r13 + 0x20]
00722d2d: add rsi, qword ptr [rbx]
00722d30: mov dword ptr [rbp - 0x14], 0
00722d37: test byte ptr [rcx + 0x135], 1
00722d3e: jne 0x180722d45
00722d40: call 0x1804fc300
00722d45: mov qword ptr [rbp - 0x20], rsi
00722d49: mov dword ptr [rbp - 0x18], edi
00722d4c: test r15, r15
00722d4f: je 0x180722f94
00722d55: movaps xmm0, xmmword ptr [rbp - 0x20]
00722d59: lea rdx, [rbp - 0x10]
00722d5d: xor r8d, r8d
00722d60: movdqa xmmword ptr [rbp - 0x10], xmm0
00722d65: mov rcx, r15
00722d68: call 0x182a488a0
00722d6d: mov rdx, rax
00722d70: mov qword ptr [rbp - 0x30], rax
00722d74: lea rcx, [rbp - 0x30]
00722d78: call 0x1804fdea0
00722d7d: add dword ptr [rbx + 0x10], edi
00722d80: mov esi, dword ptr [rbp + 0x40]
00722d83: xor r15d, r15d
00722d86: jmp 0x180722da6
00722d88: mov rax, qword ptr [rip + 0x47e37a1]
00722d8f: mov rcx, qword ptr [rax + 0xb8]
00722d96: mov rdx, qword ptr [rcx]
00722d99: lea rcx, [rbp - 0x30]
00722d9d: mov qword ptr [rbp - 0x30], rdx
00722da1: call 0x1804fdea0
00722da6: mov rax, qword ptr [r14 + 0x28]
00722daa: test rax, rax
00722dad: je 0x180722f94
00722db3: mov rcx, qword ptr [rax + 0xc8]
00722dba: test rcx, rcx
00722dbd: je 0x180722f94
00722dc3: mov rdx, qword ptr [rbp - 0x30]
00722dc7: xor r8d, r8d
00722dca: call 0x182f3de30
00722dcf: test rax, rax
00722dd2: jne 0x180722e0b
00722dd4: mov rdx, qword ptr [rbp - 0x30]
00722dd8: xor r8d, r8d
00722ddb: mov rcx, qword ptr [rip + 0x456bd16]
00722de2: call 0x182a1d440
00722de7: mov rcx, qword ptr [rip + 0x4514bca]
00722dee: mov rdi, rax
00722df1: cmp dword ptr [rcx + 0xe4], 0
00722df8: jne 0x180722dff
00722dfa: call 0x1804feeb0
00722dff: xor edx, edx
00722e01: mov rcx, rdi
00722e04: call 0x1837b04c0
00722e09: jmp 0x180722e2a
00722e0b: mov rcx, qword ptr [r14 + 0x80]
00722e12: test rcx, rcx
00722e15: je 0x180722f94
00722e1b: mov r8, qword ptr [rip + 0x4542736]
00722e22: mov rdx, rax
00722e25: call 0x180002540
00722e2a: inc r12d
00722e2d: cmp r12d, esi
00722e30: jl 0x180722cb0
00722e36: mov edi, dword ptr [rbp + 0x50]
00722e39: cmp byte ptr [rip + 0x47c8b41], 0
00722e40: jne 0x180722e55
00722e42: lea rcx, [rip + 0x454507f]
00722e49: call 0x1804feb70
00722e4e: mov byte ptr [rip + 0x47c8b2c], 1
00722e55: lea rdx, [r14 + 0xe0]
00722e5c: xor r8d, r8d
00722e5f: mov rcx, rbx
00722e62: call 0x18063b2a0
00722e67: lea rdx, [r14 + 0xd8]
00722e6e: xor r8d, r8d
00722e71: mov rcx, rbx
00722e74: call 0x18063b810
00722e79: xor r8d, r8d
00722e7c: mov dword ptr [rbp + 0x50], r15d
00722e80: lea rdx, [rbp + 0x50]
00722e84: mov rcx, rbx
00722e87: call 0x18063b5f0
00722e8c: mov eax, dword ptr [rbp + 0x50]
00722e8f: lea rdx, [rbp + 0x50]
00722e93: xor r8d, r8d
00722e96: mov dword ptr [r14 + 0xd4], eax
00722e9d: mov rcx, rbx
00722ea0: mov dword ptr [rbp + 0x50], r15d
00722ea4: call 0x18063b5f0
00722ea9: mov ecx, dword ptr [rbp + 0x50]
00722eac: xor edx, edx
00722eae: call 0x1806be7d0
00722eb3: mov dword ptr [r14 + 0xd0], eax
00722eba: mov r8d, edi
00722ebd: mov r9, qword ptr [r14 + 0xc0]
00722ec4: mov rdx, rbx
00722ec7: mov rcx, r14
00722eca: mov qword ptr [rsp + 0x20], r15
00722ecf: call 0x1807224a0
00722ed4: mov r9, qword ptr [r14 + 0xc8]
00722edb: mov r8d, edi
00722ede: mov rdx, rbx
00722ee1: mov qword ptr [rsp + 0x20], r15
00722ee6: mov rcx, r14
00722ee9: call 0x1807224a0
00722eee: mov r9, qword ptr [r14 + 0x38]
00722ef2: test r9, r9
00722ef5: je 0x180722f94
00722efb: mov r9, qword ptr [r9 + 0x18]
00722eff: mov r8d, edi
00722f02: mov rdx, rbx
00722f05: mov qword ptr [rsp + 0x20], r15
00722f0a: mov rcx, r14
00722f0d: call 0x1807226e0
00722f12: movss xmm0, dword ptr [rip + 0x3510d32]
00722f1a: movss dword ptr [rbp - 0x28], xmm0
00722f1f: movaps xmm1, xmm0
00722f22: movss dword ptr [rbp - 0x24], xmm0
00722f27: cmp edi, 8
00722f2a: jl 0x180722f45
00722f2c: xor r8d, r8d
00722f2f: lea rdx, [rbp - 0x28]
00722f33: mov rcx, rbx
00722f36: call 0x1806e4a40
00722f3b: movss xmm1, dword ptr [rbp - 0x24]
00722f40: movss xmm0, dword ptr [rbp - 0x28]
00722f45: mov rax, qword ptr [r14 + 0x28]
00722f49: test rax, rax
00722f4c: je 0x180722f94
00722f4e: mov rcx, qword ptr [rax + 0xc8]
00722f55: test rcx, rcx
00722f58: je 0x180722f94
00722f5a: movss dword ptr [rcx + 0x78], xmm0
00722f5f: mov rax, qword ptr [r14 + 0x28]
00722f63: test rax, rax
00722f66: je 0x180722f94
00722f68: mov rax, qword ptr [rax + 0xc8]
00722f6f: test rax, rax
00722f72: je 0x180722f94
00722f74: mov rbx, qword ptr [rsp + 0xb8]
00722f7c: movss dword ptr [rax + 0x80], xmm1
00722f84: add rsp, 0x60
00722f88: pop r15
00722f8a: pop r14
00722f8c: pop r13
00722f8e: pop r12
00722f90: pop rdi
00722f91: pop rsi
00722f92: pop rbp
00722f93: ret 
00722f94: call 0x1804fee20
00722f99: int3 
00722f9a: int3 
00722f9b: int3 
00722f9c: int3 
00722f9d: int3 
00722f9e: int3 
00722f9f: int3 
