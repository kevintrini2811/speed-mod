0066dcb0: mov qword ptr [rsp + 8], rbx
0066dcb5: push rdi
0066dcb6: sub rsp, 0x20
0066dcba: cmp byte ptr [rip + 0x487d81d], 0
0066dcc1: mov rdi, rcx
0066dcc4: jne 0x18066dce5
0066dcc6: lea rcx, [rip + 0x4613783]
0066dccd: call 0x1804feb70
0066dcd2: lea rcx, [rip + 0x461384f]
0066dcd9: call 0x1804feb70
0066dcde: mov byte ptr [rip + 0x487d7f9], 1
0066dce5: mov rax, qword ptr [rdi + 0x70]
0066dce9: xor ebx, ebx
0066dceb: mov edx, ebx
0066dced: test rax, rax
0066dcf0: je 0x18066dd40
0066dcf2: cmp edx, dword ptr [rax + 0x28]
0066dcf5: jge 0x18066dd35
0066dcf7: mov rcx, qword ptr [rdi + 0x70]
0066dcfb: test rcx, rcx
0066dcfe: je 0x18066dd40
0066dd00: mov r8, qword ptr [rip + 0x4613821]
0066dd07: mov edx, ebx
0066dd09: call 0x182449330
0066dd0e: test rax, rax
0066dd11: je 0x18066dd40
0066dd13: cmp dword ptr [rax + 0xc4], -2
0066dd1a: jne 0x18066dd26
0066dd1c: xor edx, edx
0066dd1e: mov rcx, rax
0066dd21: call 0x1806ebf90
0066dd26: mov rax, qword ptr [rdi + 0x70]
0066dd2a: inc ebx
0066dd2c: mov edx, ebx
0066dd2e: test rax, rax
0066dd31: je 0x18066dd40
0066dd33: jmp 0x18066dcf2
0066dd35: mov rbx, qword ptr [rsp + 0x30]
0066dd3a: add rsp, 0x20
0066dd3e: pop rdi
0066dd3f: ret 
0066dd40: call 0x1804fee20
0066dd45: int3 
0066dd46: int3 
0066dd47: int3 
0066dd48: int3 
0066dd49: int3 
0066dd4a: int3 
0066dd4b: int3 
0066dd4c: int3 
0066dd4d: int3 
0066dd4e: int3 
0066dd4f: int3 
