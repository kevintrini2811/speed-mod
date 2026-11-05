0066da30: mov qword ptr [rsp + 8], rbx
0066da35: push rdi
0066da36: sub rsp, 0x20
0066da3a: cmp byte ptr [rip + 0x487da9a], 0
0066da41: mov rdi, rcx
0066da44: jne 0x18066da65
0066da46: lea rcx, [rip + 0x4610d4b]
0066da4d: call 0x1804feb70
0066da52: lea rcx, [rip + 0x4610e17]
0066da59: call 0x1804feb70
0066da5e: mov byte ptr [rip + 0x487da76], 1
0066da65: mov rax, qword ptr [rdi + 0x98]
0066da6c: xor ebx, ebx
0066da6e: mov ecx, ebx
0066da70: test rax, rax
0066da73: je 0x18066dac0
0066da75: cmp ecx, dword ptr [rax + 0x28]
0066da78: jge 0x18066dab5
0066da7a: mov rcx, qword ptr [rdi + 0x98]
0066da81: test rcx, rcx
0066da84: je 0x18066dac0
0066da86: mov r8, qword ptr [rip + 0x4610de3]
0066da8d: mov edx, ebx
0066da8f: call 0x182449330
0066da94: test rax, rax
0066da97: je 0x18066dac0
0066da99: xor edx, edx
0066da9b: mov rcx, rax
0066da9e: call 0x1806c2390
0066daa3: mov rax, qword ptr [rdi + 0x98]
0066daaa: inc ebx
0066daac: mov ecx, ebx
0066daae: test rax, rax
0066dab1: je 0x18066dac0
0066dab3: jmp 0x18066da75
0066dab5: mov rbx, qword ptr [rsp + 0x30]
0066daba: add rsp, 0x20
0066dabe: pop rdi
0066dabf: ret 
0066dac0: call 0x1804fee20
0066dac5: int3 
0066dac6: int3 
0066dac7: int3 
0066dac8: int3 
0066dac9: int3 
0066daca: int3 
0066dacb: int3 
0066dacc: int3 
0066dacd: int3 
0066dace: int3 
0066dacf: int3 
