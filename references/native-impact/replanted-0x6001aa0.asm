006c8240: mov qword ptr [rsp + 0x10], rsi
006c8245: push rdi
006c8246: sub rsp, 0x60
006c824a: cmp byte ptr [rip + 0x4823468], 0
006c8251: mov rdi, rcx
006c8254: jne 0x1806c8281
006c8256: lea rcx, [rip + 0x4562d63]
006c825d: call 0x1804feb70
006c8262: lea rcx, [rip + 0x45b7387]
006c8269: call 0x1804feb70
006c826e: lea rcx, [rip + 0x45b7453]
006c8275: call 0x1804feb70
006c827a: mov byte ptr [rip + 0x4823438], 1
006c8281: xorps xmm0, xmm0
006c8284: mov qword ptr [rsp + 0x70], rbx
006c8289: xorps xmm1, xmm1
006c828c: lea rcx, [rsp + 0x50]
006c8291: xor r8d, r8d
006c8294: mov rdx, rdi
006c8297: movups xmmword ptr [rsp + 0x40], xmm0
006c829c: movups xmmword ptr [rsp + 0x30], xmm1
006c82a1: call 0x1806c86f0
006c82a6: xor esi, esi
006c82a8: xor edx, edx
006c82aa: movups xmm0, xmmword ptr [rax]
006c82ad: mov rax, qword ptr [rdi + 0x18]
006c82b1: movups xmmword ptr [rsp + 0x40], xmm0
006c82b6: test rax, rax
006c82b9: je 0x1806c83f7
006c82bf: nop 
006c82c0: mov rcx, qword ptr [rax + 0x78]
006c82c4: test rcx, rcx
006c82c7: je 0x1806c83f7
006c82cd: cmp edx, dword ptr [rcx + 0x28]
006c82d0: jge 0x1806c83e5
006c82d6: mov rax, qword ptr [rdi + 0x18]
006c82da: test rax, rax
006c82dd: je 0x1806c83f7
006c82e3: mov rcx, qword ptr [rax + 0x78]
006c82e7: test rcx, rcx
006c82ea: je 0x1806c83f7
006c82f0: mov r8, qword ptr [rip + 0x45b73d1]
006c82f7: mov edx, esi
006c82f9: call 0x182449330
006c82fe: mov rbx, rax
006c8301: test rax, rax
006c8304: je 0x1806c83f7
006c830a: mov eax, dword ptr [rax + 0x34]
006c830d: cmp dword ptr [rdi + 0x34], eax
006c8310: jne 0x1806c8383
006c8312: cmp dword ptr [rdi + 0xa8], 0xd
006c8319: jne 0x1806c833f
006c831b: cmp dword ptr [rbx + 0x70], 8
006c831f: je 0x1806c8383
006c8321: cmp dword ptr [rbx + 0x70], 9
006c8325: je 0x1806c8383
006c8327: cmp dword ptr [rbx + 0x70], 4
006c832b: je 0x1806c8383
006c832d: cmp dword ptr [rbx + 0x70], 0x15
006c8331: je 0x1806c8383
006c8333: cmp dword ptr [rbx + 0x70], 0x2e
006c8337: je 0x1806c8383
006c8339: cmp dword ptr [rbx + 0x70], 0x10
006c833d: je 0x1806c8383
006c833f: xor r8d, r8d
006c8342: lea rcx, [rsp + 0x50]
006c8347: mov rdx, rbx
006c834a: call 0x1806b1a00
006c834f: mov rcx, qword ptr [rip + 0x4562c6a]
006c8356: movups xmm0, xmmword ptr [rax]
006c8359: movups xmmword ptr [rsp + 0x30], xmm0
006c835e: cmp dword ptr [rcx + 0xe4], 0
006c8365: jne 0x1806c836c
006c8367: call 0x1804feeb0
006c836c: xor r8d, r8d
006c836f: lea rdx, [rsp + 0x30]
006c8374: lea rcx, [rsp + 0x40]
006c8379: call 0x1806cbaa0
006c837e: cmp eax, 8
006c8381: jg 0x1806c8395
006c8383: mov rax, qword ptr [rdi + 0x18]
006c8387: inc esi
006c8389: mov edx, esi
006c838b: test rax, rax
006c838e: je 0x1806c83f7
006c8390: jmp 0x1806c82c0
006c8395: cmp dword ptr [rdi + 0xa8], 0xd
006c839c: mov r8d, dword ptr [rbx + 0x34]
006c83a0: mov rcx, qword ptr [rdi + 0x18]
006c83a4: je 0x1806c83d2
006c83a6: test rcx, rcx
006c83a9: je 0x1806c83f7
006c83ab: mov qword ptr [rsp + 0x20], 0
006c83b4: mov r9d, 3
006c83ba: mov edx, dword ptr [rbx + 0x74]
006c83bd: call 0x18065f2a0
006c83c2: mov rbx, qword ptr [rsp + 0x70]
006c83c7: mov rsi, qword ptr [rsp + 0x78]
006c83cc: add rsp, 0x60
006c83d0: pop rdi
006c83d1: ret 
006c83d2: test rcx, rcx
006c83d5: je 0x1806c83f7
006c83d7: mov qword ptr [rsp + 0x20], 0
006c83e0: xor r9d, r9d
006c83e3: jmp 0x1806c83ba
006c83e5: mov rbx, qword ptr [rsp + 0x70]
006c83ea: xor eax, eax
006c83ec: mov rsi, qword ptr [rsp + 0x78]
006c83f1: add rsp, 0x60
006c83f5: pop rdi
006c83f6: ret 
006c83f7: call 0x1804fee20
006c83fc: int3 
006c83fd: int3 
006c83fe: int3 
006c83ff: int3 
