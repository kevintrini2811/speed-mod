02f6d740: push rbx
02f6d742: sub rsp, 0x30
02f6d746: cmp byte ptr [rcx + 0xc0], 0
02f6d74d: mov rbx, rcx
02f6d750: movaps xmmword ptr [rsp + 0x20], xmm6
02f6d755: movaps xmm6, xmm1
02f6d758: je 0x182f6d80d
02f6d75e: cmp qword ptr [rcx + 0x118], 0
02f6d766: je 0x182f6d80d
02f6d76c: cmp dword ptr [rcx + 0x34], 1
02f6d770: mov byte ptr [rcx + 0x120], 1
02f6d777: jl 0x182f6d80d
02f6d77d: mov rcx, qword ptr [rcx + 0x118]
02f6d784: test rcx, rcx
02f6d787: je 0x182f6d818
02f6d78d: mulss xmm6, dword ptr [rbx + 0x16c]
02f6d795: xor r8d, r8d
02f6d798: movaps xmm1, xmm6
02f6d79b: call 0x182f21950
02f6d7a0: mov rcx, qword ptr [rbx + 0xc8]
02f6d7a7: test rcx, rcx
02f6d7aa: je 0x182f6d818
02f6d7ac: xor r8d, r8d
02f6d7af: movaps xmm1, xmm6
02f6d7b2: call 0x182f41580
02f6d7b7: mov rdx, qword ptr [rbx]
02f6d7ba: mov rcx, rbx
02f6d7bd: mov rax, qword ptr [rdx + 0x1e8]
02f6d7c4: mov rdx, qword ptr [rdx + 0x1f0]
02f6d7cb: call rax
02f6d7cd: cmp dword ptr [rbx + 0x34], 1
02f6d7d1: jne 0x182f6d7f7
02f6d7d3: mov rcx, qword ptr [rbx + 0x118]
02f6d7da: test rcx, rcx
02f6d7dd: je 0x182f6d818
02f6d7df: mov rdx, qword ptr [rbx + 0xc8]
02f6d7e6: xor r9d, r9d
02f6d7e9: xor r8d, r8d
02f6d7ec: call 0x182f1e3b0
02f6d7f1: cmp dword ptr [rbx + 0x34], 1
02f6d7f5: je 0x182f6d80d
02f6d7f7: mov rdx, qword ptr [rbx]
02f6d7fa: mov rcx, rbx
02f6d7fd: mov rax, qword ptr [rdx + 0x338]
02f6d804: mov rdx, qword ptr [rdx + 0x340]
02f6d80b: call rax
02f6d80d: movaps xmm6, xmmword ptr [rsp + 0x20]
02f6d812: add rsp, 0x30
02f6d816: pop rbx
02f6d817: ret 
02f6d818: call 0x1804fee20
02f6d81d: int3 
02f6d81e: int3 
02f6d81f: int3 
