00721db0: push rbx
00721db2: sub rsp, 0x20
00721db6: cmp byte ptr [rip + 0x47c9ba9], 0
00721dbd: mov rbx, rcx
00721dc0: jne 0x180721dd5
00721dc2: lea rcx, [rip + 0x45921ef]
00721dc9: call 0x1804feb70
00721dce: mov byte ptr [rip + 0x47c9b91], 1
00721dd5: mov rax, qword ptr [rip + 0x45921dc]
00721ddc: cmp dword ptr [rax + 0xe4], 0
00721de3: jne 0x180721df4
00721de5: mov rcx, rax
00721de8: call 0x1804feeb0
00721ded: mov rax, qword ptr [rip + 0x45921c4]
00721df4: mov rax, qword ptr [rax + 0xb8]
00721dfb: cmp byte ptr [rax], 0
00721dfe: je 0x180721e22
00721e00: mov rcx, qword ptr [rbx + 0x28]
00721e04: test rcx, rcx
00721e07: je 0x180721e28
00721e09: mov rdx, qword ptr [rcx]
00721e0c: mov rax, qword ptr [rdx + 0x338]
00721e13: mov rdx, qword ptr [rdx + 0x340]
00721e1a: add rsp, 0x20
00721e1e: pop rbx
00721e1f: jmp rax
00721e22: add rsp, 0x20
00721e26: pop rbx
00721e27: ret 
00721e28: call 0x1804fee20
00721e2d: int3 
00721e2e: int3 
00721e2f: int3 
