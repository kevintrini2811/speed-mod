007e15a0: mov qword ptr [rsp + 8], rbx
007e15a5: push rdi
007e15a6: sub rsp, 0x20
007e15aa: cmp byte ptr [rip + 0x470aa05], 0
007e15b1: mov rbx, rdx
007e15b4: mov rdi, rcx
007e15b7: jne 0x1807e15cc
007e15b9: lea rcx, [rip + 0x449e978]
007e15c0: call 0x1804feb70
007e15c5: mov byte ptr [rip + 0x470a9ea], 1
007e15cc: test rbx, rbx
007e15cf: je 0x1807e160c
007e15d1: cmp qword ptr [rdi + 0x100], 0
007e15d9: je 0x1807e160c
007e15db: xor edx, edx
007e15dd: mov rcx, rbx
007e15e0: call 0x1806ca910
007e15e5: mov rcx, qword ptr [rdi + 0x100]
007e15ec: test rcx, rcx
007e15ef: je 0x1807e1617
007e15f1: mov rcx, qword ptr [rcx + 0xa0]
007e15f8: test rcx, rcx
007e15fb: je 0x1807e1617
007e15fd: mov r8, qword ptr [rip + 0x449e934]
007e1604: mov rdx, rbx
007e1607: call 0x182448460
007e160c: mov rbx, qword ptr [rsp + 0x30]
007e1611: add rsp, 0x20
007e1615: pop rdi
007e1616: ret 
007e1617: call 0x1804fee20
007e161c: int3 
007e161d: int3 
007e161e: int3 
007e161f: int3 
