0066dad0: mov qword ptr [rsp + 8], rbx
0066dad5: push rdi
0066dad6: sub rsp, 0x20
0066dada: cmp byte ptr [rip + 0x487d9f9], 0
0066dae1: mov rdi, rcx
0066dae4: jne 0x18066db05
0066dae6: lea rcx, [rip + 0x4611b03]
0066daed: call 0x1804feb70
0066daf2: lea rcx, [rip + 0x4611bcf]
0066daf9: call 0x1804feb70
0066dafe: mov byte ptr [rip + 0x487d9d5], 1
0066db05: mov rax, qword ptr [rdi + 0x78]
0066db09: xor ebx, ebx
0066db0b: mov ecx, ebx
0066db0d: test rax, rax
0066db10: je 0x18066db57
0066db12: cmp ecx, dword ptr [rax + 0x28]
0066db15: jge 0x18066db4c
0066db17: mov rcx, qword ptr [rdi + 0x78]
0066db1b: test rcx, rcx
0066db1e: je 0x18066db57
0066db20: mov r8, qword ptr [rip + 0x4611ba1]
0066db27: mov edx, ebx
0066db29: call 0x182449330
0066db2e: test rax, rax
0066db31: je 0x18066db57
0066db33: xor edx, edx
0066db35: mov rcx, rax
0066db38: call 0x1806acd40
0066db3d: mov rax, qword ptr [rdi + 0x78]
0066db41: inc ebx
0066db43: mov ecx, ebx
0066db45: test rax, rax
0066db48: je 0x18066db57
0066db4a: jmp 0x18066db12
0066db4c: mov rbx, qword ptr [rsp + 0x30]
0066db51: add rsp, 0x20
0066db55: pop rdi
0066db56: ret 
0066db57: call 0x1804fee20
0066db5c: int3 
0066db5d: int3 
0066db5e: int3 
0066db5f: int3 
