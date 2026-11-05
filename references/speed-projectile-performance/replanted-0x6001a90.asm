006c8e60: mov qword ptr [rsp + 0x18], rbx
006c8e65: push rbp
006c8e66: push rdi
006c8e67: push r15
006c8e69: sub rsp, 0x20
006c8e6d: cmp byte ptr [rip + 0x482283c], 0
006c8e74: mov r15d, r9d
006c8e77: mov edi, r8d
006c8e7a: mov ebp, edx
006c8e7c: mov rbx, rcx
006c8e7f: jne 0x1806c8e94
006c8e81: lea rcx, [rip + 0x4562138]
006c8e88: call 0x1804feb70
006c8e8d: mov byte ptr [rip + 0x482281c], 1
006c8e94: mov rcx, qword ptr [rbx + 0x10]
006c8e98: mov qword ptr [rsp + 0x40], rsi
006c8e9d: mov qword ptr [rsp + 0x48], r14
006c8ea2: test rcx, rcx
006c8ea5: je 0x1806c9265
006c8eab: mov r14d, dword ptr [rsp + 0x68]
006c8eb0: xor r9d, r9d
006c8eb3: mov edx, r14d
006c8eb6: mov r8, rbx
006c8eb9: call 0x1807dc700
006c8ebe: lea rcx, [rbx + 0xe0]
006c8ec5: mov qword ptr [rbx + 0xe0], rax
006c8ecc: mov rdx, rax
006c8ecf: call 0x1804fdea0
006c8ed4: mov rcx, qword ptr [rbx + 0x18]
006c8ed8: test rcx, rcx
006c8edb: je 0x1806c9265
006c8ee1: xor r9d, r9d
006c8ee4: mov r8d, edi
006c8ee7: mov edx, ebp
006c8ee9: call 0x18066bd10
006c8eee: mov rcx, qword ptr [rbx + 0x18]
006c8ef2: movd xmm0, ebp
006c8ef6: movd xmm1, edi
006c8efa: cvtdq2ps xmm0, xmm0
006c8efd: mov dword ptr [rbx + 0xa8], r14d
006c8f04: xor r14d, r14d
006c8f07: movsxd rsi, eax
006c8f0a: mov qword ptr [rbx + 0x84], r14
006c8f11: mov qword ptr [rbx + 0x8c], r14
006c8f18: mov dword ptr [rbx + 0x94], r14d
006c8f1f: movss dword ptr [rbx + 0x7c], xmm0
006c8f24: cvtdq2ps xmm1, xmm1
006c8f27: movss dword ptr [rbx + 0x80], xmm1
006c8f2f: test rcx, rcx
006c8f32: je 0x1806c9265
006c8f38: movsxd rdi, dword ptr [rsp + 0x60]
006c8f3d: xor r9d, r9d
006c8f40: mov r8d, edi
006c8f43: mov edx, esi
006c8f45: call 0x18065f630
006c8f4a: mov rdx, qword ptr [rbx + 0x18]
006c8f4e: mov dword ptr [rbx + 0xa4], r14d
006c8f55: mov dword ptr [rbx + 0x70], r14d
006c8f59: movd xmm0, eax
006c8f5d: mov dword ptr [rbx + 0x74], 1
006c8f64: mov dword ptr [rbx + 0x34], edi
006c8f67: mov dword ptr [rbx + 0xc0], r14d
006c8f6e: mov dword ptr [rbx + 0xc4], 0xffffffff
006c8f78: mov byte ptr [rbx + 0x9c], r14b
006c8f7f: mov qword ptr [rbx + 0xc8], r14
006c8f86: mov qword ptr [rbx + 0xd0], r14
006c8f8d: mov dword ptr [rbx + 0xd8], 0xffffffff
006c8f97: cvtdq2ps xmm0, xmm0
006c8f9a: addss xmm0, dword ptr [rip + 0x356b0ea]
006c8fa2: movss dword ptr [rbx + 0x98], xmm0
006c8faa: test rdx, rdx
006c8fad: je 0x1806c9265
006c8fb3: mov rdx, qword ptr [rdx + 0x120]
006c8fba: test rdx, rdx
006c8fbd: je 0x1806c9265
006c8fc3: mov rax, qword ptr [rdx + 0x10]
006c8fc7: cmp esi, dword ptr [rax]
006c8fc9: jae 0x1806c926b
006c8fcf: mov r8, qword ptr [rax + 0x10]
006c8fd3: cmp edi, r8d
006c8fd6: jae 0x1806c926b
006c8fdc: mov rcx, rsi
006c8fdf: imul rcx, r8
006c8fe3: add rcx, rdi
006c8fe6: cmp dword ptr [rdx + rcx*4 + 0x20], 4
006c8feb: sete al
006c8fee: mov byte ptr [rbx + 0xbc], al
006c8ff4: mov rcx, qword ptr [rbx + 0x18]
006c8ff8: test rcx, rcx
006c8ffb: je 0x1806c9265
006c9001: xor edx, edx
006c9003: call 0x1806719c0
006c9008: test al, al
006c900a: je 0x1806c9038
006c900c: movss xmm0, dword ptr [rip + 0x356b084]
006c9014: movd xmm1, ebp
006c9018: cvtdq2ps xmm1, xmm1
006c901b: comiss xmm0, xmm1
006c901e: jbe 0x1806c9038
006c9020: movss xmm0, dword ptr [rbx + 0x98]
006c9028: subss xmm0, dword ptr [rip + 0x356ad84]
006c9030: movss dword ptr [rbx + 0x98], xmm0
006c9038: cmp dword ptr [rbx + 0xa8], 2
006c903f: mov dword ptr [rbx + 0x38], r15d
006c9043: mov qword ptr [rbx + 0xac], r14
006c904a: mov qword ptr [rbx + 0xb4], r14
006c9051: mov dword ptr [rbx + 0x28], 0x28
006c9058: mov dword ptr [rbx + 0x2c], 0x28
006c905f: mov dword ptr [rbx + 0xa0], r14d
006c9066: je 0x1806c91fb
006c906c: cmp dword ptr [rbx + 0xa8], 0xc
006c9073: je 0x1806c91fb
006c9079: cmp dword ptr [rbx + 0xa8], 3
006c9080: je 0x1806c91ef
006c9086: cmp dword ptr [rbx + 0xa8], 5
006c908d: je 0x1806c91ef
006c9093: cmp dword ptr [rbx + 0xa8], 0xa
006c909a: je 0x1806c91c8
006c90a0: cmp dword ptr [rbx + 0xa8], 1
006c90a7: je 0x1806c923a
006c90ad: cmp dword ptr [rbx + 0xa8], 6
006c90b4: je 0x1806c923a
006c90ba: cmp dword ptr [rbx + 0xa8], 0xf
006c90c1: je 0x1806c923a
006c90c7: cmp dword ptr [rbx + 0xa8], 0xb
006c90ce: je 0x1806c91ae
006c90d4: cmp dword ptr [rbx + 0xa8], 4
006c90db: je 0x1806c923a
006c90e1: cmp dword ptr [rbx + 0xa8], 9
006c90e8: je 0x1806c9170
006c90ee: cmp dword ptr [rbx + 0xa8], 7
006c90f5: jne 0x1806c923a
006c90fb: movss xmm0, dword ptr [rbx + 0x98]
006c9103: addss xmm0, dword ptr [rip + 0x356acad]
006c910b: movss dword ptr [rbx + 0x98], xmm0
006c9113: mov rcx, qword ptr [rip + 0x4561ea6]
006c911a: cmp dword ptr [rcx + 0xe4], r14d
006c9121: jne 0x1806c9128
006c9123: call 0x1804feeb0
006c9128: movss xmm1, dword ptr [rip + 0x356ae60]
006c9130: xor r8d, r8d
006c9133: movss xmm0, dword ptr [rip + 0x356aaf9]
006c913b: call 0x1806cbd40
006c9140: xor edx, edx
006c9142: movss dword ptr [rbx + 0xb8], xmm0
006c914a: mov ecx, 2
006c914f: call 0x1806cbe80
006c9154: test eax, eax
006c9156: jne 0x1806c923a
006c915c: movss xmm0, dword ptr [rbx + 0xb8]
006c9164: xorps xmm0, xmmword ptr [rip + 0x356ab35]
006c916b: jmp 0x1806c9232
006c9170: mov rcx, qword ptr [rip + 0x4561e49]
006c9177: cmp dword ptr [rcx + 0xe4], r14d
006c917e: jne 0x1806c9185
006c9180: call 0x1804feeb0
006c9185: movss xmm0, dword ptr [rip + 0x356ac97]
006c918d: xor edx, edx
006c918f: call 0x1806cbf00
006c9194: movss xmm1, dword ptr [rip + 0x356adf4]
006c919c: movss dword ptr [rbx + 0xb4], xmm0
006c91a4: movss xmm0, dword ptr [rip + 0x356aa88]
006c91ac: jmp 0x1806c922a
006c91ae: mov dword ptr [rbx + 0x28], 0xa2
006c91b5: mov dword ptr [rbx + 0x2c], 0x4e
006c91bc: mov dword ptr [rbx + 0xb4], 0x3fc90fdb
006c91c6: jmp 0x1806c923a
006c91c8: mov rcx, qword ptr [rip + 0x4561df1]
006c91cf: cmp dword ptr [rcx + 0xe4], r14d
006c91d6: jne 0x1806c91dd
006c91d8: call 0x1804feeb0
006c91dd: movss xmm1, dword ptr [rip + 0x356aec7]
006c91e5: movss xmm0, dword ptr [rip + 0x356ac0b]
006c91ed: jmp 0x1806c922a
006c91ef: mov dword ptr [rbx + 0xb4], 0xbfa0d97c
006c91f9: jmp 0x1806c9205
006c91fb: mov dword ptr [rbx + 0xb4], 0xbf61307a
006c9205: mov rcx, qword ptr [rip + 0x4561db4]
006c920c: cmp dword ptr [rcx + 0xe4], r14d
006c9213: jne 0x1806c921a
006c9215: call 0x1804feeb0
006c921a: movss xmm0, dword ptr [rip + 0x356ae8a]
006c9222: movss xmm1, dword ptr [rip + 0x356ae7e]
006c922a: xor r8d, r8d
006c922d: call 0x1806cbd40
006c9232: movss dword ptr [rbx + 0xb8], xmm0
006c923a: mov dword ptr [rbx + 0x78], r14d
006c923e: mov eax, dword ptr [rbx + 0x7c]
006c9241: mov r14, qword ptr [rsp + 0x48]
006c9246: mov rsi, qword ptr [rsp + 0x40]
006c924b: mov dword ptr [rbx + 0x20], eax
006c924e: mov eax, dword ptr [rbx + 0x80]
006c9254: mov dword ptr [rbx + 0x24], eax
006c9257: mov rbx, qword ptr [rsp + 0x50]
006c925c: add rsp, 0x20
006c9260: pop r15
006c9262: pop rdi
006c9263: pop rbp
006c9264: ret 
006c9265: call 0x1804fee20
006c926a: int3 
006c926b: call 0x1804fee10
006c9270: int3 
006c9271: int3 
006c9272: int3 
006c9273: int3 
006c9274: int3 
006c9275: int3 
006c9276: int3 
006c9277: int3 
006c9278: int3 
006c9279: int3 
006c927a: int3 
006c927b: int3 
006c927c: int3 
006c927d: int3 
006c927e: int3 
006c927f: int3 
