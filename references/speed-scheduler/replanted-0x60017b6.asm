0066de50: mov qword ptr [rsp + 0x10], rsi
0066de55: push rdi
0066de56: sub rsp, 0x30
0066de5a: cmp byte ptr [rip + 0x487d6f7], 0
0066de61: mov rsi, rcx
0066de64: jne 0x18066de85
0066de66: lea rcx, [rip + 0x46135e3]
0066de6d: call 0x1804feb70
0066de72: lea rcx, [rip + 0x46136af]
0066de79: call 0x1804feb70
0066de7e: mov byte ptr [rip + 0x487d6d3], 1
0066de85: mov rax, qword ptr [rsi + 0x70]
0066de89: xor edi, edi
0066de8b: mov qword ptr [rsp + 0x40], rbx
0066de90: mov edx, edi
0066de92: movaps xmmword ptr [rsp + 0x20], xmm6
0066de97: test rax, rax
0066de9a: je 0x18066df16
0066de9c: movss xmm6, dword ptr [rip + 0x35c5f3c]
0066dea4: cmp edx, dword ptr [rax + 0x28]
0066dea7: jge 0x18066df01
0066dea9: mov rcx, qword ptr [rsi + 0x70]
0066dead: test rcx, rcx
0066deb0: je 0x18066df16
0066deb2: mov r8, qword ptr [rip + 0x461366f]
0066deb9: mov edx, edi
0066debb: call 0x182449330
0066dec0: mov rbx, rax
0066dec3: test rax, rax
0066dec6: je 0x18066df16
0066dec8: xor edx, edx
0066deca: mov rcx, rax
0066decd: call 0x1806f3600
0066ded2: test al, al
0066ded4: jne 0x18066def2
0066ded6: cmp byte ptr [rbx + 0x110], al
0066dedc: je 0x18066def2
0066dede: movss xmm0, dword ptr [rbx + 0x78]
0066dee3: comiss xmm0, xmm6
0066dee6: jbe 0x18066def2
0066dee8: xor edx, edx
0066deea: mov rcx, rbx
0066deed: call 0x1806ebf90
0066def2: mov rax, qword ptr [rsi + 0x70]
0066def6: inc edi
0066def8: mov edx, edi
0066defa: test rax, rax
0066defd: je 0x18066df16
0066deff: jmp 0x18066dea4
0066df01: movaps xmm6, xmmword ptr [rsp + 0x20]
0066df06: mov rbx, qword ptr [rsp + 0x40]
0066df0b: mov rsi, qword ptr [rsp + 0x48]
0066df10: add rsp, 0x30
0066df14: pop rdi
0066df15: ret 
0066df16: call 0x1804fee20
0066df1b: int3 
0066df1c: int3 
0066df1d: int3 
0066df1e: int3 
0066df1f: int3 
