007256d0: mov qword ptr [rsp + 0x10], rbx
007256d5: mov qword ptr [rsp + 0x18], rsi
007256da: mov qword ptr [rsp + 0x20], rdi
007256df: push r12
007256e1: push r14
007256e3: push r15
007256e5: sub rsp, 0x20
007256e9: cmp byte ptr [rip + 0x47c6290], 0
007256f0: mov r12, rdx
007256f3: mov rsi, rcx
007256f6: jne 0x18072573b
007256f8: lea rcx, [rip + 0x4507d79]
007256ff: call 0x1804feb70
00725704: lea rcx, [rip + 0x4516465]
0072570b: call 0x1804feb70
00725710: lea rcx, [rip + 0x4523c69]
00725717: call 0x1804feb70
0072571c: lea rcx, [rip + 0x4545515]
00725723: call 0x1804feb70
00725728: lea rcx, [rip + 0x458c171]
0072572f: call 0x1804feb70
00725734: mov byte ptr [rip + 0x47c6245], 1
0072573b: mov rax, qword ptr [rip + 0x47e0dee]
00725742: xor r14b, r14b
00725745: mov rcx, qword ptr [rax + 0xb8]
0072574c: mov r15, qword ptr [rcx]
0072574f: xor ecx, ecx
00725751: call 0x18063cd70
00725756: xor edi, edi
00725758: mov ebx, eax
0072575a: cmp qword ptr [rsi + 0x68], rdi
0072575e: je 0x180725806
00725764: mov rcx, qword ptr [rip + 0x4507d0d]
0072576b: mov qword ptr [rsp + 0x40], rbp
00725770: mov rbp, qword ptr [rsi + 0x60]
00725774: cmp dword ptr [rcx + 0xe4], edi
0072577a: jne 0x180725781
0072577c: call 0x1804feeb0
00725781: xor r8d, r8d
00725784: xor edx, edx
00725786: mov rcx, rbp
00725789: call 0x183832900
0072578e: mov rbp, qword ptr [rsp + 0x40]
00725793: test al, al
00725795: je 0x180725806
00725797: mov rax, qword ptr [rsi + 0x68]
0072579b: mov r14b, 1
0072579e: test rax, rax
007257a1: je 0x1807258c0
007257a7: mov rcx, qword ptr [rax + 0x10]
007257ab: test rcx, rcx
007257ae: je 0x1807258c0
007257b4: mov rdx, qword ptr [rsi + 0x60]
007257b8: mov r15, qword ptr [rcx + 0x18]
007257bc: test rdx, rdx
007257bf: je 0x1807258c0
007257c5: mov rdx, qword ptr [rdx + 0x20]
007257c9: test rdx, rdx
007257cc: je 0x1807258c0
007257d2: mov r8, qword ptr [rip + 0x4516397]
007257d9: mov r9, qword ptr [rdx]
007257dc: mov ebx, dword ptr [rdx + 0x6c]
007257df: movzx eax, byte ptr [r8 + 0x130]
007257e7: cmp byte ptr [r9 + 0x130], al
007257ee: jb 0x180725856
007257f0: movzx ecx, al
007257f3: mov rax, qword ptr [r9 + 0xc8]
007257fa: cmp qword ptr [rax + rcx*8 - 8], r8
007257ff: jne 0x180725856
00725801: mov edi, 1
00725806: xor r8d, r8d
00725809: movzx edx, r14b
0072580d: mov rcx, r12
00725810: call 0x18063bab0
00725815: xor r8d, r8d
00725818: mov rdx, r15
0072581b: mov rcx, r12
0072581e: call 0x18063bf60
00725823: xor r8d, r8d
00725826: mov edx, edi
00725828: mov rcx, r12
0072582b: call 0x18063bd40
00725830: xor r8d, r8d
00725833: mov edx, ebx
00725835: mov rcx, r12
00725838: mov rbx, qword ptr [rsp + 0x48]
0072583d: mov rsi, qword ptr [rsp + 0x50]
00725842: mov rdi, qword ptr [rsp + 0x58]
00725847: add rsp, 0x20
0072584b: pop r15
0072584d: pop r14
0072584f: pop r12
00725851: jmp 0x18063bd40
00725856: mov r8, qword ptr [rip + 0x458c043]
0072585d: movzx eax, byte ptr [r8 + 0x130]
00725865: cmp byte ptr [r9 + 0x130], al
0072586c: jb 0x180725886
0072586e: movzx ecx, al
00725871: mov rax, qword ptr [r9 + 0xc8]
00725878: cmp qword ptr [rax + rcx*8 - 8], r8
0072587d: jne 0x180725886
0072587f: mov edi, 2
00725884: jmp 0x180725806
00725886: mov rdx, qword ptr [rip + 0x4523af3]
0072588d: movzx eax, byte ptr [rdx + 0x130]
00725894: cmp byte ptr [r9 + 0x130], al
0072589b: jb 0x180725806
007258a1: movzx ecx, al
007258a4: mov rax, qword ptr [r9 + 0xc8]
007258ab: cmp qword ptr [rax + rcx*8 - 8], rdx
007258b0: jne 0x180725806
007258b6: mov edi, 3
007258bb: jmp 0x180725806
007258c0: call 0x1804fee20
007258c5: int3 
007258c6: int3 
007258c7: int3 
007258c8: int3 
007258c9: int3 
007258ca: int3 
007258cb: int3 
007258cc: int3 
007258cd: int3 
007258ce: int3 
007258cf: int3 
