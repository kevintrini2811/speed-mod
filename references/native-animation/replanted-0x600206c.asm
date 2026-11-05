00724f50: push rbx
00724f52: sub rsp, 0x20
00724f56: cmp byte ptr [rip + 0x47c6a27], 0
00724f5d: mov rbx, rcx
00724f60: jne 0x180724fa5
00724f62: lea rcx, [rip + 0x4575347]
00724f69: call 0x1804feb70
00724f6e: lea rcx, [rip + 0x455b173]
00724f75: call 0x1804feb70
00724f7a: lea rcx, [rip + 0x455a597]
00724f81: call 0x1804feb70
00724f86: lea rcx, [rip + 0x455c313]
00724f8d: call 0x1804feb70
00724f92: lea rcx, [rip + 0x45084df]
00724f99: call 0x1804feb70
00724f9e: mov byte ptr [rip + 0x47c69df], 1
00724fa5: cmp byte ptr [rbx + 0xe0], 0
00724fac: je 0x180725196
00724fb2: mov rdx, qword ptr [rip + 0x45752f7]
00724fb9: mov rcx, rbx
00724fbc: mov qword ptr [rsp + 0x30], rdi
00724fc1: call 0x181356df0
00724fc6: mov rcx, qword ptr [rip + 0x45084ab]
00724fcd: mov rdi, rax
00724fd0: cmp dword ptr [rcx + 0xe4], 0
00724fd7: jne 0x180724fde
00724fd9: call 0x1804feeb0
00724fde: xor r8d, r8d
00724fe1: xor edx, edx
00724fe3: mov rcx, rdi
00724fe6: call 0x183832900
00724feb: test al, al
00724fed: je 0x180725191
00724ff3: cmp dword ptr [rbx + 0xd4], 1
00724ffa: je 0x1807250c0
00725000: cmp dword ptr [rbx + 0xd4], 2
00725007: je 0x180725070
00725009: cmp dword ptr [rbx + 0xd4], 3
00725010: jne 0x18072511b
00725016: test rdi, rdi
00725019: je 0x18072519c
0072501f: mov rax, qword ptr [rdi + 0x20]
00725023: test rax, rax
00725026: je 0x18072519c
0072502c: mov rcx, qword ptr [rax + 0x18]
00725030: test rcx, rcx
00725033: je 0x18072519c
00725039: mov rcx, qword ptr [rcx + 0xa0]
00725040: test rcx, rcx
00725043: je 0x18072519c
00725049: mov r8, qword ptr [rip + 0x455b098]
00725050: mov edx, dword ptr [rbx + 0xd0]
00725056: call 0x182448850
0072505b: test rax, rax
0072505e: je 0x18072511b
00725064: mov rdx, qword ptr [rax + 0xd0]
0072506b: jmp 0x18072510e
00725070: test rdi, rdi
00725073: je 0x18072519c
00725079: mov rax, qword ptr [rdi + 0x20]
0072507d: test rax, rax
00725080: je 0x18072519c
00725086: mov rcx, qword ptr [rax + 0x18]
0072508a: test rcx, rcx
0072508d: je 0x18072519c
00725093: mov rcx, qword ptr [rcx + 0x70]
00725097: test rcx, rcx
0072509a: je 0x18072519c
007250a0: mov r8, qword ptr [rip + 0x455c1f9]
007250a7: mov edx, dword ptr [rbx + 0xd0]
007250ad: call 0x182448850
007250b2: test rax, rax
007250b5: je 0x18072511b
007250b7: mov rdx, qword ptr [rax + 0x1d0]
007250be: jmp 0x18072510e
007250c0: test rdi, rdi
007250c3: je 0x18072519c
007250c9: mov rax, qword ptr [rdi + 0x20]
007250cd: test rax, rax
007250d0: je 0x18072519c
007250d6: mov rcx, qword ptr [rax + 0x18]
007250da: test rcx, rcx
007250dd: je 0x18072519c
007250e3: mov rcx, qword ptr [rcx + 0x78]
007250e7: test rcx, rcx
007250ea: je 0x18072519c
007250f0: mov r8, qword ptr [rip + 0x455a421]
007250f7: mov edx, dword ptr [rbx + 0xd0]
007250fd: call 0x182448850
00725102: test rax, rax
00725105: je 0x18072511b
00725107: mov rdx, qword ptr [rax + 0x140]
0072510e: lea rcx, [rbx + 0x60]
00725112: mov qword ptr [rbx + 0x60], rdx
00725116: call 0x1804fdea0
0072511b: mov rcx, qword ptr [rip + 0x4508356]
00725122: mov rdi, qword ptr [rbx + 0x60]
00725126: cmp dword ptr [rcx + 0xe4], 0
0072512d: jne 0x180725134
0072512f: call 0x1804feeb0
00725134: xor r8d, r8d
00725137: xor edx, edx
00725139: mov rcx, rdi
0072513c: call 0x183832900
00725141: test al, al
00725143: je 0x180725191
00725145: mov rax, qword ptr [rbx + 0x60]
00725149: test rax, rax
0072514c: je 0x18072519c
0072514e: mov rcx, qword ptr [rax + 0x158]
00725155: test rcx, rcx
00725158: je 0x18072519c
0072515a: mov rcx, qword ptr [rcx + 0x28]
0072515e: test rcx, rcx
00725161: je 0x18072519c
00725163: xor edx, edx
00725165: call 0x182f923c0
0072516a: test rax, rax
0072516d: je 0x18072519c
0072516f: mov rdx, qword ptr [rbx + 0xd8]
00725176: xor r8d, r8d
00725179: mov rcx, rax
0072517c: call 0x182f3de30
00725181: lea rcx, [rbx + 0x68]
00725185: mov qword ptr [rbx + 0x68], rax
00725189: mov rdx, rax
0072518c: call 0x1804fdea0
00725191: mov rdi, qword ptr [rsp + 0x30]
00725196: add rsp, 0x20
0072519a: pop rbx
0072519b: ret 
0072519c: call 0x1804fee20
007251a1: int3 
007251a2: int3 
007251a3: int3 
007251a4: int3 
007251a5: int3 
007251a6: int3 
007251a7: int3 
007251a8: int3 
007251a9: int3 
007251aa: int3 
007251ab: int3 
007251ac: int3 
007251ad: int3 
007251ae: int3 
007251af: int3 
