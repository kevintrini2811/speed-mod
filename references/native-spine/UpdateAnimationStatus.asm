02f6d650: push rbx
02f6d652: sub rsp, 0x30
02f6d656: mov rbx, rcx
02f6d659: movaps xmmword ptr [rsp + 0x20], xmm6
02f6d65e: mov rcx, qword ptr [rcx + 0x118]
02f6d665: movaps xmm6, xmm1
02f6d668: test rcx, rcx
02f6d66b: je 0x182f6d6dc
02f6d66d: mulss xmm6, dword ptr [rbx + 0x16c]
02f6d675: xor r8d, r8d
02f6d678: movaps xmm1, xmm6
02f6d67b: call 0x182f21950
02f6d680: mov rcx, qword ptr [rbx + 0xc8]
02f6d687: test rcx, rcx
02f6d68a: je 0x182f6d6dc
02f6d68c: xor r8d, r8d
02f6d68f: movaps xmm1, xmm6
02f6d692: call 0x182f41580
02f6d697: mov rdx, qword ptr [rbx]
02f6d69a: mov rcx, rbx
02f6d69d: mov rax, qword ptr [rdx + 0x1e8]
02f6d6a4: mov rdx, qword ptr [rdx + 0x1f0]
02f6d6ab: call rax
02f6d6ad: cmp dword ptr [rbx + 0x34], 1
02f6d6b1: jne 0x182f6d6d1
02f6d6b3: mov rcx, qword ptr [rbx + 0x118]
02f6d6ba: test rcx, rcx
02f6d6bd: je 0x182f6d6dc
02f6d6bf: mov rdx, qword ptr [rbx + 0xc8]
02f6d6c6: xor r9d, r9d
02f6d6c9: xor r8d, r8d
02f6d6cc: call 0x182f1e3b0
02f6d6d1: movaps xmm6, xmmword ptr [rsp + 0x20]
02f6d6d6: add rsp, 0x30
02f6d6da: pop rbx
02f6d6db: ret 
02f6d6dc: call 0x1804fee20
02f6d6e1: int3 
02f6d6e2: int3 
02f6d6e3: int3 
02f6d6e4: int3 
02f6d6e5: int3 
02f6d6e6: int3 
02f6d6e7: int3 
02f6d6e8: int3 
02f6d6e9: int3 
02f6d6ea: int3 
02f6d6eb: int3 
02f6d6ec: int3 
02f6d6ed: int3 
02f6d6ee: int3 
02f6d6ef: int3 
