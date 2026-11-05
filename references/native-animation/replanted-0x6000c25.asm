007c8a50: push rbx
007c8a52: sub rsp, 0x20
007c8a56: cmp byte ptr [rip + 0x47233f7], 0
007c8a5d: mov rbx, rcx
007c8a60: jne 0x1807c8a75
007c8a62: lea rcx, [rip + 0x446c5a7]
007c8a69: call 0x1804feb70
007c8a6e: mov byte ptr [rip + 0x47233df], 1
007c8a75: cmp byte ptr [rbx + 0x150], 0
007c8a7c: je 0x1807c8ad7
007c8a7e: mov rax, qword ptr [rbx + 0x20]
007c8a82: test rax, rax
007c8a85: je 0x1807c8add
007c8a87: cmp byte ptr [rax + 0x3c], 0
007c8a8b: jne 0x1807c8ad7
007c8a8d: mov rax, qword ptr [rip + 0x446c57c]
007c8a94: mov rbx, qword ptr [rbx + 0x158]
007c8a9b: cmp dword ptr [rax + 0xe4], 0
007c8aa2: jne 0x1807c8ab3
007c8aa4: mov rcx, rax
007c8aa7: call 0x1804feeb0
007c8aac: mov rax, qword ptr [rip + 0x446c55d]
007c8ab3: test rbx, rbx
007c8ab6: je 0x1807c8add
007c8ab8: mov rax, qword ptr [rax + 0xb8]
007c8abf: xor r8d, r8d
007c8ac2: mov rcx, rbx
007c8ac5: movsd xmm1, qword ptr [rax]
007c8ac9: cvtpd2ps xmm1, xmm1
007c8acd: add rsp, 0x20
007c8ad1: pop rbx
007c8ad2: jmp 0x180726cb0
007c8ad7: add rsp, 0x20
007c8adb: pop rbx
007c8adc: ret 
007c8add: call 0x1804fee20
007c8ae2: int3 
007c8ae3: int3 
007c8ae4: int3 
007c8ae5: int3 
007c8ae6: int3 
007c8ae7: int3 
007c8ae8: int3 
007c8ae9: int3 
007c8aea: int3 
007c8aeb: int3 
007c8aec: int3 
007c8aed: int3 
007c8aee: int3 
007c8aef: int3 
