00656160: mov qword ptr [rsp + 0x10], rbp
00656165: mov qword ptr [rsp + 0x18], rsi
0065616a: mov qword ptr [rsp + 0x20], rdi
0065616f: push r14
00656171: sub rsp, 0x20
00656175: cmp byte ptr [rip + 0x48953a0], 0
0065617c: mov ebp, r8d
0065617f: mov r14d, edx
00656182: mov rsi, rcx
00656185: jne 0x1806561a6
00656187: lea rcx, [rip + 0x462b2c2]
0065618e: call 0x1804feb70
00656193: lea rcx, [rip + 0x462b38e]
0065619a: call 0x1804feb70
0065619f: mov byte ptr [rip + 0x4895376], 1
006561a6: mov rax, qword ptr [rsi + 0x70]
006561aa: xor edi, edi
006561ac: mov qword ptr [rsp + 0x30], rbx
006561b1: mov edx, edi
006561b3: test rax, rax
006561b6: je 0x18065622e
006561b8: cmp edx, dword ptr [rax + 0x28]
006561bb: jge 0x18065622a
006561bd: mov rcx, qword ptr [rsi + 0x70]
006561c1: test rcx, rcx
006561c4: je 0x18065622e
006561c6: mov r8, qword ptr [rip + 0x462b35b]
006561cd: mov edx, edi
006561cf: call 0x182449330
006561d4: mov rbx, rax
006561d7: test rax, rax
006561da: je 0x18065622e
006561dc: xor edx, edx
006561de: mov rcx, rax
006561e1: call 0x1806f3600
006561e6: test al, al
006561e8: jne 0x1806561fe
006561ea: cmp dword ptr [rbx + 0x70], 0x14
006561ee: jne 0x1806561fe
006561f0: cmp dword ptr [rbx + 0x34], ebp
006561f3: jne 0x1806561fe
006561f5: cmp dword ptr [rbx + 0xd8], r14d
006561fc: je 0x18065620d
006561fe: mov rax, qword ptr [rsi + 0x70]
00656202: inc edi
00656204: mov edx, edi
00656206: test rax, rax
00656209: je 0x18065622e
0065620b: jmp 0x1806561b8
0065620d: mov al, 1
0065620f: mov rbx, qword ptr [rsp + 0x30]
00656214: mov rbp, qword ptr [rsp + 0x38]
00656219: mov rsi, qword ptr [rsp + 0x40]
0065621e: mov rdi, qword ptr [rsp + 0x48]
00656223: add rsp, 0x20
00656227: pop r14
00656229: ret 
0065622a: xor al, al
0065622c: jmp 0x18065620f
0065622e: call 0x1804fee20
00656233: int3 
00656234: int3 
00656235: int3 
00656236: int3 
00656237: int3 
00656238: int3 
00656239: int3 
0065623a: int3 
0065623b: int3 
0065623c: int3 
0065623d: int3 
0065623e: int3 
0065623f: int3 
