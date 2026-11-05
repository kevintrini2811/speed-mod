00621df0: push rbx
00621df2: sub rsp, 0x20
00621df6: cmp byte ptr [rip + 0x48c9451], 0
00621dfd: mov rbx, rcx
00621e00: jne 0x180621e21
00621e02: lea rcx, [rip + 0x460b66f]
00621e09: call 0x1804feb70
00621e0e: lea rcx, [rip + 0x46698f3]
00621e15: call 0x1804feb70
00621e1a: mov byte ptr [rip + 0x48c942d], 1
00621e21: movzx edx, byte ptr [rbx + 0x38]
00621e25: test dl, dl
00621e27: mov qword ptr [rsp + 0x30], rdi
00621e2c: sete al
00621e2f: mov byte ptr [rbx + 0x38], al
00621e32: test dl, dl
00621e34: je 0x180621e9d
00621e36: mov rcx, qword ptr [rip + 0x46698cb]
00621e3d: cmp dword ptr [rcx + 0xe4], 0
00621e44: jne 0x180621e4b
00621e46: call 0x1804feeb0
00621e4b: xor ecx, ecx
00621e4d: call 0x180625fa0
00621e52: mov rcx, qword ptr [rip + 0x460b61f]
00621e59: mov rdi, qword ptr [rbx + 0x20]
00621e5d: cmp dword ptr [rcx + 0xe4], 0
00621e64: jne 0x180621e6b
00621e66: call 0x1804feeb0
00621e6b: xor edx, edx
00621e6d: mov rcx, rdi
00621e70: call 0x183832870
00621e75: test al, al
00621e77: je 0x180621e92
00621e79: mov rcx, qword ptr [rbx + 0x20]
00621e7d: test rcx, rcx
00621e80: je 0x180621f58
00621e86: mov rdx, qword ptr [rbx + 0x30]
00621e8a: xor r8d, r8d
00621e8d: call 0x183981e90
00621e92: mov rdi, qword ptr [rsp + 0x30]
00621e97: add rsp, 0x20
00621e9b: pop rbx
00621e9c: ret 
00621e9d: mov rdx, qword ptr [rip + 0x4669864]
00621ea4: cmp dword ptr [rdx + 0xe4], 0
00621eab: jne 0x180621ebc
00621ead: mov rcx, rdx
00621eb0: call 0x1804feeb0
00621eb5: mov rdx, qword ptr [rip + 0x466984c]
00621ebc: cmp byte ptr [rip + 0x48c93b0], 0
00621ec3: jne 0x180621edf
00621ec5: lea rcx, [rip + 0x466983c]
00621ecc: call 0x1804feb70
00621ed1: mov rdx, qword ptr [rip + 0x4669830]
00621ed8: mov byte ptr [rip + 0x48c9394], 1
00621edf: cmp dword ptr [rdx + 0xe4], 0
00621ee6: jne 0x180621ef7
00621ee8: mov rcx, rdx
00621eeb: call 0x1804feeb0
00621ef0: mov rdx, qword ptr [rip + 0x4669811]
00621ef7: mov rax, qword ptr [rdx + 0xb8]
00621efe: xorps xmm0, xmm0
00621f01: xor edx, edx
00621f03: mov ecx, dword ptr [rax]
00621f05: inc ecx
00621f07: mov dword ptr [rax], ecx
00621f09: call 0x1838404b0
00621f0e: mov rcx, qword ptr [rip + 0x460b563]
00621f15: mov rdi, qword ptr [rbx + 0x20]
00621f19: cmp dword ptr [rcx + 0xe4], 0
00621f20: jne 0x180621f27
00621f22: call 0x1804feeb0
00621f27: xor edx, edx
00621f29: mov rcx, rdi
00621f2c: call 0x183832870
00621f31: test al, al
00621f33: je 0x180621e92
00621f39: mov rcx, qword ptr [rbx + 0x20]
00621f3d: test rcx, rcx
00621f40: je 0x180621f58
00621f42: mov rdx, qword ptr [rbx + 0x28]
00621f46: xor r8d, r8d
00621f49: mov rdi, qword ptr [rsp + 0x30]
00621f4e: add rsp, 0x20
00621f52: pop rbx
00621f53: jmp 0x183981e90
00621f58: call 0x1804fee20
00621f5d: int3 
00621f5e: int3 
00621f5f: int3 
