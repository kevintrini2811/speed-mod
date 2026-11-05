00723bd0: push rbx
00723bd2: sub rsp, 0x40
00723bd6: cmp byte ptr [rip + 0x47c7d8d], 0
00723bdd: mov rbx, rcx
00723be0: jne 0x180723bf5
00723be2: lea rcx, [rip + 0x458deef]
00723be9: call 0x1804feb70
00723bee: mov byte ptr [rip + 0x47c7d75], 1
00723bf5: cmp qword ptr [rbx + 0x98], 0
00723bfd: movaps xmmword ptr [rsp + 0x30], xmm6
00723c02: mov qword ptr [rsp + 0x50], 0
00723c0b: je 0x180723d3c
00723c11: cmp qword ptr [rbx + 0x38], 0
00723c16: je 0x180723d3c
00723c1c: mov rcx, qword ptr [rbx + 0x38]
00723c20: xor r8d, r8d
00723c23: xor edx, edx
00723c25: call 0x182f20ae0
00723c2a: test rax, rax
00723c2d: je 0x180723d3c
00723c33: cmp qword ptr [rax + 0x10], 0
00723c38: je 0x180723d3c
00723c3e: mov rcx, qword ptr [rbx + 0xb8]
00723c45: mov rdx, qword ptr [rax + 0x10]
00723c49: test rcx, rcx
00723c4c: je 0x180723d4a
00723c52: mov r9, qword ptr [rip + 0x458de7f]
00723c59: lea r8, [rsp + 0x50]
00723c5e: mov rdx, qword ptr [rdx + 0x10]
00723c62: call 0x18255c8d0
00723c67: test al, al
00723c69: je 0x180723d3c
00723c6f: xor edx, edx
00723c71: mov rcx, rbx
00723c74: call 0x180722320
00723c79: xor r8d, r8d
00723c7c: movaps xmm1, xmm0
00723c7f: mov rcx, rbx
00723c82: movaps xmm6, xmm0
00723c85: call 0x1807235e0
00723c8a: movss xmm1, dword ptr [rbx + 0xb4]
00723c92: xor r8d, r8d
00723c95: mov rcx, rbx
00723c98: mov qword ptr [rsp + 0x28], rax
00723c9d: call 0x1807235e0
00723ca2: movss xmm1, dword ptr [rbx + 0xb4]
00723caa: comiss xmm1, xmm6
00723cad: mov qword ptr [rsp + 0x68], rax
00723cb2: mov qword ptr [rsp + 0x60], rax
00723cb7: jbe 0x180723cfc
00723cb9: movss xmm1, dword ptr [rip + 0x350ff8b]
00723cc1: xor r8d, r8d
00723cc4: mov rcx, rbx
00723cc7: call 0x1807235e0
00723ccc: xor r8d, r8d
00723ccf: mov qword ptr [rsp + 0x60], rax
00723cd4: xorps xmm1, xmm1
00723cd7: mov rcx, rbx
00723cda: call 0x1807235e0
00723cdf: movss xmm0, dword ptr [rsp + 0x60]
00723ce5: subss xmm0, dword ptr [rsp + 0x68]
00723ceb: mov qword ptr [rsp + 0x20], rax
00723cf0: movss xmm1, dword ptr [rsp + 0x20]
00723cf6: subss xmm1, xmm0
00723cfa: jmp 0x180723d02
00723cfc: movss xmm1, dword ptr [rsp + 0x60]
00723d02: mov rcx, qword ptr [rbx + 0x28]
00723d06: movss xmm6, dword ptr [rsp + 0x28]
00723d0c: subss xmm6, xmm1
00723d10: test rcx, rcx
00723d13: je 0x180723d4a
00723d15: xor edx, edx
00723d17: call 0x182f923c0
00723d1c: test rax, rax
00723d1f: je 0x180723d4a
00723d21: divss xmm6, dword ptr [rip + 0x35100f7]
00723d29: mulss xmm6, dword ptr [rax + 0x78]
00723d2e: movaps xmm0, xmm6
00723d31: movaps xmm6, xmmword ptr [rsp + 0x30]
00723d36: add rsp, 0x40
00723d3a: pop rbx
00723d3b: ret 
00723d3c: movaps xmm6, xmmword ptr [rsp + 0x30]
00723d41: xorps xmm0, xmm0
00723d44: add rsp, 0x40
00723d48: pop rbx
00723d49: ret 
00723d4a: call 0x1804fee20
00723d4f: int3 
