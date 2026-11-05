007cb4b0: push rdi
007cb4b2: sub rsp, 0x20
007cb4b6: cmp qword ptr [rcx + 0x20], 0
007cb4bb: mov rdi, rcx
007cb4be: je 0x1807cb56d
007cb4c4: mov rdx, qword ptr [rcx]
007cb4c7: mov rax, qword ptr [rdx + 0x218]
007cb4ce: mov rdx, qword ptr [rdx + 0x220]
007cb4d5: call rax
007cb4d7: cmp byte ptr [rip + 0x4720987], 0
007cb4de: jne 0x1807cb4ff
007cb4e0: lea rcx, [rip + 0x44cba99]
007cb4e7: call 0x1804feb70
007cb4ec: lea rcx, [rip + 0x44cbc3d]
007cb4f3: call 0x1804feb70
007cb4f8: mov byte ptr [rip + 0x4720966], 1
007cb4ff: movzx eax, word ptr [rdi + 0xe0]
007cb506: test al, al
007cb508: je 0x1807cb510
007cb50a: shr ax, 8
007cb50e: jmp 0x1807cb514
007cb510: movzx eax, byte ptr [rdi + 0x28]
007cb514: test al, al
007cb516: jne 0x1807cb54c
007cb518: mov qword ptr [rsp + 0x30], rbx
007cb51d: mov rdx, qword ptr [rdi]
007cb520: mov rcx, rdi
007cb523: mov ebx, dword ptr [rdi + 0xa8]
007cb529: mov rax, qword ptr [rdx + 0x228]
007cb530: mov rdx, qword ptr [rdx + 0x230]
007cb537: call rax
007cb539: cmp ebx, eax
007cb53b: mov rbx, qword ptr [rsp + 0x30]
007cb540: je 0x1807cb54c
007cb542: xor edx, edx
007cb544: mov rcx, rdi
007cb547: call 0x1807cb3b0
007cb54c: cmp byte ptr [rdi + 0xe2], 0
007cb553: je 0x1807cb56d
007cb555: mov rcx, qword ptr [rdi + 0xb8]
007cb55c: test rcx, rcx
007cb55f: je 0x1807cb573
007cb561: xor edx, edx
007cb563: add rsp, 0x20
007cb567: pop rdi
007cb568: jmp 0x1807ccee0
007cb56d: add rsp, 0x20
007cb571: pop rdi
007cb572: ret 
007cb573: call 0x1804fee20
007cb578: int3 
007cb579: int3 
007cb57a: int3 
007cb57b: int3 
007cb57c: int3 
007cb57d: int3 
007cb57e: int3 
007cb57f: int3 
