00723e10: push rbx
00723e12: sub rsp, 0x60
00723e16: cmp byte ptr [rip + 0x47c7b4c], 0
00723e1d: mov rbx, rcx
00723e20: jne 0x180723e35
00723e22: lea rcx, [rip + 0x459018f]
00723e29: call 0x1804feb70
00723e2e: mov byte ptr [rip + 0x47c7b34], 1
00723e35: mov rax, qword ptr [rip + 0x459017c]
00723e3c: cmp dword ptr [rax + 0xe4], 0
00723e43: jne 0x180723e54
00723e45: mov rcx, rax
00723e48: call 0x1804feeb0
00723e4d: mov rax, qword ptr [rip + 0x4590164]
00723e54: mov rax, qword ptr [rax + 0xb8]
00723e5b: movaps xmmword ptr [rsp + 0x50], xmm6
00723e60: cmp byte ptr [rax], 0
00723e63: jne 0x180723f25
00723e69: movaps xmmword ptr [rsp + 0x40], xmm7
00723e6e: cmp qword ptr [rbx + 0x98], 0
00723e76: je 0x180723f0f
00723e7c: mov rax, qword ptr [rbx + 0xa0]
00723e83: test rax, rax
00723e86: je 0x1807240a6
00723e8c: cmp byte ptr [rbx + 0xb0], 0
00723e93: movss xmm6, dword ptr [rax + 0x30]
00723e98: movss xmm0, dword ptr [rax + 0x34]
00723e9d: jne 0x180723eb6
00723e9f: movss dword ptr [rbx + 0xa8], xmm6
00723ea7: movss dword ptr [rbx + 0xac], xmm0
00723eaf: mov byte ptr [rbx + 0xb0], 1
00723eb6: movss xmm7, dword ptr [rbx + 0xa8]
00723ebe: movss dword ptr [rbx + 0xa8], xmm6
00723ec6: mov rcx, qword ptr [rbx + 0x28]
00723eca: movss dword ptr [rbx + 0xac], xmm0
00723ed2: test rcx, rcx
00723ed5: je 0x1807240a6
00723edb: xor edx, edx
00723edd: call 0x182f923c0
00723ee2: test rax, rax
00723ee5: je 0x1807240a6
00723eeb: subss xmm6, xmm7
00723eef: movaps xmm7, xmmword ptr [rsp + 0x40]
00723ef4: divss xmm6, dword ptr [rip + 0x350ff24]
00723efc: mulss xmm6, dword ptr [rax + 0x78]
00723f01: movaps xmm0, xmm6
00723f04: movaps xmm6, xmmword ptr [rsp + 0x50]
00723f09: add rsp, 0x60
00723f0d: pop rbx
00723f0e: ret 
00723f0f: movaps xmm7, xmmword ptr [rsp + 0x40]
00723f14: xorps xmm6, xmm6
00723f17: movaps xmm0, xmm6
00723f1a: movaps xmm6, xmmword ptr [rsp + 0x50]
00723f1f: add rsp, 0x60
00723f23: pop rbx
00723f24: ret 
00723f25: cmp byte ptr [rip + 0x47c7a3e], 0
00723f2c: jne 0x180723f41
00723f2e: lea rcx, [rip + 0x458dba3]
00723f35: call 0x1804feb70
00723f3a: mov byte ptr [rip + 0x47c7a29], 1
00723f41: cmp qword ptr [rbx + 0x98], 0
00723f49: mov qword ptr [rsp + 0x80], 0
00723f55: je 0x180724095
00723f5b: cmp qword ptr [rbx + 0x38], 0
00723f60: je 0x180724095
00723f66: mov rcx, qword ptr [rbx + 0x38]
00723f6a: xor r8d, r8d
00723f6d: xor edx, edx
00723f6f: call 0x182f20ae0
00723f74: test rax, rax
00723f77: je 0x180724095
00723f7d: cmp qword ptr [rax + 0x10], 0
00723f82: je 0x180724095
00723f88: mov rcx, qword ptr [rbx + 0xb8]
00723f8f: mov rdx, qword ptr [rax + 0x10]
00723f93: test rcx, rcx
00723f96: je 0x1807240ac
00723f9c: mov r9, qword ptr [rip + 0x458db35]
00723fa3: lea r8, [rsp + 0x80]
00723fab: mov rdx, qword ptr [rdx + 0x10]
00723faf: call 0x18255c8d0
00723fb4: test al, al
00723fb6: je 0x180724095
00723fbc: xor edx, edx
00723fbe: mov rcx, rbx
00723fc1: call 0x180722320
00723fc6: xor r8d, r8d
00723fc9: movaps xmm1, xmm0
00723fcc: mov rcx, rbx
00723fcf: movaps xmm6, xmm0
00723fd2: call 0x1807235e0
00723fd7: movss xmm1, dword ptr [rbx + 0xb4]
00723fdf: xor r8d, r8d
00723fe2: mov rcx, rbx
00723fe5: mov qword ptr [rsp + 0x30], rax
00723fea: call 0x1807235e0
00723fef: movss xmm1, dword ptr [rbx + 0xb4]
00723ff7: comiss xmm1, xmm6
00723ffa: mov qword ptr [rsp + 0x20], rax
00723fff: mov qword ptr [rsp + 0x88], rax
00724007: jbe 0x180724052
00724009: movss xmm1, dword ptr [rip + 0x350fc3b]
00724011: xor r8d, r8d
00724014: mov rcx, rbx
00724017: call 0x1807235e0
0072401c: xor r8d, r8d
0072401f: mov qword ptr [rsp + 0x88], rax
00724027: xorps xmm1, xmm1
0072402a: mov rcx, rbx
0072402d: call 0x1807235e0
00724032: movss xmm0, dword ptr [rsp + 0x88]
0072403b: subss xmm0, dword ptr [rsp + 0x20]
00724041: mov qword ptr [rsp + 0x28], rax
00724046: movss xmm1, dword ptr [rsp + 0x28]
0072404c: subss xmm1, xmm0
00724050: jmp 0x18072405b
00724052: movss xmm1, dword ptr [rsp + 0x88]
0072405b: mov rcx, qword ptr [rbx + 0x28]
0072405f: movss xmm6, dword ptr [rsp + 0x30]
00724065: subss xmm6, xmm1
00724069: test rcx, rcx
0072406c: je 0x1807240ac
0072406e: xor edx, edx
00724070: call 0x182f923c0
00724075: test rax, rax
00724078: je 0x1807240ac
0072407a: divss xmm6, dword ptr [rip + 0x350fd9e]
00724082: mulss xmm6, dword ptr [rax + 0x78]
00724087: movaps xmm0, xmm6
0072408a: movaps xmm6, xmmword ptr [rsp + 0x50]
0072408f: add rsp, 0x60
00724093: pop rbx
00724094: ret 
00724095: xorps xmm6, xmm6
00724098: movaps xmm0, xmm6
0072409b: movaps xmm6, xmmword ptr [rsp + 0x50]
007240a0: add rsp, 0x60
007240a4: pop rbx
007240a5: ret 
007240a6: call 0x1804fee20
007240ab: int3 
007240ac: call 0x1804fee20
007240b1: int3 
007240b2: int3 
007240b3: int3 
007240b4: int3 
007240b5: int3 
007240b6: int3 
007240b7: int3 
007240b8: int3 
007240b9: int3 
007240ba: int3 
007240bb: int3 
007240bc: int3 
007240bd: int3 
007240be: int3 
007240bf: int3 
