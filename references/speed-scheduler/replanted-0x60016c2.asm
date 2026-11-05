0066dc00: mov qword ptr [rsp + 0x10], rbx
0066dc05: push rsi
0066dc06: sub rsp, 0x20
0066dc0a: cmp byte ptr [rip + 0x487d8cb], 0
0066dc11: mov rsi, rcx
0066dc14: jne 0x18066dc35
0066dc16: lea rcx, [rip + 0x4613833]
0066dc1d: call 0x1804feb70
0066dc22: lea rcx, [rip + 0x46138ff]
0066dc29: call 0x1804feb70
0066dc2e: mov byte ptr [rip + 0x487d8a7], 1
0066dc35: mov rax, qword ptr [rsi + 0x70]
0066dc39: xor ebx, ebx
0066dc3b: mov qword ptr [rsp + 0x30], rdi
0066dc40: mov edx, ebx
0066dc42: test rax, rax
0066dc45: je 0x18066dca2
0066dc47: cmp edx, dword ptr [rax + 0x28]
0066dc4a: jge 0x18066dc92
0066dc4c: mov rcx, qword ptr [rsi + 0x70]
0066dc50: test rcx, rcx
0066dc53: je 0x18066dca2
0066dc55: mov r8, qword ptr [rip + 0x46138cc]
0066dc5c: mov edx, ebx
0066dc5e: call 0x182449330
0066dc63: mov rdi, rax
0066dc66: test rax, rax
0066dc69: je 0x18066dca2
0066dc6b: xor edx, edx
0066dc6d: mov rcx, rax
0066dc70: call 0x1806f3600
0066dc75: test al, al
0066dc77: jne 0x18066dc83
0066dc79: xor edx, edx
0066dc7b: mov rcx, rdi
0066dc7e: call 0x1806ebf90
0066dc83: mov rax, qword ptr [rsi + 0x70]
0066dc87: inc ebx
0066dc89: mov edx, ebx
0066dc8b: test rax, rax
0066dc8e: je 0x18066dca2
0066dc90: jmp 0x18066dc47
0066dc92: mov rdi, qword ptr [rsp + 0x30]
0066dc97: mov rbx, qword ptr [rsp + 0x38]
0066dc9c: add rsp, 0x20
0066dca0: pop rsi
0066dca1: ret 
0066dca2: call 0x1804fee20
0066dca7: int3 
0066dca8: int3 
0066dca9: int3 
0066dcaa: int3 
0066dcab: int3 
0066dcac: int3 
0066dcad: int3 
0066dcae: int3 
0066dcaf: int3 
