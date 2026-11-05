007c7560: mov qword ptr [rsp + 8], rbx
007c7565: mov qword ptr [rsp + 0x10], rsi
007c756a: push rdi
007c756b: sub rsp, 0x20
007c756f: cmp byte ptr [rip + 0x47248eb], 0
007c7576: mov esi, r8d
007c7579: mov rbx, rdx
007c757c: mov rdi, rcx
007c757f: jne 0x1807c7594
007c7581: lea rcx, [rip + 0x44a0020]
007c7588: call 0x1804feb70
007c758d: mov byte ptr [rip + 0x47248cd], 1
007c7594: xor r9d, r9d
007c7597: mov r8d, esi
007c759a: mov rdx, rbx
007c759d: mov rcx, rdi
007c75a0: call 0x1807c9600
007c75a5: xor r8d, r8d
007c75a8: mov dword ptr [rsp + 0x40], 0
007c75b0: lea rdx, [rsp + 0x40]
007c75b5: mov rcx, rbx
007c75b8: call 0x18063b5f0
007c75bd: mov eax, dword ptr [rsp + 0x40]
007c75c1: lea rdx, [rsp + 0x40]
007c75c6: xor r8d, r8d
007c75c9: mov dword ptr [rdi + 0x140], eax
007c75cf: mov rcx, rbx
007c75d2: mov byte ptr [rsp + 0x40], 0
007c75d7: call 0x18063b2a0
007c75dc: cmp byte ptr [rsp + 0x40], 0
007c75e1: je 0x1807c75fd
007c75e3: mov rcx, qword ptr [rdi + 0x158]
007c75ea: test rcx, rcx
007c75ed: je 0x1807c760d
007c75ef: xor r9d, r9d
007c75f2: mov r8d, esi
007c75f5: mov rdx, rbx
007c75f8: call 0x180722ab0
007c75fd: mov rbx, qword ptr [rsp + 0x30]
007c7602: mov rsi, qword ptr [rsp + 0x38]
007c7607: add rsp, 0x20
007c760b: pop rdi
007c760c: ret 
007c760d: call 0x1804fee20
007c7612: int3 
007c7613: int3 
007c7614: int3 
007c7615: int3 
007c7616: int3 
007c7617: int3 
007c7618: int3 
007c7619: int3 
007c761a: int3 
007c761b: int3 
007c761c: int3 
007c761d: int3 
007c761e: int3 
007c761f: int3 
