02f6d020: push rbx
02f6d022: sub rsp, 0x20
02f6d026: cmp qword ptr [rcx + 0x138], 0
02f6d02e: mov rbx, rcx
02f6d031: je 0x182f6d04b
02f6d033: mov rcx, qword ptr [rcx + 0x138]
02f6d03a: mov rdx, rbx
02f6d03d: mov rax, qword ptr [rcx + 0x18]
02f6d041: mov r8, qword ptr [rcx + 0x28]
02f6d045: mov rcx, qword ptr [rcx + 0x40]
02f6d049: call rax
02f6d04b: cmp byte ptr [rbx + 0x110], 0
02f6d052: jne 0x182f6d0bc
02f6d054: cmp qword ptr [rbx + 0x140], 0
02f6d05c: mov rcx, rbx
02f6d05f: mov rax, qword ptr [rbx]
02f6d062: mov r8, qword ptr [rax + 0x200]
02f6d069: mov r9, qword ptr [rax + 0x1f8]
02f6d070: je 0x182f6d0b4
02f6d072: mov edx, 3
02f6d077: call r9
02f6d07a: mov rcx, qword ptr [rbx + 0x140]
02f6d081: test rcx, rcx
02f6d084: je 0x182f6d0ea
02f6d086: mov rax, qword ptr [rcx + 0x18]
02f6d08a: mov rdx, rbx
02f6d08d: mov r8, qword ptr [rcx + 0x28]
02f6d091: mov rcx, qword ptr [rcx + 0x40]
02f6d095: call rax
02f6d097: mov r8, qword ptr [rbx]
02f6d09a: mov edx, 2
02f6d09f: mov rcx, rbx
02f6d0a2: mov rax, qword ptr [r8 + 0x1f8]
02f6d0a9: mov r8, qword ptr [r8 + 0x200]
02f6d0b0: call rax
02f6d0b2: jmp 0x182f6d0bc
02f6d0b4: mov edx, 2
02f6d0b9: call r9
02f6d0bc: cmp qword ptr [rbx + 0x148], 0
02f6d0c4: je 0x182f6d0e4
02f6d0c6: mov rcx, qword ptr [rbx + 0x148]
02f6d0cd: mov rdx, rbx
02f6d0d0: mov rax, qword ptr [rcx + 0x18]
02f6d0d4: mov r8, qword ptr [rcx + 0x28]
02f6d0d8: mov rcx, qword ptr [rcx + 0x40]
02f6d0dc: add rsp, 0x20
02f6d0e0: pop rbx
02f6d0e1: jmp rax
02f6d0e4: add rsp, 0x20
02f6d0e8: pop rbx
02f6d0e9: ret 
02f6d0ea: call 0x1804fee20
02f6d0ef: int3 
