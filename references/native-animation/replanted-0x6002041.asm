00726ec0: push rbx
00726ec2: sub rsp, 0x30
00726ec6: cmp byte ptr [rip + 0x47c4a98], 0
00726ecd: mov rbx, rcx
00726ed0: movaps xmmword ptr [rsp + 0x20], xmm6
00726ed5: movaps xmm6, xmm1
00726ed8: jne 0x180726eed
00726eda: lea rcx, [rip + 0x458d0d7]
00726ee1: call 0x1804feb70
00726ee6: mov byte ptr [rip + 0x47c4a78], 1
00726eed: xor edx, edx
00726eef: mov rcx, rbx
00726ef2: call 0x180722320
00726ef7: movss dword ptr [rbx + 0xb4], xmm0
00726eff: mov rax, qword ptr [rip + 0x458d0b2]
00726f06: cmp dword ptr [rax + 0xe4], 0
00726f0d: jne 0x180726f1e
00726f0f: mov rcx, rax
00726f12: call 0x1804feeb0
00726f17: mov rax, qword ptr [rip + 0x458d09a]
00726f1e: mov rax, qword ptr [rax + 0xb8]
00726f25: cmp byte ptr [rax], 0
00726f28: je 0x180726f3e
00726f2a: mov rax, qword ptr [rbx + 0x28]
00726f2e: test rax, rax
00726f31: je 0x180726fb8
00726f37: mov dword ptr [rax + 0x34], 4
00726f3e: mov rax, qword ptr [rbx + 0x28]
00726f42: test rax, rax
00726f45: je 0x180726fb8
00726f47: mov byte ptr [rax + 0x110], 1
00726f4e: mov rcx, qword ptr [rbx + 0x28]
00726f52: test rcx, rcx
00726f55: je 0x180726fb8
00726f57: xor r8d, r8d
00726f5a: movaps xmm1, xmm6
00726f5d: call 0x182f6d740
00726f62: mov rax, qword ptr [rbx + 0x28]
00726f66: test rax, rax
00726f69: je 0x180726fb8
00726f6b: mov byte ptr [rax + 0x110], 0
00726f72: mov rax, qword ptr [rip + 0x458d03f]
00726f79: cmp dword ptr [rax + 0xe4], 0
00726f80: jne 0x180726f91
00726f82: mov rcx, rax
00726f85: call 0x1804feeb0
00726f8a: mov rax, qword ptr [rip + 0x458d027]
00726f91: mov rax, qword ptr [rax + 0xb8]
00726f98: cmp byte ptr [rax], 0
00726f9b: je 0x180726fad
00726f9d: mov rax, qword ptr [rbx + 0x28]
00726fa1: test rax, rax
00726fa4: je 0x180726fb8
00726fa6: mov dword ptr [rax + 0x34], 3
00726fad: movaps xmm6, xmmword ptr [rsp + 0x20]
00726fb2: add rsp, 0x30
00726fb6: pop rbx
00726fb7: ret 
00726fb8: call 0x1804fee20
00726fbd: int3 
00726fbe: int3 
00726fbf: int3 
