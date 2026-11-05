007c8560: mov qword ptr [rsp + 8], rbx
007c8565: mov qword ptr [rsp + 0x10], rbp
007c856a: mov qword ptr [rsp + 0x18], rsi
007c856f: push rdi
007c8570: sub rsp, 0x20
007c8574: cmp byte ptr [rip + 0x47238e5], 0
007c857b: mov ebp, r8d
007c857e: mov rsi, rdx
007c8581: mov rdi, rcx
007c8584: jne 0x1807c85a5
007c8586: lea rcx, [rip + 0x4464eeb]
007c858d: call 0x1804feb70
007c8592: lea rcx, [rip + 0x44a1d97]
007c8599: call 0x1804feb70
007c859e: mov byte ptr [rip + 0x47238bb], 1
007c85a5: xor r9d, r9d
007c85a8: mov r8d, ebp
007c85ab: mov rdx, rsi
007c85ae: mov rcx, rdi
007c85b1: call 0x1807ca6f0
007c85b6: mov edx, dword ptr [rdi + 0x140]
007c85bc: xor r8d, r8d
007c85bf: mov rcx, rsi
007c85c2: call 0x18063bd40
007c85c7: mov rcx, qword ptr [rip + 0x4464eaa]
007c85ce: mov rbx, qword ptr [rdi + 0x158]
007c85d5: cmp dword ptr [rcx + 0xe4], 0
007c85dc: jne 0x1807c85e3
007c85de: call 0x1804feeb0
007c85e3: xor r8d, r8d
007c85e6: xor edx, edx
007c85e8: mov rcx, rbx
007c85eb: call 0x183832900
007c85f0: xor r8d, r8d
007c85f3: movzx edx, al
007c85f6: mov rcx, rsi
007c85f9: movzx ebx, al
007c85fc: call 0x18063bab0
007c8601: test bl, bl
007c8603: je 0x1807c861f
007c8605: mov rcx, qword ptr [rdi + 0x158]
007c860c: test rcx, rcx
007c860f: je 0x1807c8634
007c8611: xor r9d, r9d
007c8614: mov r8d, ebp
007c8617: mov rdx, rsi
007c861a: call 0x1807258d0
007c861f: mov rbx, qword ptr [rsp + 0x30]
007c8624: mov rbp, qword ptr [rsp + 0x38]
007c8629: mov rsi, qword ptr [rsp + 0x40]
007c862e: add rsp, 0x20
007c8632: pop rdi
007c8633: ret 
007c8634: call 0x1804fee20
007c8639: int3 
007c863a: int3 
007c863b: int3 
007c863c: int3 
007c863d: int3 
007c863e: int3 
007c863f: int3 
