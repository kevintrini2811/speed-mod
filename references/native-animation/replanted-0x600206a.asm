007258d0: mov dword ptr [rsp + 0x18], r8d
007258d5: push rbx
007258d6: push rbp
007258d7: push rsi
007258d8: push rdi
007258d9: push r13
007258db: push r14
007258dd: sub rsp, 0x98
007258e4: cmp byte ptr [rip + 0x47c6097], 0
007258eb: mov rsi, rdx
007258ee: movaps xmmword ptr [rsp + 0x80], xmm6
007258f6: mov r13, rcx
007258f9: movaps xmmword ptr [rsp + 0x70], xmm7
007258fe: jne 0x18072591f
00725900: lea rcx, [rip + 0x453fec9]
00725907: call 0x1804feb70
0072590c: lea rcx, [rip + 0x453ff95]
00725913: call 0x1804feb70
00725918: mov byte ptr [rip + 0x47c6063], 1
0072591f: movss xmm1, dword ptr [r13 + 0x74]
00725925: xor r8d, r8d
00725928: movss xmm0, dword ptr [r13 + 0x70]
0072592e: mov rcx, rsi
00725931: unpcklps xmm0, xmm1
00725934: movq rdx, xmm0
00725939: call 0x1806cb440
0072593e: movzx edx, byte ptr [r13 + 0x78]
00725943: xor r8d, r8d
00725946: mov rcx, rsi
00725949: call 0x18063bab0
0072594e: cmp byte ptr [rip + 0x47c5ed8], 0
00725955: movss xmm6, dword ptr [r13 + 0xa8]
0072595e: movss xmm7, dword ptr [r13 + 0xac]
00725967: jne 0x180725988
00725969: lea rcx, [rip + 0x456f148]
00725970: call 0x1804feb70
00725975: lea rcx, [rip + 0x4532084]
0072597c: call 0x1804feb70
00725981: mov byte ptr [rip + 0x47c5ea5], 1
00725988: movsxd rdi, dword ptr [rsi + 0x10]
0072598c: mov r14, qword ptr [rip + 0x453206d]
00725993: cmp edi, dword ptr [rsi + 8]
00725996: jbe 0x18072599f
00725998: xor ecx, ecx
0072599a: call 0x182c05bf0
0072599f: mov rcx, qword ptr [r14 + 0x20]
007259a3: mov rbp, rdi
007259a6: add rbp, qword ptr [rsi]
007259a9: mov ebx, dword ptr [rsi + 8]
007259ac: mov qword ptr [rsp + 0x38], 0
007259b5: test byte ptr [rcx + 0x135], 1
007259bc: jne 0x1807259c3
007259be: call 0x1804fc300
007259c3: sub ebx, edi
007259c5: mov qword ptr [rsp + 0x30], rbp
007259ca: cmp byte ptr [rip + 0x47c5e62], 0
007259d1: mov dword ptr [rsp + 0x38], ebx
007259d5: jne 0x1807259f6
007259d7: lea rcx, [rip + 0x456d352]
007259de: call 0x1804feb70
007259e3: lea rcx, [rip + 0x4532386]
007259ea: call 0x1804feb70
007259ef: mov byte ptr [rip + 0x47c5e3d], 1
007259f6: cmp ebx, 8
007259f9: jae 0x180725a07
007259fb: xor edx, edx
007259fd: mov ecx, 0x1c
00725a02: call 0x182c05bc0
00725a07: movaps xmm0, xmmword ptr [rsp + 0x30]
00725a0c: lea rcx, [rsp + 0x50]
00725a11: mov rdx, qword ptr [rip + 0x456d318]
00725a18: mov qword ptr [rsp + 0xd8], r12
00725a20: movdqa xmmword ptr [rsp + 0x50], xmm0
00725a26: mov qword ptr [rsp + 0x90], r15
00725a2e: call 0x180721da0
00725a33: xor r8d, r8d
00725a36: mov rcx, rsi
00725a39: movss dword ptr [rax], xmm6
00725a3d: movss dword ptr [rax + 4], xmm7
00725a42: add dword ptr [rsi + 0x10], 8
00725a46: movzx edx, byte ptr [r13 + 0xb0]
00725a4e: call 0x18063bab0
00725a53: movss xmm1, dword ptr [r13 + 0xb4]
00725a5c: xor r8d, r8d
00725a5f: mov rcx, rsi
00725a62: call 0x18060dae0
00725a67: xor r8d, r8d
00725a6a: xorps xmm1, xmm1
00725a6d: mov rcx, rsi
00725a70: call 0x18060dae0
00725a75: mov rdx, qword ptr [r13 + 0x80]
00725a7c: test rdx, rdx
00725a7f: je 0x180725e3a
00725a85: mov edx, dword ptr [rdx + 0x18]
00725a88: xor r8d, r8d
00725a8b: mov rcx, rsi
00725a8e: call 0x18063bd40
00725a93: mov rax, qword ptr [r13 + 0x80]
00725a9a: xor ecx, ecx
00725a9c: xor ebp, ebp
00725a9e: test rax, rax
00725aa1: je 0x180725e3a
00725aa7: cmp ecx, dword ptr [rax + 0x18]
00725aaa: jge 0x180725c68
00725ab0: mov rcx, qword ptr [r13 + 0x80]
00725ab7: test rcx, rcx
00725aba: je 0x180725e3a
00725ac0: mov r8, qword ptr [rip + 0x453fde1]
00725ac7: mov edx, ebp
00725ac9: call 0x181813b00
00725ace: test rax, rax
00725ad1: je 0x180725e3a
00725ad7: mov rbx, qword ptr [rax + 0x10]
00725adb: test rbx, rbx
00725ade: je 0x180725e3a
00725ae4: cmp byte ptr [rip + 0x47c59be], 0
00725aeb: mov rbx, qword ptr [rbx + 0x18]
00725aef: jne 0x180725b04
00725af1: lea rcx, [rip + 0x4531f08]
00725af8: call 0x1804feb70
00725afd: mov byte ptr [rip + 0x47c59a5], 1
00725b04: xor edx, edx
00725b06: mov rcx, rbx
00725b09: call 0x182a21e30
00725b0e: test al, al
00725b10: jne 0x180725c42
00725b16: xor ecx, ecx
00725b18: call 0x182a496d0
00725b1d: test rax, rax
00725b20: je 0x180725e3a
00725b26: mov r8, qword ptr [rax]
00725b29: mov rdx, rbx
00725b2c: mov rcx, rax
00725b2f: mov r9, qword ptr [r8 + 0x1e8]
00725b36: mov r8, qword ptr [r8 + 0x1f0]
00725b3d: call r9
00725b40: xor r8d, r8d
00725b43: mov dword ptr [rsp + 0xd0], eax
00725b4a: mov edx, eax
00725b4c: mov rcx, rsi
00725b4f: call 0x18063bd40
00725b54: xor ecx, ecx
00725b56: call 0x182a496d0
00725b5b: cmp byte ptr [rip + 0x47c595b], 0
00725b62: mov r12, rax
00725b65: jne 0x180725b7a
00725b67: lea rcx, [rip + 0x4519c82]
00725b6e: call 0x1804feb70
00725b73: mov byte ptr [rip + 0x47c5943], 1
00725b7a: xorps xmm6, xmm6
00725b7d: test rbx, rbx
00725b80: je 0x180725ba5
00725b82: xor edx, edx
00725b84: mov rcx, rbx
00725b87: call 0x182a20980
00725b8c: mov qword ptr [rsp + 0x30], rax
00725b91: mov eax, dword ptr [rbx + 0x10]
00725b94: mov dword ptr [rsp + 0x38], eax
00725b98: mov dword ptr [rsp + 0x3c], 0
00725ba0: movaps xmm6, xmmword ptr [rsp + 0x30]
00725ba5: movsxd rdi, dword ptr [rsi + 0x10]
00725ba9: mov r15, qword ptr [rip + 0x4531e50]
00725bb0: cmp edi, dword ptr [rsi + 8]
00725bb3: jbe 0x180725bbc
00725bb5: xor ecx, ecx
00725bb7: call 0x182c05bf0
00725bbc: mov rcx, qword ptr [r15 + 0x20]
00725bc0: mov r14, rdi
00725bc3: add r14, qword ptr [rsi]
00725bc6: xorps xmm0, xmm0
00725bc9: mov ebx, dword ptr [rsi + 8]
00725bcc: movups xmmword ptr [rsp + 0x50], xmm0
00725bd1: test byte ptr [rcx + 0x135], 1
00725bd8: jne 0x180725bdf
00725bda: call 0x1804fc300
00725bdf: sub ebx, edi
00725be1: mov dword ptr [rsp + 0x58], ebx
00725be5: test r12, r12
00725be8: je 0x180725e3a
00725bee: mov rax, qword ptr [rsp + 0x58]
00725bf3: lea r8, [rsp + 0x50]
00725bf8: mov r9, qword ptr [r12]
00725bfc: lea rdx, [rsp + 0x60]
00725c01: shr rax, 0x20
00725c05: mov rcx, r12
00725c08: mov dword ptr [rsp + 0x4c], eax
00725c0c: mov qword ptr [rsp + 0x40], r14
00725c11: mov rax, qword ptr [r9 + 0x3b8]
00725c18: mov r9, qword ptr [r9 + 0x3c0]
00725c1f: mov dword ptr [rsp + 0x48], ebx
00725c23: movaps xmm0, xmmword ptr [rsp + 0x40]
00725c28: movdqa xmmword ptr [rsp + 0x50], xmm0
00725c2e: movdqa xmmword ptr [rsp + 0x60], xmm6
00725c34: call rax
00725c36: mov eax, dword ptr [rsp + 0xd0]
00725c3d: add dword ptr [rsi + 0x10], eax
00725c40: jmp 0x180725c4f
00725c42: xor r8d, r8d
00725c45: xor edx, edx
00725c47: mov rcx, rsi
00725c4a: call 0x18063bd40
00725c4f: mov rax, qword ptr [r13 + 0x80]
00725c56: inc ebp
00725c58: mov ecx, ebp
00725c5a: test rax, rax
00725c5d: je 0x180725e3a
00725c63: jmp 0x180725aa7
00725c68: mov r15d, dword ptr [rsp + 0xe0]
00725c70: xor r9d, r9d
00725c73: mov r8d, r15d
00725c76: mov rdx, rsi
00725c79: mov rcx, r13
00725c7c: call 0x1807256d0
00725c81: mov r9, qword ptr [r13 + 0xc0]
00725c88: xor ebx, ebx
00725c8a: mov r8d, r15d
00725c8d: mov qword ptr [rsp + 0x20], rbx
00725c92: mov rdx, rsi
00725c95: mov rcx, r13
00725c98: call 0x1807252c0
00725c9d: mov r9, qword ptr [r13 + 0xc8]
00725ca4: mov r8d, r15d
00725ca7: mov rdx, rsi
00725caa: mov qword ptr [rsp + 0x20], rbx
00725caf: mov rcx, r13
00725cb2: call 0x1807252c0
00725cb7: mov r12, qword ptr [r13 + 0x38]
00725cbb: test r12, r12
00725cbe: je 0x180725e3a
00725cc4: mov r12, qword ptr [r12 + 0x18]
00725cc9: test r12, r12
00725ccc: je 0x180725e3a
00725cd2: movsxd rbx, dword ptr [r12 + 0x18]
00725cd7: xor r8d, r8d
00725cda: mov edx, ebx
00725cdc: mov rcx, rsi
00725cdf: call 0x18063bd40
00725ce4: xor r14d, r14d
00725ce7: test ebx, ebx
00725ce9: jle 0x180725dca
00725cef: mov qword ptr [rsp + 0xd0], rbx
00725cf7: xor ebp, ebp
00725cf9: mov r15d, 0x20
00725cff: nop 
00725d00: mov rdi, qword ptr [r12 + 0x10]
00725d05: test rdi, rdi
00725d08: je 0x180725e3a
00725d0e: cmp r14d, dword ptr [rdi + 0x18]
00725d12: jae 0x180725e34
00725d18: mov rdi, qword ptr [rdi + r15]
00725d1c: test rdi, rdi
00725d1f: jne 0x180725d25
00725d21: xor ebx, ebx
00725d23: jmp 0x180725d2c
00725d25: cmp dword ptr [rdi + 0x68], 4
00725d29: setne bl
00725d2c: xor r8d, r8d
00725d2f: movzx edx, bl
00725d32: mov rcx, rsi
00725d35: call 0x18063bab0
00725d3a: test bl, bl
00725d3c: je 0x180725db2
00725d3e: test rdi, rdi
00725d41: je 0x180725e3a
00725d47: mov rdx, qword ptr [rdi + 0x10]
00725d4b: test rdx, rdx
00725d4e: je 0x180725e3a
00725d54: movss xmm6, dword ptr [rdi + 0x94]
00725d5c: xor r8d, r8d
00725d5f: mov ebx, dword ptr [rdi + 0x68]
00725d62: mov rcx, rsi
00725d65: movss xmm7, dword ptr [rdi + 0xa4]
00725d6d: mov rdx, qword ptr [rdx + 0x10]
00725d71: movzx edi, byte ptr [rdi + 0x6c]
00725d75: call 0x18063bf60
00725d7a: xor r8d, r8d
00725d7d: movaps xmm1, xmm6
00725d80: mov rcx, rsi
00725d83: call 0x18060dae0
00725d88: xor r8d, r8d
00725d8b: mov edx, ebx
00725d8d: mov rcx, rsi
00725d90: call 0x18063bd40
00725d95: xor r8d, r8d
00725d98: movaps xmm1, xmm7
00725d9b: mov rcx, rsi
00725d9e: call 0x18060dae0
00725da3: xor r8d, r8d
00725da6: movzx edx, dil
00725daa: mov rcx, rsi
00725dad: call 0x18063bab0
00725db2: inc r14d
00725db5: inc rbp
00725db8: add r15, 8
00725dbc: cmp rbp, qword ptr [rsp + 0xd0]
00725dc4: jl 0x180725d00
00725dca: mov rax, qword ptr [r13 + 0x28]
00725dce: test rax, rax
00725dd1: je 0x180725e3a
00725dd3: mov rcx, qword ptr [rax + 0xc8]
00725dda: test rcx, rcx
00725ddd: je 0x180725e3a
00725ddf: movss xmm6, dword ptr [rcx + 0x78]
00725de4: xor edx, edx
00725de6: call 0x182f43320
00725deb: unpcklps xmm6, xmm0
00725dee: xor edx, edx
00725df0: movq rcx, xmm6
00725df5: call 0x18336c2a0
00725dfa: xor r8d, r8d
00725dfd: mov rdx, rax
00725e00: mov rcx, rsi
00725e03: mov r15, qword ptr [rsp + 0x90]
00725e0b: mov r12, qword ptr [rsp + 0xd8]
00725e13: movaps xmm6, xmmword ptr [rsp + 0x80]
00725e1b: movaps xmm7, xmmword ptr [rsp + 0x70]
00725e20: add rsp, 0x98
00725e27: pop r14
00725e29: pop r13
00725e2b: pop rdi
00725e2c: pop rsi
00725e2d: pop rbp
00725e2e: pop rbx
00725e2f: jmp 0x1806cb440
00725e34: call 0x1804fee10
00725e39: int3 
00725e3a: call 0x1804fee20
00725e3f: int3 
