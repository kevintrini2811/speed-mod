006c7650: mov qword ptr [rsp + 8], rbx
006c7655: push rdi
006c7656: sub rsp, 0x20
006c765a: cmp byte ptr [rip + 0x4824051], 0
006c7661: mov rbx, rcx
006c7664: jne 0x1806c7679
006c7666: lea rcx, [rip + 0x4565e0b]
006c766d: call 0x1804feb70
006c7672: mov byte ptr [rip + 0x4824039], 1
006c7679: cmp dword ptr [rbx + 0xa8], 4
006c7680: mov byte ptr [rbx + 0x9c], 1
006c7687: je 0x1806c769f
006c7689: cmp dword ptr [rbx + 0xa8], 1
006c7690: je 0x1806c769f
006c7692: mov ecx, dword ptr [rbx + 0xc8]
006c7698: xor edx, edx
006c769a: call 0x18060f880
006c769f: mov rcx, qword ptr [rip + 0x4565dd2]
006c76a6: mov rdi, qword ptr [rbx + 0xe0]
006c76ad: cmp dword ptr [rcx + 0xe4], 0
006c76b4: jne 0x1806c76bb
006c76b6: call 0x1804feeb0
006c76bb: xor r8d, r8d
006c76be: xor edx, edx
006c76c0: mov rcx, rdi
006c76c3: call 0x183832900
006c76c8: test al, al
006c76ca: je 0x1806c76f8
006c76cc: mov rcx, qword ptr [rbx + 0xe0]
006c76d3: test rcx, rcx
006c76d6: je 0x1806c7703
006c76d8: xor edx, edx
006c76da: call 0x1807c9970
006c76df: lea rcx, [rbx + 0xe0]
006c76e6: mov qword ptr [rbx + 0xe0], 0
006c76f1: xor edx, edx
006c76f3: call 0x1804fdea0
006c76f8: mov rbx, qword ptr [rsp + 0x30]
006c76fd: add rsp, 0x20
006c7701: pop rdi
006c7702: ret 
006c7703: call 0x1804fee20
006c7708: int3 
006c7709: int3 
006c770a: int3 
006c770b: int3 
006c770c: int3 
006c770d: int3 
006c770e: int3 
006c770f: int3 
