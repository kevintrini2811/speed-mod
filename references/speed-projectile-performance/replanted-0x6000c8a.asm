007c9c60: sub rsp, 0x38
007c9c64: xorps xmm4, xmm4
007c9c67: mov r8, rcx
007c9c6a: comiss xmm4, dword ptr [rdx + 0x60]
007c9c6e: jbe 0x1807c9c7a
007c9c70: movss xmm0, dword ptr [rip + 0x346a0f4]
007c9c78: jmp 0x1807c9c82
007c9c7a: movss xmm0, dword ptr [rip + 0x3469fca]
007c9c82: movsd xmm1, qword ptr [rdx + 0x38]
007c9c87: mov rcx, qword ptr [rdx + 0x20]
007c9c8b: movsd qword ptr [rsp + 0x20], xmm1
007c9c91: mulss xmm1, xmm0
007c9c95: test rcx, rcx
007c9c98: je 0x1807c9d09
007c9c9a: movss xmm3, dword ptr [rcx + 0x40]
007c9c9f: addss xmm3, dword ptr [rdx + 0x80]
007c9ca7: movss xmm2, dword ptr [rdx + 0x40]
007c9cac: addss xmm2, xmm4
007c9cb0: addss xmm3, dword ptr [rdx + 0x10c]
007c9cb8: mulss xmm3, dword ptr [rip + 0x346a160]
007c9cc0: addss xmm3, xmm1
007c9cc4: movss xmm1, dword ptr [rcx + 0x44]
007c9cc9: addss xmm1, dword ptr [rdx + 0x84]
007c9cd1: addss xmm1, dword ptr [rdx + 0x110]
007c9cd9: addss xmm1, dword ptr [rcx + 0x68]
007c9cde: xorps xmm1, xmmword ptr [rip + 0x3469fbb]
007c9ce5: mulss xmm1, dword ptr [rip + 0x346a133]
007c9ced: addss xmm1, dword ptr [rsp + 0x24]
007c9cf3: unpcklps xmm3, xmm1
007c9cf6: mov rax, r8
007c9cf9: movsd qword ptr [r8], xmm3
007c9cfe: movss dword ptr [r8 + 8], xmm2
007c9d04: add rsp, 0x38
007c9d08: ret 
007c9d09: call 0x1804fee20
007c9d0e: int3 
007c9d0f: int3 
