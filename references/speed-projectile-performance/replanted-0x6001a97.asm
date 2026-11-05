006c6ac0: push rbx
006c6ac2: sub rsp, 0x60
006c6ac6: cmp byte ptr [rip + 0x4824be7], 0
006c6acd: mov rbx, rcx
006c6ad0: jne 0x1806c6af1
006c6ad2: lea rcx, [rip + 0x45644e7]
006c6ad9: call 0x1804feb70
006c6ade: lea rcx, [rip + 0x45ae683]
006c6ae5: call 0x1804feb70
006c6aea: mov byte ptr [rip + 0x4824bc3], 1
006c6af1: cmp dword ptr [rbx + 0xa4], 5
006c6af8: xorps xmm0, xmm0
006c6afb: movups xmmword ptr [rsp + 0x40], xmm0
006c6b00: mov qword ptr [rsp + 0x70], rdi
006c6b05: jne 0x1806c6b14
006c6b07: cmp dword ptr [rbx + 0xac], 0x4b
006c6b0e: jge 0x1806c6e0a
006c6b14: movss xmm0, dword ptr [rbx + 0x7c]
006c6b19: comiss xmm0, dword ptr [rip + 0x356d2c8]
006c6b20: ja 0x1806c6e0a
006c6b26: movd xmm1, dword ptr [rbx + 0x28]
006c6b2b: cvtdq2ps xmm1, xmm1
006c6b2e: addss xmm1, xmm0
006c6b32: xorps xmm0, xmm0
006c6b35: comiss xmm0, xmm1
006c6b38: ja 0x1806c6e0a
006c6b3e: cmp dword ptr [rbx + 0xa4], 9
006c6b45: je 0x1806c6d0b
006c6b4b: cmp dword ptr [rbx + 0xa8], 7
006c6b52: jne 0x1806c6b7e
006c6b54: movss xmm0, dword ptr [rbx + 0x80]
006c6b5c: comiss xmm0, dword ptr [rip + 0x356d539]
006c6b63: ja 0x1806c6e0a
006c6b69: movss xmm0, dword ptr [rip + 0x356d253]
006c6b71: comiss xmm0, dword ptr [rbx + 0x80]
006c6b78: ja 0x1806c6e0a
006c6b7e: cmp dword ptr [rbx + 0xa8], 0
006c6b85: je 0x1806c6b99
006c6b87: cmp dword ptr [rbx + 0xa8], 0xe
006c6b8e: je 0x1806c6b99
006c6b90: cmp dword ptr [rbx + 0xa8], 7
006c6b97: jne 0x1806c6bb6
006c6b99: movss xmm0, dword ptr [rbx + 0x98]
006c6ba1: subss xmm0, dword ptr [rbx + 0x80]
006c6ba9: comiss xmm0, dword ptr [rip + 0x356d4e0]
006c6bb0: ja 0x1806c6e14
006c6bb6: cmp dword ptr [rbx + 0xa4], 8
006c6bbd: je 0x1806c6e14
006c6bc3: cmp dword ptr [rbx + 0xa8], 0xd
006c6bca: jne 0x1806c6cc1
006c6bd0: xor edx, edx
006c6bd2: mov rcx, rbx
006c6bd5: call 0x1806c8240
006c6bda: mov rdi, rax
006c6bdd: test rax, rax
006c6be0: je 0x1806c6cb4
006c6be6: mov rcx, qword ptr [rbx + 0x10]
006c6bea: test rcx, rcx
006c6bed: je 0x1806c6e1f
006c6bf3: mov edx, dword ptr [rbx + 0xa8]
006c6bf9: xor r8d, r8d
006c6bfc: call 0x1807dd970
006c6c01: mov rcx, rax
006c6c04: test rax, rax
006c6c07: je 0x1806c6e1f
006c6c0d: mov eax, dword ptr [rdi + 0x8c]
006c6c13: sub eax, dword ptr [rcx + 0x38]
006c6c16: mov ecx, 0x19
006c6c1b: mov dword ptr [rdi + 0x8c], eax
006c6c21: mov eax, dword ptr [rdi + 0x104]
006c6c27: cmp eax, ecx
006c6c29: cmovg ecx, eax
006c6c2c: mov dword ptr [rdi + 0x104], ecx
006c6c32: mov r8, qword ptr [rbx + 0x10]
006c6c36: test r8, r8
006c6c39: je 0x1806c6e1f
006c6c3f: mov r8, qword ptr [r8 + 0x58]
006c6c43: test r8, r8
006c6c46: je 0x1806c6e1f
006c6c4c: mov rdx, qword ptr [rip + 0x45ae515]
006c6c53: mov ecx, 6
006c6c58: mov r9d, 1
006c6c5e: call 0x180002040
006c6c63: mov rcx, qword ptr [rbx + 0x10]
006c6c67: test rcx, rcx
006c6c6a: je 0x1806c6e1f
006c6c70: movss xmm2, dword ptr [rbx + 0x80]
006c6c78: movss xmm1, dword ptr [rbx + 0x7c]
006c6c7d: mov r9d, dword ptr [rbx + 0x38]
006c6c81: addss xmm2, dword ptr [rip + 0x356d3e7]
006c6c89: subss xmm1, dword ptr [rip + 0x356d10b]
006c6c91: inc r9d
006c6c94: mov qword ptr [rsp + 0x28], 0
006c6c9d: mov dword ptr [rsp + 0x20], 0x25
006c6ca5: call 0x1807d9b50
006c6caa: xor edx, edx
006c6cac: mov rcx, rbx
006c6caf: call 0x1806c7650
006c6cb4: cmp byte ptr [rbx + 0x9c], 0
006c6cbb: jne 0x1806c6e14
006c6cc1: xor edx, edx
006c6cc3: mov rcx, rbx
006c6cc6: call 0x1806c8400
006c6ccb: mov rdi, rax
006c6cce: test rax, rax
006c6cd1: je 0x1806c6e14
006c6cd7: cmp byte ptr [rax + 0x116], 0
006c6cde: je 0x1806c6cf2
006c6ce0: xor edx, edx
006c6ce2: mov rcx, rbx
006c6ce5: call 0x1806c6a60
006c6cea: test al, al
006c6cec: jne 0x1806c6e14
006c6cf2: xor r8d, r8d
006c6cf5: mov rdx, rdi
006c6cf8: mov rcx, rbx
006c6cfb: call 0x1806c7710
006c6d00: mov rdi, qword ptr [rsp + 0x70]
006c6d05: add rsp, 0x60
006c6d09: pop rbx
006c6d0a: ret 
006c6d0b: mov rcx, qword ptr [rbx + 0x18]
006c6d0f: test rcx, rcx
006c6d12: je 0x1806c6e1f
006c6d18: mov edx, dword ptr [rbx + 0xd4]
006c6d1e: xor r8d, r8d
006c6d21: call 0x180677050
006c6d26: mov rdi, rax
006c6d29: test rax, rax
006c6d2c: je 0x1806c6e14
006c6d32: mov edx, dword ptr [rbx + 0xc0]
006c6d38: xor r8d, r8d
006c6d3b: mov rcx, rax
006c6d3e: call 0x1806f12f0
006c6d43: test al, al
006c6d45: je 0x1806c6e14
006c6d4b: xor r8d, r8d
006c6d4e: lea rcx, [rsp + 0x50]
006c6d53: mov rdx, rbx
006c6d56: call 0x1806c86f0
006c6d5b: xor r8d, r8d
006c6d5e: lea rcx, [rsp + 0x50]
006c6d63: mov rdx, rdi
006c6d66: movups xmm0, xmmword ptr [rax]
006c6d69: movups xmmword ptr [rsp + 0x40], xmm0
006c6d6e: call 0x1806f2d70
006c6d73: mov rcx, qword ptr [rip + 0x4564246]
006c6d7a: movups xmm2, xmmword ptr [rax]
006c6d7d: movaps xmm0, xmm2
006c6d80: movss dword ptr [rsp + 0x30], xmm2
006c6d86: movaps xmm1, xmm2
006c6d89: shufps xmm0, xmm2, 0x55
006c6d8d: shufps xmm1, xmm2, 0xaa
006c6d91: shufps xmm2, xmm2, 0xff
006c6d95: movss dword ptr [rsp + 0x3c], xmm2
006c6d9b: movss dword ptr [rsp + 0x34], xmm0
006c6da1: movss dword ptr [rsp + 0x38], xmm1
006c6da7: cmp dword ptr [rcx + 0xe4], 0
006c6dae: jne 0x1806c6db5
006c6db0: call 0x1804feeb0
006c6db5: xor r8d, r8d
006c6db8: lea rdx, [rsp + 0x30]
006c6dbd: lea rcx, [rsp + 0x40]
006c6dc2: call 0x1806cbaa0
006c6dc7: test eax, eax
006c6dc9: js 0x1806c6e14
006c6dcb: movss xmm0, dword ptr [rbx + 0x80]
006c6dd3: movss xmm1, dword ptr [rsp + 0x34]
006c6dd9: comiss xmm0, xmm1
006c6ddc: jbe 0x1806c6e14
006c6dde: movss xmm0, dword ptr [rsp + 0x3c]
006c6de4: addss xmm0, xmm1
006c6de8: comiss xmm0, dword ptr [rbx + 0x80]
006c6def: jbe 0x1806c6e14
006c6df1: xor r8d, r8d
006c6df4: mov rdx, rdi
006c6df7: mov rcx, rbx
006c6dfa: call 0x1806c7710
006c6dff: mov rdi, qword ptr [rsp + 0x70]
006c6e04: add rsp, 0x60
006c6e08: pop rbx
006c6e09: ret 
006c6e0a: xor edx, edx
006c6e0c: mov rcx, rbx
006c6e0f: call 0x1806c7650
006c6e14: mov rdi, qword ptr [rsp + 0x70]
006c6e19: add rsp, 0x60
006c6e1d: pop rbx
006c6e1e: ret 
006c6e1f: call 0x1804fee20
006c6e24: int3 
006c6e25: int3 
006c6e26: int3 
006c6e27: int3 
006c6e28: int3 
006c6e29: int3 
006c6e2a: int3 
006c6e2b: int3 
006c6e2c: int3 
006c6e2d: int3 
006c6e2e: int3 
006c6e2f: int3 
