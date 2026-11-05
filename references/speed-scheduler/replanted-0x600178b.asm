0066dd50: mov qword ptr [rsp + 8], rbx
0066dd55: mov qword ptr [rsp + 0x10], rsi
0066dd5a: push rdi
0066dd5b: sub rsp, 0x20
0066dd5f: cmp byte ptr [rip + 0x487d7dc], 0
0066dd66: mov esi, edx
0066dd68: mov rdi, rcx
0066dd6b: jne 0x18066dd8c
0066dd6d: lea rcx, [rip + 0x4612cbc]
0066dd74: call 0x1804feb70
0066dd79: lea rcx, [rip + 0x4612d88]
0066dd80: call 0x1804feb70
0066dd85: mov byte ptr [rip + 0x487d7b6], 1
0066dd8c: mov rax, qword ptr [rdi + 0x310]
0066dd93: xor ebx, ebx
0066dd95: mov edx, ebx
0066dd97: test rax, rax
0066dd9a: je 0x18066de3c
0066dda0: mov rcx, qword ptr [rax + 0x148]
0066dda7: test rcx, rcx
0066ddaa: je 0x18066de3c
0066ddb0: mov rax, qword ptr [rcx + 0x10]
0066ddb4: test rax, rax
0066ddb7: je 0x18066de3c
0066ddbd: mov rax, qword ptr [rax + 0x10]
0066ddc1: test rax, rax
0066ddc4: je 0x18066de3c
0066ddc6: cmp edx, dword ptr [rax + 0x28]
0066ddc9: jge 0x18066de2c
0066ddcb: mov rax, qword ptr [rdi + 0x310]
0066ddd2: test rax, rax
0066ddd5: je 0x18066de3c
0066ddd7: mov rcx, qword ptr [rax + 0x148]
0066ddde: test rcx, rcx
0066dde1: je 0x18066de3c
0066dde3: mov rax, qword ptr [rcx + 0x10]
0066dde7: test rax, rax
0066ddea: je 0x18066de3c
0066ddec: mov rcx, qword ptr [rax + 0x10]
0066ddf0: test rcx, rcx
0066ddf3: je 0x18066de3c
0066ddf5: mov r8, qword ptr [rip + 0x4612d0c]
0066ddfc: mov edx, ebx
0066ddfe: call 0x182449330
0066de03: test rax, rax
0066de06: je 0x18066de3c
0066de08: cmp dword ptr [rax + 0x70], esi
0066de0b: jne 0x18066de17
0066de0d: xor edx, edx
0066de0f: mov rcx, rax
0066de12: call 0x1806d7cd0
0066de17: mov rax, qword ptr [rdi + 0x310]
0066de1e: inc ebx
0066de20: mov edx, ebx
0066de22: test rax, rax
0066de25: je 0x18066de3c
0066de27: jmp 0x18066dda0
0066de2c: mov rbx, qword ptr [rsp + 0x30]
0066de31: mov rsi, qword ptr [rsp + 0x38]
0066de36: add rsp, 0x20
0066de3a: pop rdi
0066de3b: ret 
0066de3c: call 0x1804fee20
0066de41: int3 
0066de42: int3 
0066de43: int3 
0066de44: int3 
0066de45: int3 
0066de46: int3 
0066de47: int3 
0066de48: int3 
0066de49: int3 
0066de4a: int3 
0066de4b: int3 
0066de4c: int3 
0066de4d: int3 
0066de4e: int3 
0066de4f: int3 
