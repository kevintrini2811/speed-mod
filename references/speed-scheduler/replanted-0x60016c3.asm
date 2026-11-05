0066db60: mov qword ptr [rsp + 8], rbx
0066db65: push rdi
0066db66: sub rsp, 0x20
0066db6a: cmp byte ptr [rip + 0x487d96c], 0
0066db71: mov rdi, rcx
0066db74: jne 0x18066db95
0066db76: lea rcx, [rip + 0x461205b]
0066db7d: call 0x1804feb70
0066db82: lea rcx, [rip + 0x4612127]
0066db89: call 0x1804feb70
0066db8e: mov byte ptr [rip + 0x487d948], 1
0066db95: mov rax, qword ptr [rdi + 0x80]
0066db9c: xor ebx, ebx
0066db9e: mov ecx, ebx
0066dba0: test rax, rax
0066dba3: je 0x18066dbf0
0066dba5: cmp ecx, dword ptr [rax + 0x28]
0066dba8: jge 0x18066dbe5
0066dbaa: mov rcx, qword ptr [rdi + 0x80]
0066dbb1: test rcx, rcx
0066dbb4: je 0x18066dbf0
0066dbb6: mov r8, qword ptr [rip + 0x46120f3]
0066dbbd: mov edx, ebx
0066dbbf: call 0x182449330
0066dbc4: test rax, rax
0066dbc7: je 0x18066dbf0
0066dbc9: xor edx, edx
0066dbcb: mov rcx, rax
0066dbce: call 0x1806c7650
0066dbd3: mov rax, qword ptr [rdi + 0x80]
0066dbda: inc ebx
0066dbdc: mov ecx, ebx
0066dbde: test rax, rax
0066dbe1: je 0x18066dbf0
0066dbe3: jmp 0x18066dba5
0066dbe5: mov rbx, qword ptr [rsp + 0x30]
0066dbea: add rsp, 0x20
0066dbee: pop rdi
0066dbef: ret 
0066dbf0: call 0x1804fee20
0066dbf5: int3 
0066dbf6: int3 
0066dbf7: int3 
0066dbf8: int3 
0066dbf9: int3 
0066dbfa: int3 
0066dbfb: int3 
0066dbfc: int3 
0066dbfd: int3 
0066dbfe: int3 
0066dbff: int3 
