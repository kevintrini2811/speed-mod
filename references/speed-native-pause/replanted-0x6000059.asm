00621c70: push rbx
00621c72: sub rsp, 0x20
00621c76: cmp byte ptr [rcx + 0x38], 0
00621c7a: mov rbx, rcx
00621c7d: je 0x180621d21
00621c83: cmp byte ptr [rip + 0x48c95c4], 0
00621c8a: jne 0x180621cab
00621c8c: lea rcx, [rip + 0x460b7e5]
00621c93: call 0x1804feb70
00621c98: lea rcx, [rip + 0x4669a69]
00621c9f: call 0x1804feb70
00621ca4: mov byte ptr [rip + 0x48c95a3], 1
00621cab: movzx ecx, byte ptr [rbx + 0x38]
00621caf: test cl, cl
00621cb1: mov qword ptr [rsp + 0x30], rdi
00621cb6: sete al
00621cb9: mov byte ptr [rbx + 0x38], al
00621cbc: test cl, cl
00621cbe: je 0x180621d27
00621cc0: mov rcx, qword ptr [rip + 0x4669a41]
00621cc7: cmp dword ptr [rcx + 0xe4], 0
00621cce: jne 0x180621cd5
00621cd0: call 0x1804feeb0
00621cd5: xor ecx, ecx
00621cd7: call 0x180625fa0
00621cdc: mov rcx, qword ptr [rip + 0x460b795]
00621ce3: mov rdi, qword ptr [rbx + 0x20]
00621ce7: cmp dword ptr [rcx + 0xe4], 0
00621cee: jne 0x180621cf5
00621cf0: call 0x1804feeb0
00621cf5: xor edx, edx
00621cf7: mov rcx, rdi
00621cfa: call 0x183832870
00621cff: test al, al
00621d01: je 0x180621d1c
00621d03: mov rcx, qword ptr [rbx + 0x20]
00621d07: test rcx, rcx
00621d0a: je 0x180621de2
00621d10: mov rdx, qword ptr [rbx + 0x30]
00621d14: xor r8d, r8d
00621d17: call 0x183981e90
00621d1c: mov rdi, qword ptr [rsp + 0x30]
00621d21: add rsp, 0x20
00621d25: pop rbx
00621d26: ret 
00621d27: mov rdx, qword ptr [rip + 0x46699da]
00621d2e: cmp dword ptr [rdx + 0xe4], 0
00621d35: jne 0x180621d46
00621d37: mov rcx, rdx
00621d3a: call 0x1804feeb0
00621d3f: mov rdx, qword ptr [rip + 0x46699c2]
00621d46: cmp byte ptr [rip + 0x48c9526], 0
00621d4d: jne 0x180621d69
00621d4f: lea rcx, [rip + 0x46699b2]
00621d56: call 0x1804feb70
00621d5b: mov rdx, qword ptr [rip + 0x46699a6]
00621d62: mov byte ptr [rip + 0x48c950a], 1
00621d69: cmp dword ptr [rdx + 0xe4], 0
00621d70: jne 0x180621d81
00621d72: mov rcx, rdx
00621d75: call 0x1804feeb0
00621d7a: mov rdx, qword ptr [rip + 0x4669987]
00621d81: mov rax, qword ptr [rdx + 0xb8]
00621d88: xorps xmm0, xmm0
00621d8b: xor edx, edx
00621d8d: mov ecx, dword ptr [rax]
00621d8f: inc ecx
00621d91: mov dword ptr [rax], ecx
00621d93: call 0x1838404b0
00621d98: mov rcx, qword ptr [rip + 0x460b6d9]
00621d9f: mov rdi, qword ptr [rbx + 0x20]
00621da3: cmp dword ptr [rcx + 0xe4], 0
00621daa: jne 0x180621db1
00621dac: call 0x1804feeb0
00621db1: xor edx, edx
00621db3: mov rcx, rdi
00621db6: call 0x183832870
00621dbb: test al, al
00621dbd: je 0x180621d1c
00621dc3: mov rcx, qword ptr [rbx + 0x20]
00621dc7: test rcx, rcx
00621dca: je 0x180621de2
00621dcc: mov rdx, qword ptr [rbx + 0x28]
00621dd0: xor r8d, r8d
00621dd3: mov rdi, qword ptr [rsp + 0x30]
00621dd8: add rsp, 0x20
00621ddc: pop rbx
00621ddd: jmp 0x183981e90
00621de2: call 0x1804fee20
00621de7: int3 
00621de8: int3 
00621de9: int3 
00621dea: int3 
00621deb: int3 
00621dec: int3 
00621ded: int3 
00621dee: int3 
00621def: int3 
