007e14a0: mov qword ptr [rsp + 0x10], rbx
007e14a5: push rdi
007e14a6: sub rsp, 0x20
007e14aa: cmp byte ptr [rip + 0x470ab04], 0
007e14b1: mov ebx, edx
007e14b3: mov rdi, rcx
007e14b6: jne 0x1807e14cb
007e14b8: lea rcx, [rip + 0x449ec29]
007e14bf: call 0x1804feb70
007e14c4: mov byte ptr [rip + 0x470aaea], 1
007e14cb: xor ecx, ecx
007e14cd: call 0x18063cd70
007e14d2: cmp ebx, eax
007e14d4: je 0x1807e1582
007e14da: cmp qword ptr [rdi + 0x100], 0
007e14e2: je 0x1807e1582
007e14e8: mov rax, qword ptr [rdi + 0x100]
007e14ef: xor edx, edx
007e14f1: mov qword ptr [rsp + 0x30], rsi
007e14f6: mov ecx, ebx
007e14f8: mov rsi, qword ptr [rax + 0xa0]
007e14ff: call 0x1806be7d0
007e1504: test rsi, rsi
007e1507: je 0x1807e158d
007e150d: mov r8, qword ptr [rip + 0x449ebd4]
007e1514: mov edx, eax
007e1516: mov rcx, rsi
007e1519: call 0x182448850
007e151e: cmp byte ptr [rip + 0x470aa91], 0
007e1525: mov rbx, rax
007e1528: jne 0x1807e153d
007e152a: lea rcx, [rip + 0x449ea07]
007e1531: call 0x1804feb70
007e1536: mov byte ptr [rip + 0x470aa79], 1
007e153d: test rbx, rbx
007e1540: je 0x1807e157d
007e1542: cmp qword ptr [rdi + 0x100], 0
007e154a: je 0x1807e157d
007e154c: xor edx, edx
007e154e: mov rcx, rbx
007e1551: call 0x1806ca910
007e1556: mov rcx, qword ptr [rdi + 0x100]
007e155d: test rcx, rcx
007e1560: je 0x1807e158d
007e1562: mov rcx, qword ptr [rcx + 0xa0]
007e1569: test rcx, rcx
007e156c: je 0x1807e158d
007e156e: mov r8, qword ptr [rip + 0x449e9c3]
007e1575: mov rdx, rbx
007e1578: call 0x182448460
007e157d: mov rsi, qword ptr [rsp + 0x30]
007e1582: mov rbx, qword ptr [rsp + 0x38]
007e1587: add rsp, 0x20
007e158b: pop rdi
007e158c: ret 
007e158d: call 0x1804fee20
007e1592: int3 
007e1593: int3 
007e1594: int3 
007e1595: int3 
007e1596: int3 
007e1597: int3 
007e1598: int3 
007e1599: int3 
007e159a: int3 
007e159b: int3 
007e159c: int3 
007e159d: int3 
007e159e: int3 
007e159f: int3 
