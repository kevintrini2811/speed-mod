006c95f0: push rbx
006c95f2: sub rsp, 0x50
006c95f6: cmp byte ptr [rip + 0x48220b9], 0
006c95fd: mov rbx, rcx
006c9600: jne 0x1806c9615
006c9602: lea rcx, [rip + 0x45abb5f]
006c9609: call 0x1804feb70
006c960e: mov byte ptr [rip + 0x48220a1], 1
006c9615: cmp dword ptr [rbx + 0xa8], 0xb
006c961c: mov qword ptr [rsp + 0x60], rsi
006c9621: mov qword ptr [rsp + 0x68], rdi
006c9626: jne 0x1806c96c4
006c962c: movss xmm0, dword ptr [rip + 0x356aa94]
006c9634: comiss xmm0, dword ptr [rbx + 0x84]
006c963b: jbe 0x1806c96c4
006c9641: mov eax, dword ptr [rbx + 0xcc]
006c9647: mov rcx, qword ptr [rbx + 0x18]
006c964b: mov dword ptr [rbx + 0x7c], eax
006c964e: mov eax, dword ptr [rbx + 0xd0]
006c9654: mov dword ptr [rbx + 0x34], eax
006c9657: mov dword ptr [rbx + 0x90], 0x41000000
006c9661: test rcx, rcx
006c9664: je 0x1806c9b39
006c966a: cvttss2si edx, dword ptr [rbx + 0xcc]
006c9672: xor r9d, r9d
006c9675: xor r8d, r8d
006c9678: call 0x18066bd10
006c967d: mov rcx, qword ptr [rbx + 0x18]
006c9681: test rcx, rcx
006c9684: je 0x1806c9b39
006c968a: mov r8d, dword ptr [rbx + 0xd0]
006c9691: xor r9d, r9d
006c9694: mov edx, eax
006c9696: call 0x18065f630
006c969b: mov dword ptr [rbx + 0xb4], 0xbfc90fdb
006c96a5: movd xmm0, eax
006c96a9: cvtdq2ps xmm0, xmm0
006c96ac: movss dword ptr [rbx + 0x80], xmm0
006c96b4: addss xmm0, dword ptr [rip + 0x356a9d0]
006c96bc: movss dword ptr [rbx + 0x98], xmm0
006c96c4: movss xmm0, dword ptr [rbx + 0x94]
006c96cc: addss xmm0, dword ptr [rbx + 0x90]
006c96d4: mov rcx, qword ptr [rbx + 0x10]
006c96d8: movss dword ptr [rbx + 0x90], xmm0
006c96e0: test rcx, rcx
006c96e3: je 0x1806c9b39
006c96e9: xor edx, edx
006c96eb: call 0x1807e3010
006c96f0: cmp eax, 0x2c
006c96f3: jne 0x1806c970d
006c96f5: movss xmm0, dword ptr [rbx + 0x94]
006c96fd: addss xmm0, dword ptr [rbx + 0x90]
006c9705: movss dword ptr [rbx + 0x90], xmm0
006c970d: movss xmm0, dword ptr [rbx + 0x88]
006c9715: addss xmm0, dword ptr [rbx + 0x7c]
006c971a: movss xmm1, dword ptr [rbx + 0x8c]
006c9722: movss xmm2, dword ptr [rbx + 0x90]
006c972a: addss xmm1, dword ptr [rbx + 0x80]
006c9732: addss xmm2, dword ptr [rbx + 0x84]
006c973a: movss dword ptr [rbx + 0x7c], xmm0
006c973f: xorps xmm0, xmm0
006c9742: comiss xmm0, dword ptr [rbx + 0x90]
006c9749: movss dword ptr [rbx + 0x80], xmm1
006c9751: movss dword ptr [rbx + 0x84], xmm2
006c9759: seta al
006c975c: test al, al
006c975e: je 0x1806c977a
006c9760: cmp dword ptr [rbx + 0xa8], 9
006c9767: je 0x1806c98b9
006c976d: cmp dword ptr [rbx + 0xa8], 0xb
006c9774: je 0x1806c98b9
006c977a: cmp dword ptr [rbx + 0xac], 0x14
006c9781: jle 0x1806c983c
006c9787: test al, al
006c9789: jne 0x1806c98b9
006c978f: cmp dword ptr [rbx + 0xa8], 0xc
006c9796: je 0x1806c97f6
006c9798: cmp dword ptr [rbx + 0xa8], 9
006c979f: je 0x1806c97ec
006c97a1: cmp dword ptr [rbx + 0xa8], 3
006c97a8: je 0x1806c97e2
006c97aa: cmp dword ptr [rbx + 0xa8], 5
006c97b1: je 0x1806c97e2
006c97b3: cmp dword ptr [rbx + 0xa8], 2
006c97ba: je 0x1806c97d8
006c97bc: cmp dword ptr [rbx + 0xa8], 0xa
006c97c3: je 0x1806c97d8
006c97c5: cmp dword ptr [rbx + 0xa8], 0xb
006c97cc: jne 0x1806c97fe
006c97ce: movss xmm0, dword ptr [rip + 0x356a6d2]
006c97d6: jmp 0x1806c97fe
006c97d8: movss xmm0, dword ptr [rip + 0x356a4a8]
006c97e0: jmp 0x1806c97fe
006c97e2: movss xmm0, dword ptr [rip + 0x356a8d2]
006c97ea: jmp 0x1806c97fe
006c97ec: movss xmm0, dword ptr [rip + 0x356a474]
006c97f4: jmp 0x1806c97fe
006c97f6: movss xmm0, dword ptr [rip + 0x356a8b6]
006c97fe: mov rcx, qword ptr [rbx + 0x18]
006c9802: test rcx, rcx
006c9805: je 0x1806c9b39
006c980b: mov rcx, qword ptr [rcx + 0x158]
006c9812: test rcx, rcx
006c9815: je 0x1806c9b39
006c981b: movsxd rax, dword ptr [rbx + 0x34]
006c981f: cmp eax, dword ptr [rcx + 0x18]
006c9822: jae 0x1806c9b3f
006c9828: cmp dword ptr [rcx + rax*4 + 0x20], 2
006c982d: jne 0x1806c9837
006c982f: addss xmm0, dword ptr [rip + 0x356a58d]
006c9837: comiss xmm0, xmm2
006c983a: jae 0x1806c98b9
006c983c: xor edi, edi
006c983e: xor esi, esi
006c9840: cmp dword ptr [rbx + 0xa8], 9
006c9847: je 0x1806c9861
006c9849: cmp dword ptr [rbx + 0xa8], 0xd
006c9850: je 0x1806c9861
006c9852: xor edx, edx
006c9854: mov rcx, rbx
006c9857: call 0x1806c8400
006c985c: mov rsi, rax
006c985f: jmp 0x1806c986e
006c9861: xor edx, edx
006c9863: mov rcx, rbx
006c9866: call 0x1806c8240
006c986b: mov rdi, rax
006c986e: cmp dword ptr [rbx + 0xa8], 0xb
006c9875: movss xmm1, dword ptr [rip + 0x356a54f]
006c987d: jne 0x1806c9887
006c987f: movss xmm1, dword ptr [rip + 0x356a6d5]
006c9887: test rdi, rdi
006c988a: jne 0x1806c9997
006c9890: test rsi, rsi
006c9893: jne 0x1806c98a2
006c9895: movss xmm0, dword ptr [rbx + 0x84]
006c989d: comiss xmm0, xmm1
006c98a0: jbe 0x1806c98b9
006c98a2: cmp dword ptr [rbx + 0xa8], 0xb
006c98a9: je 0x1806c98c9
006c98ab: xor r8d, r8d
006c98ae: mov rdx, rsi
006c98b1: mov rcx, rbx
006c98b4: call 0x1806c7710
006c98b9: mov rdi, qword ptr [rsp + 0x68]
006c98be: mov rsi, qword ptr [rsp + 0x60]
006c98c3: add rsp, 0x50
006c98c7: pop rbx
006c98c8: ret 
006c98c9: mov rcx, qword ptr [rbx + 0x18]
006c98cd: test rcx, rcx
006c98d0: je 0x1806c9b39
006c98d6: xor edx, edx
006c98d8: call 0x18065e2b0
006c98dd: mov rcx, qword ptr [rbx + 0x18]
006c98e1: mov edi, eax
006c98e3: test rcx, rcx
006c98e6: je 0x1806c9b39
006c98ec: mov edx, dword ptr [rbx + 0xc0]
006c98f2: cvttss2si r9d, dword ptr [rbx + 0x80]
006c98fb: mov qword ptr [rsp + 0x40], 0
006c9904: mov dword ptr [rsp + 0x38], edx
006c9908: mov edx, dword ptr [rbx + 0x34]
006c990b: mov byte ptr [rsp + 0x30], 1
006c9910: mov dword ptr [rsp + 0x28], 1
006c9918: mov dword ptr [rsp + 0x20], 0x73
006c9920: cvttss2si r8d, dword ptr [rbx + 0x7c]
006c9926: add r9d, 0x28
006c992a: add r8d, 0x50
006c992e: call 0x180664c70
006c9933: mov rcx, qword ptr [rbx + 0x18]
006c9937: test rcx, rcx
006c993a: je 0x1806c9b39
006c9940: xor edx, edx
006c9942: call 0x18065e2b0
006c9947: mov rdx, qword ptr [rbx + 0x18]
006c994b: test rdx, rdx
006c994e: je 0x1806c9b39
006c9954: mov ecx, dword ptr [rdx + 0x2c4]
006c995a: sub ecx, eax
006c995c: add ecx, edi
006c995e: mov dword ptr [rdx + 0x2c4], ecx
006c9964: mov rax, qword ptr [rbx + 0x18]
006c9968: test rax, rax
006c996b: je 0x1806c9b39
006c9971: cmp dword ptr [rax + 0x2c4], 2
006c9978: jl 0x1806c998d
006c997a: xor r9d, r9d
006c997d: mov r8b, 1
006c9980: mov edx, 0xd
006c9985: mov rcx, rax
006c9988: call 0x18065f560
006c998d: xor r8d, r8d
006c9990: xor edx, edx
006c9992: jmp 0x1806c98b1
006c9997: mov rcx, qword ptr [rbx + 0x18]
006c999b: test rcx, rcx
006c999e: je 0x1806c9b39
006c99a4: mov r8d, dword ptr [rdi + 0x34]
006c99a8: xor r9d, r9d
006c99ab: mov edx, dword ptr [rdi + 0x74]
006c99ae: call 0x18065d760
006c99b3: mov rsi, rax
006c99b6: test rax, rax
006c99b9: jne 0x1806c9a55
006c99bf: mov rcx, qword ptr [rbx + 0x10]
006c99c3: test rcx, rcx
006c99c6: je 0x1806c9b39
006c99cc: mov edx, dword ptr [rbx + 0xa8]
006c99d2: xor r8d, r8d
006c99d5: call 0x1807dd970
006c99da: mov rcx, rax
006c99dd: test rax, rax
006c99e0: je 0x1806c9b39
006c99e6: mov eax, dword ptr [rdi + 0x8c]
006c99ec: sub eax, dword ptr [rcx + 0x38]
006c99ef: mov ecx, 0x19
006c99f4: mov dword ptr [rdi + 0x8c], eax
006c99fa: mov eax, dword ptr [rdi + 0x104]
006c9a00: cmp eax, ecx
006c9a02: cmovg ecx, eax
006c9a05: mov dword ptr [rdi + 0x104], ecx
006c9a0b: mov r8, qword ptr [rbx + 0x10]
006c9a0f: test r8, r8
006c9a12: je 0x1806c9b39
006c9a18: mov r8, qword ptr [r8 + 0x58]
006c9a1c: test r8, r8
006c9a1f: je 0x1806c9b39
006c9a25: mov rdx, qword ptr [rip + 0x45ab73c]
006c9a2c: mov ecx, 6
006c9a31: mov r9d, 1
006c9a37: call 0x180002040
006c9a3c: xor edx, edx
006c9a3e: mov rcx, rbx
006c9a41: mov rdi, qword ptr [rsp + 0x68]
006c9a46: mov rsi, qword ptr [rsp + 0x60]
006c9a4b: add rsp, 0x50
006c9a4f: pop rbx
006c9a50: jmp 0x1806c7650
006c9a55: cmp dword ptr [rax + 0x88], 0x29
006c9a5c: je 0x1806c9ab5
006c9a5e: cmp dword ptr [rax + 0x88], 0x28
006c9a65: je 0x1806c98b9
006c9a6b: mov rax, qword ptr [rbx + 0x10]
006c9a6f: test rax, rax
006c9a72: je 0x1806c9b39
006c9a78: mov r8, qword ptr [rax + 0x58]
006c9a7c: test r8, r8
006c9a7f: je 0x1806c9b39
006c9a85: mov rdx, qword ptr [rip + 0x45ab6dc]
006c9a8c: mov ecx, 6
006c9a91: mov r9d, 0x49
006c9a97: call 0x180002040
006c9a9c: xor edx, edx
006c9a9e: mov rcx, rsi
006c9aa1: mov rdi, qword ptr [rsp + 0x68]
006c9aa6: mov rsi, qword ptr [rsp + 0x60]
006c9aab: add rsp, 0x50
006c9aaf: pop rbx
006c9ab0: jmp 0x1806ad780
006c9ab5: mov rax, qword ptr [rbx + 0x10]
006c9ab9: test rax, rax
006c9abc: je 0x1806c9b39
006c9abe: mov r8, qword ptr [rax + 0x58]
006c9ac2: test r8, r8
006c9ac5: je 0x1806c9b39
006c9ac7: mov rdx, qword ptr [rip + 0x45ab69a]
006c9ace: mov ecx, 6
006c9ad3: mov r9d, 1
006c9ad9: call 0x180002040
006c9ade: mov rcx, qword ptr [rbx + 0x10]
006c9ae2: test rcx, rcx
006c9ae5: je 0x1806c9b39
006c9ae7: movss xmm2, dword ptr [rbx + 0x80]
006c9aef: mov r9d, 0x61a81
006c9af5: movss xmm1, dword ptr [rbx + 0x7c]
006c9afa: addss xmm2, dword ptr [rip + 0x356a2ba]
006c9b02: addss xmm1, dword ptr [rip + 0x356a2b2]
006c9b0a: mov qword ptr [rsp + 0x28], 0
006c9b13: mov dword ptr [rsp + 0x20], 0x37
006c9b1b: call 0x1807d9b50
006c9b20: xor edx, edx
006c9b22: mov rcx, rbx
006c9b25: mov rdi, qword ptr [rsp + 0x68]
006c9b2a: mov rsi, qword ptr [rsp + 0x60]
006c9b2f: add rsp, 0x50
006c9b33: pop rbx
006c9b34: jmp 0x1806c7650
006c9b39: call 0x1804fee20
006c9b3e: int3 
006c9b3f: call 0x1804fee10
006c9b44: int3 
006c9b45: int3 
006c9b46: int3 
006c9b47: int3 
006c9b48: int3 
006c9b49: int3 
006c9b4a: int3 
006c9b4b: int3 
006c9b4c: int3 
006c9b4d: int3 
006c9b4e: int3 
006c9b4f: int3 
