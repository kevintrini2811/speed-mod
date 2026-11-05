007c9970: mov qword ptr [rsp + 0x10], rbx
007c9975: push rdi
007c9976: sub rsp, 0x20
007c997a: cmp byte ptr [rip + 0x47224f1], 0
007c9981: mov rdi, rcx
007c9984: jne 0x1807c99a5
007c9986: lea rcx, [rip + 0x44aeeab]
007c998d: call 0x1804feb70
007c9992: lea rcx, [rip + 0x4463adf]
007c9999: call 0x1804feb70
007c999e: mov byte ptr [rip + 0x47224cd], 1
007c99a5: mov rcx, qword ptr [rip + 0x4463acc]
007c99ac: mov rbx, qword ptr [rdi + 0xd8]
007c99b3: cmp dword ptr [rcx + 0xe4], 0
007c99ba: jne 0x1807c99c1
007c99bc: call 0x1804feeb0
007c99c1: xor r8d, r8d
007c99c4: mov qword ptr [rsp + 0x30], rsi
007c99c9: xor edx, edx
007c99cb: mov rcx, rbx
007c99ce: call 0x183832900
007c99d3: xor ebx, ebx
007c99d5: test al, al
007c99d7: je 0x1807c9a05
007c99d9: mov rcx, qword ptr [rdi + 0xd8]
007c99e0: test rcx, rcx
007c99e3: je 0x1807c9aea
007c99e9: xor edx, edx
007c99eb: call 0x1807c9970
007c99f0: lea rcx, [rdi + 0xd8]
007c99f7: mov qword ptr [rdi + 0xd8], rbx
007c99fe: xor edx, edx
007c9a00: call 0x1804fdea0
007c9a05: xor eax, eax
007c9a07: mov word ptr [rdi + 0xe0], ax
007c9a0e: cmp qword ptr [rdi + 0xe8], rax
007c9a15: jne 0x1807c9a68
007c9a17: mov rdx, qword ptr [rdi]
007c9a1a: mov rcx, rdi
007c9a1d: mov rax, qword ptr [rdx + 0x238]
007c9a24: mov rdx, qword ptr [rdx + 0x240]
007c9a2b: call rax
007c9a2d: xor edx, edx
007c9a2f: mov rcx, rdi
007c9a32: call 0x1838158a0
007c9a37: mov rcx, qword ptr [rip + 0x4463a3a]
007c9a3e: mov rbx, rax
007c9a41: cmp dword ptr [rcx + 0xe4], 0
007c9a48: jne 0x1807c9a4f
007c9a4a: call 0x1804feeb0
007c9a4f: xor edx, edx
007c9a51: mov rcx, rbx
007c9a54: mov rsi, qword ptr [rsp + 0x30]
007c9a59: mov rbx, qword ptr [rsp + 0x38]
007c9a5e: add rsp, 0x20
007c9a62: pop rdi
007c9a63: jmp 0x18382f800
007c9a68: mov rsi, qword ptr [rdi + 0xe8]
007c9a6f: test rsi, rsi
007c9a72: je 0x1807c9aea
007c9a74: mov r9, qword ptr [rsi]
007c9a77: mov rdx, qword ptr [rip + 0x44aedba]
007c9a7e: movzx ecx, word ptr [r9 + 0x12e]
007c9a86: cmp bx, cx
007c9a89: jae 0x1807c9aa6
007c9a8b: mov r8, qword ptr [r9 + 0xb0]
007c9a92: movzx eax, bx
007c9a95: add rax, rax
007c9a98: cmp qword ptr [r8 + rax*8], rdx
007c9a9c: je 0x1807c9ad0
007c9a9e: inc bx
007c9aa1: cmp bx, cx
007c9aa4: jb 0x1807c9a92
007c9aa6: xor r8d, r8d
007c9aa9: mov rcx, rsi
007c9aac: call 0x1804fbc00
007c9ab1: mov r9, qword ptr [rax]
007c9ab4: mov rdx, rdi
007c9ab7: mov r8, qword ptr [rax + 8]
007c9abb: mov rcx, rsi
007c9abe: mov rsi, qword ptr [rsp + 0x30]
007c9ac3: mov rbx, qword ptr [rsp + 0x38]
007c9ac8: add rsp, 0x20
007c9acc: pop rdi
007c9acd: jmp r9
007c9ad0: movzx ecx, bx
007c9ad3: add rcx, rcx
007c9ad6: movsxd rax, dword ptr [r8 + rcx*8 + 8]
007c9adb: shl rax, 4
007c9adf: add rax, 0x138
007c9ae5: add rax, r9
007c9ae8: jmp 0x1807c9ab1
007c9aea: call 0x1804fee20
007c9aef: int3 
