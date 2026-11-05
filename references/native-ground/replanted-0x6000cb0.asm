007ca6f0: mov rax, rsp
007ca6f3: mov qword ptr [rax + 8], rbx
007ca6f7: mov qword ptr [rax + 0x10], rbp
007ca6fb: mov qword ptr [rax + 0x18], rsi
007ca6ff: mov qword ptr [rax + 0x20], rdi
007ca703: push r13
007ca705: push r14
007ca707: push r15
007ca709: sub rsp, 0x70
007ca70d: cmp byte ptr [rip + 0x4721768], 0
007ca714: mov r15d, r8d
007ca717: movaps xmmword ptr [rax - 0x28], xmm6
007ca71b: mov rdi, rdx
007ca71e: movaps xmmword ptr [rax - 0x38], xmm7
007ca722: mov rsi, rcx
007ca725: movaps xmmword ptr [rax - 0x48], xmm8
007ca72a: movaps xmmword ptr [rax - 0x58], xmm9
007ca72f: jne 0x1807ca750
007ca731: lea rcx, [rip + 0x4462d40]
007ca738: call 0x1804feb70
007ca73d: lea rcx, [rip + 0x449fa44]
007ca744: call 0x1804feb70
007ca749: mov byte ptr [rip + 0x472172c], 1
007ca750: movss xmm1, dword ptr [rsi + 0x54]
007ca755: xor r8d, r8d
007ca758: mov rcx, rdi
007ca75b: call 0x18060dae0
007ca760: cmp byte ptr [rip + 0x472179c], 0
007ca767: movups xmm6, xmmword ptr [rsi + 0x60]
007ca76b: movups xmm7, xmmword ptr [rsi + 0x70]
007ca76f: movups xmm8, xmmword ptr [rsi + 0x80]
007ca777: movups xmm9, xmmword ptr [rsi + 0x90]
007ca77f: jne 0x1807ca7a0
007ca781: lea rcx, [rip + 0x44c9c70]
007ca788: call 0x1804feb70
007ca78d: lea rcx, [rip + 0x448d26c]
007ca794: call 0x1804feb70
007ca799: mov byte ptr [rip + 0x4721763], 1
007ca7a0: movsxd rbp, dword ptr [rdi + 0x10]
007ca7a4: mov r13, qword ptr [rip + 0x448d255]
007ca7ab: cmp ebp, dword ptr [rdi + 8]
007ca7ae: jbe 0x1807ca7b7
007ca7b0: xor ecx, ecx
007ca7b2: call 0x182c05bf0
007ca7b7: mov rcx, qword ptr [r13 + 0x20]
007ca7bb: mov r14, rbp
007ca7be: add r14, qword ptr [rdi]
007ca7c1: mov ebx, dword ptr [rdi + 8]
007ca7c4: mov qword ptr [rsp + 0x28], 0
007ca7cd: test byte ptr [rcx + 0x135], 1
007ca7d4: jne 0x1807ca7db
007ca7d6: call 0x1804fc300
007ca7db: sub ebx, ebp
007ca7dd: mov qword ptr [rsp + 0x20], r14
007ca7e2: cmp byte ptr [rip + 0x472158c], 0
007ca7e9: mov dword ptr [rsp + 0x28], ebx
007ca7ed: jne 0x1807ca80e
007ca7ef: lea rcx, [rip + 0x44c853a]
007ca7f6: call 0x1804feb70
007ca7fb: lea rcx, [rip + 0x448d56e]
007ca802: call 0x1804feb70
007ca807: mov byte ptr [rip + 0x4721567], 1
007ca80e: cmp ebx, 0x40
007ca811: jae 0x1807ca81f
007ca813: xor edx, edx
007ca815: mov ecx, 0x1c
007ca81a: call 0x182c05bc0
007ca81f: movaps xmm0, xmmword ptr [rsp + 0x20]
007ca824: lea rcx, [rsp + 0x20]
007ca829: mov rdx, qword ptr [rip + 0x44c8500]
007ca830: movdqa xmmword ptr [rsp + 0x20], xmm0
007ca836: call 0x180721da0
007ca83b: xor r8d, r8d
007ca83e: mov rcx, rdi
007ca841: movups xmmword ptr [rax], xmm6
007ca844: movups xmmword ptr [rax + 0x10], xmm7
007ca848: movups xmmword ptr [rax + 0x20], xmm8
007ca84d: movups xmmword ptr [rax + 0x30], xmm9
007ca852: add dword ptr [rdi + 0x10], 0x40
007ca856: movss xmm1, dword ptr [rsi + 0xa4]
007ca85e: movss xmm0, dword ptr [rsi + 0xa0]
007ca866: unpcklps xmm0, xmm1
007ca869: movq rdx, xmm0
007ca86e: call 0x1806e4b60
007ca873: mov edx, dword ptr [rsi + 0xa8]
007ca879: xor r8d, r8d
007ca87c: mov rcx, rdi
007ca87f: call 0x18063bd40
007ca884: movsd xmm0, qword ptr [rsi + 0x38]
007ca889: lea rdx, [rsp + 0x20]
007ca88e: mov eax, dword ptr [rsi + 0x40]
007ca891: xor r8d, r8d
007ca894: mov rcx, rdi
007ca897: movsd qword ptr [rsp + 0x20], xmm0
007ca89d: mov dword ptr [rsp + 0x28], eax
007ca8a1: call 0x18060dbf0
007ca8a6: movsd xmm0, qword ptr [rsi + 0x44]
007ca8ab: lea rdx, [rsp + 0x20]
007ca8b0: mov eax, dword ptr [rsi + 0x4c]
007ca8b3: xor r8d, r8d
007ca8b6: mov rcx, rdi
007ca8b9: movsd qword ptr [rsp + 0x20], xmm0
007ca8bf: mov dword ptr [rsp + 0x28], eax
007ca8c3: call 0x18060dbf0
007ca8c8: movss xmm1, dword ptr [rsi + 0x110]
007ca8d0: xor r8d, r8d
007ca8d3: movss xmm0, dword ptr [rsi + 0x10c]
007ca8db: mov rcx, rdi
007ca8de: unpcklps xmm0, xmm1
007ca8e1: movq rdx, xmm0
007ca8e6: call 0x1806e4b60
007ca8eb: movss xmm1, dword ptr [rsi + 0x118]
007ca8f3: xor r8d, r8d
007ca8f6: mov rcx, rdi
007ca8f9: call 0x18060dae0
007ca8fe: mov edx, dword ptr [rsi + 0x120]
007ca904: xor r8d, r8d
007ca907: mov rcx, rdi
007ca90a: call 0x18063bd40
007ca90f: mov rcx, qword ptr [rip + 0x4462b62]
007ca916: mov rbx, qword ptr [rsi + 0xb8]
007ca91d: cmp dword ptr [rcx + 0xe4], 0
007ca924: jne 0x1807ca92b
007ca926: call 0x1804feeb0
007ca92b: xor r8d, r8d
007ca92e: xor edx, edx
007ca930: mov rcx, rbx
007ca933: call 0x183832900
007ca938: movzx edx, byte ptr [rsi + 0xe2]
007ca93f: xor r8d, r8d
007ca942: mov rcx, rdi
007ca945: movzx ebx, al
007ca948: call 0x18063bab0
007ca94d: test bl, bl
007ca94f: je 0x1807ca9ef
007ca955: mov rbx, qword ptr [rsi + 0xb8]
007ca95c: test rbx, rbx
007ca95f: je 0x1807cab32
007ca965: cmp byte ptr [rip + 0x472151b], 0
007ca96c: jne 0x1807ca981
007ca96e: lea rcx, [rip + 0x449fc33]
007ca975: call 0x1804feb70
007ca97a: mov byte ptr [rip + 0x4721506], 1
007ca981: movsd xmm0, qword ptr [rbx + 0x40]
007ca986: lea rdx, [rsp + 0x20]
007ca98b: mov eax, dword ptr [rbx + 0x48]
007ca98e: xor r8d, r8d
007ca991: mov rcx, rdi
007ca994: movsd qword ptr [rsp + 0x20], xmm0
007ca99a: mov dword ptr [rsp + 0x28], eax
007ca99e: call 0x18060dbf0
007ca9a3: movsd xmm0, qword ptr [rbx + 0x4c]
007ca9a8: lea rdx, [rsp + 0x20]
007ca9ad: mov eax, dword ptr [rbx + 0x54]
007ca9b0: xor r8d, r8d
007ca9b3: mov rcx, rdi
007ca9b6: movsd qword ptr [rsp + 0x20], xmm0
007ca9bc: mov dword ptr [rsp + 0x28], eax
007ca9c0: call 0x18060dbf0
007ca9c5: mov edx, dword ptr [rbx + 0x58]
007ca9c8: xor r8d, r8d
007ca9cb: mov rcx, rdi
007ca9ce: call 0x18063bd40
007ca9d3: mov edx, dword ptr [rbx + 0x5c]
007ca9d6: xor r8d, r8d
007ca9d9: mov rcx, rdi
007ca9dc: call 0x18063bd40
007ca9e1: mov edx, dword ptr [rbx + 0x60]
007ca9e4: xor r8d, r8d
007ca9e7: mov rcx, rdi
007ca9ea: call 0x18063bd40
007ca9ef: mov rcx, qword ptr [rip + 0x4462a82]
007ca9f6: mov rbx, qword ptr [rsi + 0xc0]
007ca9fd: cmp dword ptr [rcx + 0xe4], 0
007caa04: jne 0x1807caa0b
007caa06: call 0x1804feeb0
007caa0b: xor r8d, r8d
007caa0e: xor edx, edx
007caa10: mov rcx, rbx
007caa13: call 0x183832900
007caa18: xor r8d, r8d
007caa1b: movzx edx, al
007caa1e: mov rcx, rdi
007caa21: movzx ebx, al
007caa24: call 0x18063bab0
007caa29: test bl, bl
007caa2b: je 0x1807caa4b
007caa2d: mov rcx, qword ptr [rsi + 0xc0]
007caa34: test rcx, rcx
007caa37: je 0x1807cab32
007caa3d: xor r9d, r9d
007caa40: mov r8d, r15d
007caa43: mov rdx, rdi
007caa46: call 0x1807537b0
007caa4b: mov rcx, qword ptr [rip + 0x4462a26]
007caa52: mov rbx, qword ptr [rsi + 0xc8]
007caa59: cmp dword ptr [rcx + 0xe4], 0
007caa60: jne 0x1807caa67
007caa62: call 0x1804feeb0
007caa67: xor r8d, r8d
007caa6a: xor edx, edx
007caa6c: mov rcx, rbx
007caa6f: call 0x183832900
007caa74: xor r8d, r8d
007caa77: movzx edx, al
007caa7a: mov rcx, rdi
007caa7d: movzx ebx, al
007caa80: call 0x18063bab0
007caa85: test bl, bl
007caa87: je 0x1807caaa7
007caa89: mov rcx, qword ptr [rsi + 0xc8]
007caa90: test rcx, rcx
007caa93: je 0x1807cab32
007caa99: xor r9d, r9d
007caa9c: mov r8d, r15d
007caa9f: mov rdx, rdi
007caaa2: call 0x1807b52c0
007caaa7: mov rcx, qword ptr [rip + 0x44629ca]
007caaae: mov rbx, qword ptr [rsi + 0xd0]
007caab5: cmp dword ptr [rcx + 0xe4], 0
007caabc: jne 0x1807caac3
007caabe: call 0x1804feeb0
007caac3: xor r8d, r8d
007caac6: xor edx, edx
007caac8: mov rcx, rbx
007caacb: call 0x183832900
007caad0: xor r8d, r8d
007caad3: movzx edx, al
007caad6: mov rcx, rdi
007caad9: movzx ebx, al
007caadc: call 0x18063bab0
007caae1: test bl, bl
007caae3: je 0x1807caaff
007caae5: mov rcx, qword ptr [rsi + 0xd0]
007caaec: test rcx, rcx
007caaef: je 0x1807cab32
007caaf1: xor r9d, r9d
007caaf4: mov r8d, r15d
007caaf7: mov rdx, rdi
007caafa: call 0x1807b6c40
007caaff: movaps xmm6, xmmword ptr [rsp + 0x60]
007cab04: lea r11, [rsp + 0x70]
007cab09: mov rbx, qword ptr [r11 + 0x20]
007cab0d: mov rbp, qword ptr [r11 + 0x28]
007cab11: mov rsi, qword ptr [r11 + 0x30]
007cab15: mov rdi, qword ptr [r11 + 0x38]
007cab19: movaps xmm8, xmmword ptr [r11 - 0x30]
007cab1e: movaps xmm9, xmmword ptr [r11 - 0x40]
007cab23: movaps xmm7, xmmword ptr [rsp + 0x50]
007cab28: mov rsp, r11
007cab2b: pop r15
007cab2d: pop r14
007cab2f: pop r13
007cab31: ret 
007cab32: call 0x1804fee20
007cab37: int3 
007cab38: int3 
007cab39: int3 
007cab3a: int3 
007cab3b: int3 
007cab3c: int3 
007cab3d: int3 
007cab3e: int3 
007cab3f: int3 
