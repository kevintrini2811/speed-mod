007dd010: mov qword ptr [rsp + 8], rbx
007dd015: push rdi
007dd016: sub rsp, 0x20
007dd01a: cmp byte ptr [rip + 0x470ef8d], 0
007dd021: movzx edi, dl
007dd024: mov rbx, rcx
007dd027: jne 0x1807dd03c
007dd029: lea rcx, [rip + 0x44a1c70]
007dd030: call 0x1804feb70
007dd035: mov byte ptr [rip + 0x470ef72], 1
007dd03c: mov r8, qword ptr [rbx + 0x78]
007dd040: test r8, r8
007dd043: je 0x1807dd083
007dd045: mov rdx, qword ptr [rip + 0x44a1c54]
007dd04c: mov ecx, 0x1c
007dd051: movzx r9d, dil
007dd055: call 0x180002200
007dd05a: cmp qword ptr [rbx + 0x100], 0
007dd062: je 0x1807dd078
007dd064: mov rcx, qword ptr [rbx + 0x100]
007dd06b: xor r9d, r9d
007dd06e: xor r8d, r8d
007dd071: xor edx, edx
007dd073: call 0x18066d8c0
007dd078: mov rbx, qword ptr [rsp + 0x30]
007dd07d: add rsp, 0x20
007dd081: pop rdi
007dd082: ret 
007dd083: call 0x1804fee20
007dd088: int3 
007dd089: int3 
007dd08a: int3 
007dd08b: int3 
007dd08c: int3 
007dd08d: int3 
007dd08e: int3 
007dd08f: int3 
