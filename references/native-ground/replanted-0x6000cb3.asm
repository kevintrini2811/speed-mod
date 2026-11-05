007cb580: mov qword ptr [rsp + 8], rbx
007cb585: push rdi
007cb586: sub rsp, 0x20
007cb58a: cmp byte ptr [rip + 0x47208ed], 0
007cb591: mov rdi, rcx
007cb594: jne 0x1807cb5b5
007cb596: lea rcx, [rip + 0x44d968b]
007cb59d: call 0x1804feb70
007cb5a2: lea rcx, [rip + 0x446832f]
007cb5a9: call 0x1804feb70
007cb5ae: mov byte ptr [rip + 0x47208c9], 1
007cb5b5: mov dword ptr [rdi + 0xa0], 0x3f800000
007cb5bf: mov dword ptr [rdi + 0xa4], 0x3f800000
007cb5c9: mov dword ptr [rdi + 0xa8], 0x80000000
007cb5d3: mov rcx, qword ptr [rip + 0x44682fe]
007cb5da: call 0x1804fedd0
007cb5df: mov rdx, qword ptr [rip + 0x44d9642]
007cb5e6: mov rcx, rax
007cb5e9: mov rbx, rax
007cb5ec: call 0x181812a50
007cb5f1: lea rcx, [rdi + 0xb0]
007cb5f8: mov qword ptr [rdi + 0xb0], rbx
007cb5ff: mov rdx, rbx
007cb602: call 0x1804fdea0
007cb607: xor edx, edx
007cb609: mov rcx, rdi
007cb60c: mov rbx, qword ptr [rsp + 0x30]
007cb611: add rsp, 0x20
007cb615: pop rdi
007cb616: jmp 0x1838148f0
007cb61b: int3 
007cb61c: int3 
007cb61d: int3 
007cb61e: int3 
007cb61f: int3 
