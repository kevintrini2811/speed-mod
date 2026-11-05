007dce30: mov qword ptr [rsp + 0x10], rbx
007dce35: mov qword ptr [rsp + 0x18], rsi
007dce3a: push rdi
007dce3b: sub rsp, 0x30
007dce3f: cmp byte ptr [rip + 0x470f18f], 0
007dce46: mov rsi, r8
007dce49: mov rbx, rdx
007dce4c: mov rdi, rcx
007dce4f: jne 0x1807dce70
007dce51: lea rcx, [rip + 0x44548b0]
007dce58: call 0x1804feb70
007dce5d: lea rcx, [rip + 0x44d4efc]
007dce64: call 0x1804feb70
007dce69: mov byte ptr [rip + 0x470f165], 1
007dce70: mov rcx, qword ptr [rdi + 0xb8]
007dce77: mov qword ptr [rsp + 0x40], 0
007dce80: test rcx, rcx
007dce83: je 0x1807dcee5
007dce85: mov rax, qword ptr [rip + 0x445487c]
007dce8c: lea r9, [rsp + 0x40]
007dce91: xor r8d, r8d
007dce94: mov qword ptr [rsp + 0x20], rax
007dce99: mov rdx, rsi
007dce9c: call 0x180ebda00
007dcea1: test al, al
007dcea3: je 0x1807dced5
007dcea5: mov rax, qword ptr [rsp + 0x40]
007dceaa: test rax, rax
007dcead: je 0x1807dcee5
007dceaf: movss xmm0, dword ptr [rax + 0x18]
007dceb4: movss xmm1, dword ptr [rax + 0x1c]
007dceb9: test rbx, rbx
007dcebc: je 0x1807dcee5
007dcebe: movss dword ptr [rbx + 0x94], xmm0
007dcec6: movss dword ptr [rbx + 0x98], xmm1
007dcece: mov byte ptr [rbx + 0xa6], 1
007dced5: mov rbx, qword ptr [rsp + 0x48]
007dceda: mov rsi, qword ptr [rsp + 0x50]
007dcedf: add rsp, 0x30
007dcee3: pop rdi
007dcee4: ret 
007dcee5: call 0x1804fee20
007dceea: int3 
007dceeb: int3 
007dceec: int3 
007dceed: int3 
007dceee: int3 
007dceef: int3 
