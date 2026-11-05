007c6060: mov qword ptr [rsp + 8], rbx
007c6065: mov qword ptr [rsp + 0x10], rsi
007c606a: push rdi
007c606b: sub rsp, 0x20
007c606f: xor r9d, r9d
007c6072: mov esi, r8d
007c6075: mov rdi, rdx
007c6078: mov rbx, rcx
007c607b: call 0x1807c9600
007c6080: xor r8d, r8d
007c6083: mov byte ptr [rsp + 0x40], 0
007c6088: lea rdx, [rsp + 0x40]
007c608d: mov rcx, rdi
007c6090: call 0x18063b2a0
007c6095: cmp byte ptr [rsp + 0x40], 0
007c609a: je 0x1807c60c1
007c609c: mov rcx, qword ptr [rbx + 0x140]
007c60a3: test rcx, rcx
007c60a6: je 0x1807c60d1
007c60a8: mov r9, qword ptr [rcx]
007c60ab: mov r8d, esi
007c60ae: mov rdx, rdi
007c60b1: mov rax, qword ptr [r9 + 0x298]
007c60b8: mov r9, qword ptr [r9 + 0x2a0]
007c60bf: call rax
007c60c1: mov rbx, qword ptr [rsp + 0x30]
007c60c6: mov rsi, qword ptr [rsp + 0x38]
007c60cb: add rsp, 0x20
007c60cf: pop rdi
007c60d0: ret 
007c60d1: call 0x1804fee20
007c60d6: int3 
007c60d7: int3 
007c60d8: int3 
007c60d9: int3 
007c60da: int3 
007c60db: int3 
007c60dc: int3 
007c60dd: int3 
007c60de: int3 
007c60df: int3 
