02f6d0f0: push rbx
02f6d0f2: sub rsp, 0x20
02f6d0f6: cmp qword ptr [rcx + 0x130], 0
02f6d0fe: mov rbx, rcx
02f6d101: je 0x182f6d11b
02f6d103: mov rcx, qword ptr [rcx + 0x130]
02f6d10a: mov rdx, rbx
02f6d10d: mov rax, qword ptr [rcx + 0x18]
02f6d111: mov r8, qword ptr [rcx + 0x28]
02f6d115: mov rcx, qword ptr [rcx + 0x40]
02f6d119: call rax
02f6d11b: mov rcx, qword ptr [rbx + 0x118]
02f6d122: test rcx, rcx
02f6d125: je 0x182f6d165
02f6d127: cmp dword ptr [rbx + 0x34], 4
02f6d12b: mov rdx, qword ptr [rbx + 0xc8]
02f6d132: jne 0x182f6d14e
02f6d134: xor r9d, r9d
02f6d137: mov r8b, 1
02f6d13a: call 0x182f1e3b0
02f6d13f: xor edx, edx
02f6d141: mov rcx, rbx
02f6d144: add rsp, 0x20
02f6d148: pop rbx
02f6d149: jmp 0x182f6d020
02f6d14e: xor r8d, r8d
02f6d151: call 0x182f1f790
02f6d156: xor edx, edx
02f6d158: mov rcx, rbx
02f6d15b: add rsp, 0x20
02f6d15f: pop rbx
02f6d160: jmp 0x182f6d020
02f6d165: call 0x1804fee20
02f6d16a: int3 
02f6d16b: int3 
02f6d16c: int3 
02f6d16d: int3 
02f6d16e: int3 
02f6d16f: int3 
