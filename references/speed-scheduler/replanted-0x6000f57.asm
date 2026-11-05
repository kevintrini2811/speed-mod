007dcef0: mov qword ptr [rsp + 8], rbx
007dcef5: mov qword ptr [rsp + 0x10], rbp
007dcefa: mov qword ptr [rsp + 0x18], rsi
007dceff: push rdi
007dcf00: sub rsp, 0x40
007dcf04: cmp byte ptr [rip + 0x470f0cb], 0
007dcf0b: mov rsi, r9
007dcf0e: mov rbp, r8
007dcf11: mov rbx, rdx
007dcf14: mov rdi, rcx
007dcf17: jne 0x1807dcf38
007dcf19: lea rcx, [rip + 0x44547e8]
007dcf20: call 0x1804feb70
007dcf25: lea rcx, [rip + 0x44d4e34]
007dcf2c: call 0x1804feb70
007dcf31: mov byte ptr [rip + 0x470f09e], 1
007dcf38: xor eax, eax
007dcf3a: mov qword ptr [rsp + 0x30], rax
007dcf3f: mov qword ptr [rsp + 0x68], rax
007dcf44: test rsi, rsi
007dcf47: je 0x1807dcf98
007dcf49: mov rcx, qword ptr [rdi + 0xb8]
007dcf50: test rcx, rcx
007dcf53: je 0x1807dcffc
007dcf59: mov rax, qword ptr [rip + 0x44547a8]
007dcf60: lea r9, [rsp + 0x68]
007dcf65: xor r8d, r8d
007dcf68: mov qword ptr [rsp + 0x20], rax
007dcf6d: mov rdx, rsi
007dcf70: call 0x180ebda00
007dcf75: test al, al
007dcf77: je 0x1807dcf98
007dcf79: mov rcx, qword ptr [rsp + 0x68]
007dcf7e: test rcx, rcx
007dcf81: je 0x1807dcffc
007dcf83: test rbx, rbx
007dcf86: je 0x1807dcffc
007dcf88: cvttss2si eax, dword ptr [rcx + 0x18]
007dcf8d: mov dword ptr [rbx + 0x2c], eax
007dcf90: cvttss2si eax, dword ptr [rcx + 0x1c]
007dcf95: mov dword ptr [rbx + 0x30], eax
007dcf98: mov rcx, qword ptr [rdi + 0xb8]
007dcf9f: test rcx, rcx
007dcfa2: je 0x1807dcffc
007dcfa4: mov rax, qword ptr [rip + 0x445475d]
007dcfab: lea r9, [rsp + 0x30]
007dcfb0: xor r8d, r8d
007dcfb3: mov qword ptr [rsp + 0x20], rax
007dcfb8: mov rdx, rbp
007dcfbb: call 0x180ebda00
007dcfc0: test al, al
007dcfc2: je 0x1807dcfe7
007dcfc4: mov rcx, qword ptr [rsp + 0x30]
007dcfc9: test rcx, rcx
007dcfcc: je 0x1807dcffc
007dcfce: test rbx, rbx
007dcfd1: je 0x1807dcffc
007dcfd3: cvttss2si eax, dword ptr [rcx + 0x18]
007dcfd8: mov dword ptr [rbx + 0x34], eax
007dcfdb: cvttss2si eax, dword ptr [rcx + 0x1c]
007dcfe0: mov byte ptr [rbx + 0x13], 1
007dcfe4: mov dword ptr [rbx + 0x38], eax
007dcfe7: mov rbx, qword ptr [rsp + 0x50]
007dcfec: mov rbp, qword ptr [rsp + 0x58]
007dcff1: mov rsi, qword ptr [rsp + 0x60]
007dcff6: add rsp, 0x40
007dcffa: pop rdi
007dcffb: ret 
007dcffc: call 0x1804fee20
007dd001: int3 
007dd002: int3 
007dd003: int3 
007dd004: int3 
007dd005: int3 
007dd006: int3 
007dd007: int3 
007dd008: int3 
007dd009: int3 
007dd00a: int3 
007dd00b: int3 
007dd00c: int3 
007dd00d: int3 
007dd00e: int3 
007dd00f: int3 
