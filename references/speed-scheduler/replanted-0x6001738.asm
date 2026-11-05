00673a60: push rbx
00673a62: sub rsp, 0x30
00673a66: cmp byte ptr [rip + 0x4877aa6], 0
00673a6d: mov rbx, rcx
00673a70: jne 0x180673a9d
00673a72: lea rcx, [rip + 0x460b227]
00673a79: call 0x1804feb70
00673a7e: lea rcx, [rip + 0x45cec73]
00673a85: call 0x1804feb70
00673a8a: lea rcx, [rip + 0x45d508f]
00673a91: call 0x1804feb70
00673a96: mov byte ptr [rip + 0x4877a76], 1
00673a9d: xor edx, edx
00673a9f: mov rcx, rbx
00673aa2: call 0x1806734d0
00673aa7: cmp dword ptr [rbx + 0x208], 0xf
00673aae: jne 0x180673b1e
00673ab0: mov rcx, qword ptr [rbx + 0x310]
00673ab7: test rcx, rcx
00673aba: je 0x180673ea0
00673ac0: xor edx, edx
00673ac2: call 0x1807ddd90
00673ac7: mov rcx, qword ptr [rbx + 0xe8]
00673ace: mov qword ptr [rsp + 0x40], rax
00673ad3: test rcx, rcx
00673ad6: je 0x180673ea0
00673adc: mov r8, qword ptr [rcx]
00673adf: movss xmm1, dword ptr [rsp + 0x40]
00673ae5: mov rax, qword ptr [r8 + 0x1e8]
00673aec: mov r8, qword ptr [r8 + 0x1f0]
00673af3: call rax
00673af5: mov rcx, qword ptr [rbx + 0xe8]
00673afc: test rcx, rcx
00673aff: je 0x180673ea0
00673b05: mov r8, qword ptr [rcx]
00673b08: movss xmm1, dword ptr [rsp + 0x44]
00673b0e: mov rax, qword ptr [r8 + 0x208]
00673b15: mov r8, qword ptr [r8 + 0x210]
00673b1c: call rax
00673b1e: mov rax, qword ptr [rbx + 0x310]
00673b25: test rax, rax
00673b28: je 0x180673ea0
00673b2e: cmp dword ptr [rax + 0xe0], 3
00673b35: je 0x180673b56
00673b37: mov rcx, qword ptr [rbx + 0x108]
00673b3e: test rcx, rcx
00673b41: je 0x180673ea0
00673b47: xor edx, edx
00673b49: call 0x1806a5b20
00673b4e: test al, al
00673b50: je 0x180673c11
00673b56: inc dword ptr [rbx + 0x1ec]
00673b5c: xor edx, edx
00673b5e: mov rcx, rbx
00673b61: call 0x1806753e0
00673b66: xor edx, edx
00673b68: mov rcx, rbx
00673b6b: call 0x180675d40
00673b70: xor edx, edx
00673b72: mov rcx, rbx
00673b75: call 0x180673fd0
00673b7a: cmp dword ptr [rbx + 0x260], 0
00673b81: jle 0x180673bb6
00673b83: sub dword ptr [rbx + 0x260], 1
00673b8a: jne 0x180673bb6
00673b8c: mov rcx, qword ptr [rbx + 0x310]
00673b93: test rcx, rcx
00673b96: je 0x180673ea0
00673b9c: mov edx, dword ptr [rbx + 0x268]
00673ba2: xor r8d, r8d
00673ba5: call 0x1807e1000
00673baa: test rax, rax
00673bad: je 0x180673bb6
00673baf: mov byte ptr [rax + 0x92], 0
00673bb6: cmp dword ptr [rbx + 0x150], 0
00673bbd: jle 0x180673bc5
00673bbf: dec dword ptr [rbx + 0x150]
00673bc5: cmp dword ptr [rbx + 0x1ec], 1
00673bcc: jne 0x180673c02
00673bce: mov rcx, qword ptr [rbx + 0x310]
00673bd5: test rcx, rcx
00673bd8: je 0x180673ea0
00673bde: xor edx, edx
00673be0: call 0x1807de670
00673be5: test al, al
00673be7: je 0x180673c17
00673be9: cmp dword ptr [rbx + 0x1b8], 1
00673bf0: jne 0x180673c17
00673bf2: xor r8d, r8d
00673bf5: mov edx, 1
00673bfa: mov rcx, rbx
00673bfd: call 0x1806701e0
00673c02: xor edx, edx
00673c04: mov rcx, rbx
00673c07: add rsp, 0x30
00673c0b: pop rbx
00673c0c: jmp 0x180675020
00673c11: add rsp, 0x30
00673c15: pop rbx
00673c16: ret 
00673c17: mov rcx, qword ptr [rbx + 0x310]
00673c1e: test rcx, rcx
00673c21: je 0x180673ea0
00673c27: xor edx, edx
00673c29: call 0x1807de670
00673c2e: test al, al
00673c30: je 0x180673c02
00673c32: cmp dword ptr [rbx + 0x1b8], 2
00673c39: jne 0x180673c02
00673c3b: mov rax, qword ptr [rbx + 0x310]
00673c42: test rax, rax
00673c45: je 0x180673ea0
00673c4b: mov r8, qword ptr [rax + 0x78]
00673c4f: test r8, r8
00673c52: je 0x180673ea0
00673c58: mov rdx, qword ptr [rip + 0x460b041]
00673c5f: mov ecx, 2
00673c64: call 0x180002290
00673c69: cmp eax, 2
00673c6c: jne 0x180673d59
00673c72: cmp dword ptr [rbx + 0x208], 0x1f
00673c79: je 0x180673d59
00673c7f: cmp byte ptr [rip + 0x4877898], 0
00673c86: jne 0x180673d07
00673c88: lea rcx, [rip + 0x460b961]
00673c8f: call 0x1804feb70
00673c94: lea rcx, [rip + 0x45cc5f5]
00673c9b: call 0x1804feb70
00673ca0: lea rcx, [rip + 0x45ccf01]
00673ca7: call 0x1804feb70
00673cac: lea rcx, [rip + 0x45cc28d]
00673cb3: call 0x1804feb70
00673cb8: lea rcx, [rip + 0x45cf699]
00673cbf: call 0x1804feb70
00673cc4: lea rcx, [rip + 0x45d071d]
00673ccb: call 0x1804feb70
00673cd0: lea rcx, [rip + 0x45cc339]
00673cd7: call 0x1804feb70
00673cdc: lea rcx, [rip + 0x45cbfdd]
00673ce3: call 0x1804feb70
00673ce8: lea rcx, [rip + 0x45cdcc9]
00673cef: call 0x1804feb70
00673cf4: lea rcx, [rip + 0x45cc3ed]
00673cfb: call 0x1804feb70
00673d00: mov byte ptr [rip + 0x4877817], 1
00673d07: mov dword ptr [rbx + 0x208], 0x1f
00673d11: mov rcx, qword ptr [rbx + 0xd0]
00673d18: test rcx, rcx
00673d1b: je 0x180673ea0
00673d21: mov rdx, qword ptr [rip + 0x45d4df8]
00673d28: xor r9d, r9d
00673d2b: mov r8d, 3
00673d31: call 0x1806c5750
00673d36: xor edx, edx
00673d38: mov dword ptr [rbx + 0x230], 0xffffffff
00673d42: mov rcx, rbx
00673d45: mov dword ptr [rbx + 0x1ec], 0xfffffe0d
00673d4f: add rsp, 0x30
00673d53: pop rbx
00673d54: jmp 0x180675020
00673d59: cmp byte ptr [rip + 0x48777be], 0
00673d60: jne 0x180673de1
00673d62: lea rcx, [rip + 0x460b887]
00673d69: call 0x1804feb70
00673d6e: lea rcx, [rip + 0x45cc51b]
00673d75: call 0x1804feb70
00673d7a: lea rcx, [rip + 0x45cce27]
00673d81: call 0x1804feb70
00673d86: lea rcx, [rip + 0x45cc1b3]
00673d8d: call 0x1804feb70
00673d92: lea rcx, [rip + 0x45cf5bf]
00673d99: call 0x1804feb70
00673d9e: lea rcx, [rip + 0x45d0643]
00673da5: call 0x1804feb70
00673daa: lea rcx, [rip + 0x45cc25f]
00673db1: call 0x1804feb70
00673db6: lea rcx, [rip + 0x45cbf03]
00673dbd: call 0x1804feb70
00673dc2: lea rcx, [rip + 0x45cdbef]
00673dc9: call 0x1804feb70
00673dce: lea rcx, [rip + 0x45cc313]
00673dd5: call 0x1804feb70
00673dda: mov byte ptr [rip + 0x487773d], 1
00673de1: mov rax, qword ptr [rbx + 0xe0]
00673de8: test rax, rax
00673deb: je 0x180673ea0
00673df1: mov rax, qword ptr [rax + 0x78]
00673df5: test rax, rax
00673df8: je 0x180673ea0
00673dfe: cmp dword ptr [rax + 0x18], 1
00673e02: jbe 0x180673ea6
00673e08: mov rcx, qword ptr [rax + 0x28]
00673e0c: test rcx, rcx
00673e0f: je 0x180673ea0
00673e15: mov byte ptr [rcx + 0xa4], 1
00673e1c: mov rdx, qword ptr [rbx + 0xe0]
00673e23: test rdx, rdx
00673e26: je 0x180673ea0
00673e28: mov rdx, qword ptr [rdx + 0x78]
00673e2c: test rdx, rdx
00673e2f: je 0x180673ea0
00673e31: cmp dword ptr [rdx + 0x18], 1
00673e35: jbe 0x180673ea6
00673e37: mov rdx, qword ptr [rdx + 0x28]
00673e3b: xor r9d, r9d
00673e3e: xor r8d, r8d
00673e41: mov qword ptr [rsp + 0x20], 0
00673e4a: mov rcx, rbx
00673e4d: call 0x1806727a0
00673e52: mov dword ptr [rbx + 0x208], 5
00673e5c: mov rcx, qword ptr [rbx + 0xd0]
00673e63: test rcx, rcx
00673e66: je 0x180673ea0
00673e68: mov rdx, qword ptr [rip + 0x45ce889]
00673e6f: xor r9d, r9d
00673e72: mov r8d, 3
00673e78: call 0x1806c5750
00673e7d: xor edx, edx
00673e7f: mov dword ptr [rbx + 0x230], 0xffffffff
00673e89: mov rcx, rbx
00673e8c: mov dword ptr [rbx + 0x20c], 0x1f4
00673e96: add rsp, 0x30
00673e9a: pop rbx
00673e9b: jmp 0x180675020
00673ea0: call 0x1804fee20
00673ea5: int3 
00673ea6: call 0x1804fee10
00673eab: int3 
00673eac: int3 
00673ead: int3 
00673eae: int3 
00673eaf: int3 
