02f6d1d0: push rbx
02f6d1d2: sub rsp, 0x20
02f6d1d6: cmp qword ptr [rcx + 0x118], 0
02f6d1de: mov rbx, rcx
02f6d1e1: je 0x182f6d1f1
02f6d1e3: mov rcx, qword ptr [rcx + 0x118]
02f6d1ea: xor edx, edx
02f6d1ec: call 0x182f20a30
02f6d1f1: xor edx, edx
02f6d1f3: mov rcx, rbx
02f6d1f6: add rsp, 0x20
02f6d1fa: pop rbx
02f6d1fb: jmp 0x182f6d020
