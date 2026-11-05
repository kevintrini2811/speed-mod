0066f190: push rbp
0066f192: push rsi
0066f193: push rdi
0066f194: sub rsp, 0x30
0066f198: cmp byte ptr [rip + 0x487c3bd], 0
0066f19f: mov ebp, r8d
0066f1a2: mov rdi, rdx
0066f1a5: mov rsi, rcx
0066f1a8: jne 0x18066f2d5
0066f1ae: lea rcx, [rip + 0x45f8813]
0066f1b5: call 0x1804feb70
0066f1ba: lea rcx, [rip + 0x45f88d7]
0066f1c1: call 0x1804feb70
0066f1c6: lea rcx, [rip + 0x45f89a3]
0066f1cd: call 0x1804feb70
0066f1d2: lea rcx, [rip + 0x45f8a67]
0066f1d9: call 0x1804feb70
0066f1de: lea rcx, [rip + 0x45f8b33]
0066f1e5: call 0x1804feb70
0066f1ea: lea rcx, [rip + 0x45f8bf7]
0066f1f1: call 0x1804feb70
0066f1f6: lea rcx, [rip + 0x45f8cc3]
0066f1fd: call 0x1804feb70
0066f202: lea rcx, [rip + 0x460b757]
0066f209: call 0x1804feb70
0066f20e: lea rcx, [rip + 0x4604de3]
0066f215: call 0x1804feb70
0066f21a: lea rcx, [rip + 0x460b22f]
0066f221: call 0x1804feb70
0066f226: lea rcx, [rip + 0x4608de3]
0066f22d: call 0x1804feb70
0066f232: lea rcx, [rip + 0x460b3c7]
0066f239: call 0x1804feb70
0066f23e: lea rcx, [rip + 0x460060b]
0066f245: call 0x1804feb70
0066f24a: lea rcx, [rip + 0x460f06f]
0066f251: call 0x1804feb70
0066f256: lea rcx, [rip + 0x4605f0b]
0066f25d: call 0x1804feb70
0066f262: lea rcx, [rip + 0x45fa7a7]
0066f269: call 0x1804feb70
0066f26e: lea rcx, [rip + 0x4623fd3]
0066f275: call 0x1804feb70
0066f27a: lea rcx, [rip + 0x462409f]
0066f281: call 0x1804feb70
0066f286: lea rcx, [rip + 0x462416b]
0066f28d: call 0x1804feb70
0066f292: lea rcx, [rip + 0x4624237]
0066f299: call 0x1804feb70
0066f29e: lea rcx, [rip + 0x4624303]
0066f2a5: call 0x1804feb70
0066f2aa: lea rcx, [rip + 0x46243cf]
0066f2b1: call 0x1804feb70
0066f2b6: lea rcx, [rip + 0x462449b]
0066f2bd: call 0x1804feb70
0066f2c2: lea rcx, [rip + 0x45bf847]
0066f2c9: call 0x1804feb70
0066f2ce: mov byte ptr [rip + 0x487c287], 1
0066f2d5: xor r9d, r9d
0066f2d8: mov r8d, ebp
0066f2db: mov rdx, rdi
0066f2de: mov rcx, rsi
0066f2e1: call 0x18066e520
0066f2e6: mov edx, dword ptr [rdi + 0x10]
0066f2e9: xor r8d, r8d
0066f2ec: mov rcx, rdi
0066f2ef: call 0x18063bd40
0066f2f4: mov rcx, qword ptr [rsi + 0xd0]
0066f2fb: test rcx, rcx
0066f2fe: je 0x18066f9f8
0066f304: xor r9d, r9d
0066f307: mov r8d, ebp
0066f30a: mov rdx, rdi
0066f30d: call 0x1806c55a0
0066f312: mov edx, dword ptr [rdi + 0x10]
0066f315: xor r8d, r8d
0066f318: mov rcx, rdi
0066f31b: call 0x18063bd40
0066f320: mov rcx, qword ptr [rsi + 0xe0]
0066f327: test rcx, rcx
0066f32a: je 0x18066f9f8
0066f330: mov r9, qword ptr [rcx]
0066f333: mov r8d, ebp
0066f336: mov rdx, rdi
0066f339: mov rax, qword ptr [r9 + 0x228]
0066f340: mov r9, qword ptr [r9 + 0x230]
0066f347: call rax
0066f349: mov edx, dword ptr [rdi + 0x10]
0066f34c: xor r8d, r8d
0066f34f: mov rcx, rdi
0066f352: call 0x18063bd40
0066f357: mov rcx, qword ptr [rsi + 0x110]
0066f35e: test rcx, rcx
0066f361: je 0x18066f9f8
0066f367: xor r9d, r9d
0066f36a: mov r8d, ebp
0066f36d: mov rdx, rdi
0066f370: call 0x18068b270
0066f375: mov edx, dword ptr [rdi + 0x10]
0066f378: xor r8d, r8d
0066f37b: mov rcx, rdi
0066f37e: call 0x18063bd40
0066f383: mov rcx, qword ptr [rsi + 0x310]
0066f38a: test rcx, rcx
0066f38d: je 0x18066f9f8
0066f393: mov rcx, qword ptr [rcx + 0x208]
0066f39a: test rcx, rcx
0066f39d: je 0x18066f9f8
0066f3a3: xor r9d, r9d
0066f3a6: mov r8d, ebp
0066f3a9: mov rdx, rdi
0066f3ac: call 0x1807a5a70
0066f3b1: mov edx, dword ptr [rdi + 0x10]
0066f3b4: xor r8d, r8d
0066f3b7: mov rcx, rdi
0066f3ba: call 0x18063bd40
0066f3bf: mov rcx, qword ptr [rsi + 0xa8]
0066f3c6: test rcx, rcx
0066f3c9: je 0x18066f9f8
0066f3cf: mov r9, qword ptr [rcx]
0066f3d2: mov r8d, ebp
0066f3d5: mov rdx, rdi
0066f3d8: mov rax, qword ptr [r9 + 0x228]
0066f3df: mov r9, qword ptr [r9 + 0x230]
0066f3e6: call rax
0066f3e8: mov edx, dword ptr [rdi + 0x10]
0066f3eb: xor r8d, r8d
0066f3ee: mov rcx, rdi
0066f3f1: call 0x18063bd40
0066f3f6: mov rcx, qword ptr [rsi + 0xc0]
0066f3fd: test rcx, rcx
0066f400: je 0x18066f9f8
0066f406: mov r9, qword ptr [rcx]
0066f409: mov r8d, ebp
0066f40c: mov rdx, rdi
0066f40f: mov rax, qword ptr [r9 + 0x228]
0066f416: mov r9, qword ptr [r9 + 0x230]
0066f41d: call rax
0066f41f: mov edx, dword ptr [rdi + 0x10]
0066f422: xor r8d, r8d
0066f425: mov rcx, rdi
0066f428: call 0x18063bd40
0066f42d: mov r8, qword ptr [rsi + 0x310]
0066f434: test r8, r8
0066f437: je 0x18066f9f8
0066f43d: mov r8, qword ptr [r8 + 0x58]
0066f441: test r8, r8
0066f444: je 0x18066f9f8
0066f44a: mov rdx, qword ptr [rip + 0x4605d17]
0066f451: mov ecx, 2
0066f456: mov qword ptr [rsp + 0x58], r14
0066f45b: mov qword ptr [rsp + 0x60], r15
0066f460: call 0x180002290
0066f465: xor r8d, r8d
0066f468: mov edx, eax
0066f46a: mov rcx, rdi
0066f46d: call 0x18063bd40
0066f472: mov edx, dword ptr [rdi + 0x10]
0066f475: xor r8d, r8d
0066f478: mov rcx, rdi
0066f47b: call 0x18063bd40
0066f480: mov rcx, qword ptr [rip + 0x45bf689]
0066f487: mov r15, qword ptr [rsi + 0xa0]
0066f48e: cmp dword ptr [rcx + 0xe4], 0
0066f495: jne 0x18066f4a3
0066f497: call 0x1804feeb0
0066f49c: mov rcx, qword ptr [rip + 0x45bf66d]
0066f4a3: mov rax, qword ptr [rcx + 0xb8]
0066f4aa: mov qword ptr [rsp + 0x50], rbx
0066f4af: mov r14, qword ptr [rax + 0x50]
0066f4b3: test r14, r14
0066f4b6: jne 0x18066f527
0066f4b8: cmp dword ptr [rcx + 0xe4], r14d
0066f4bf: jne 0x18066f4cd
0066f4c1: call 0x1804feeb0
0066f4c6: mov rcx, qword ptr [rip + 0x45bf643]
0066f4cd: mov rax, qword ptr [rcx + 0xb8]
0066f4d4: mov rcx, qword ptr [rip + 0x460b485]
0066f4db: mov rbx, qword ptr [rax]
0066f4de: call 0x1804fedd0
0066f4e3: mov r8, qword ptr [rip + 0x4623d5e]
0066f4ea: xor r9d, r9d
0066f4ed: mov rdx, rbx
0066f4f0: mov rcx, rax
0066f4f3: mov r14, rax
0066f4f6: call 0x181b83210
0066f4fb: mov rcx, qword ptr [rip + 0x45bf60e]
0066f502: mov rdx, qword ptr [rcx + 0xb8]
0066f509: mov qword ptr [rdx + 0x50], r14
0066f50d: mov rdx, r14
0066f510: mov rcx, qword ptr [rip + 0x45bf5f9]
0066f517: mov rcx, qword ptr [rcx + 0xb8]
0066f51e: add rcx, 0x50
0066f522: call 0x1804fdea0
0066f527: mov rax, qword ptr [rip + 0x45f88ba]
0066f52e: mov r9d, ebp
0066f531: mov qword ptr [rsp + 0x28], rax
0066f536: mov r8, rdi
0066f539: mov rdx, r15
0066f53c: mov qword ptr [rsp + 0x20], r14
0066f541: mov rcx, rsi
0066f544: call 0x181347200
0066f549: mov rcx, qword ptr [rip + 0x45bf5c0]
0066f550: mov r15, qword ptr [rsi + 0x70]
0066f554: cmp dword ptr [rcx + 0xe4], 0
0066f55b: jne 0x18066f569
0066f55d: call 0x1804feeb0
0066f562: mov rcx, qword ptr [rip + 0x45bf5a7]
0066f569: mov rax, qword ptr [rcx + 0xb8]
0066f570: mov r14, qword ptr [rax + 0x58]
0066f574: test r14, r14
0066f577: jne 0x18066f5e8
0066f579: cmp dword ptr [rcx + 0xe4], r14d
0066f580: jne 0x18066f58e
0066f582: call 0x1804feeb0
0066f587: mov rcx, qword ptr [rip + 0x45bf582]
0066f58e: mov rax, qword ptr [rcx + 0xb8]
0066f595: mov rcx, qword ptr [rip + 0x460ed24]
0066f59c: mov rbx, qword ptr [rax]
0066f59f: call 0x1804fedd0
0066f5a4: mov r8, qword ptr [rip + 0x4623d75]
0066f5ab: xor r9d, r9d
0066f5ae: mov rdx, rbx
0066f5b1: mov rcx, rax
0066f5b4: mov r14, rax
0066f5b7: call 0x181b83210
0066f5bc: mov rcx, qword ptr [rip + 0x45bf54d]
0066f5c3: mov rdx, qword ptr [rcx + 0xb8]
0066f5ca: mov qword ptr [rdx + 0x58], r14
0066f5ce: mov rdx, r14
0066f5d1: mov rcx, qword ptr [rip + 0x45bf538]
0066f5d8: mov rcx, qword ptr [rcx + 0xb8]
0066f5df: add rcx, 0x58
0066f5e3: call 0x1804fdea0
0066f5e8: mov rax, qword ptr [rip + 0x45f88d1]
0066f5ef: mov r9d, ebp
0066f5f2: mov qword ptr [rsp + 0x28], rax
0066f5f7: mov r8, rdi
0066f5fa: mov rdx, r15
0066f5fd: mov qword ptr [rsp + 0x20], r14
0066f602: mov rcx, rsi
0066f605: call 0x181347200
0066f60a: mov rcx, qword ptr [rip + 0x45bf4ff]
0066f611: mov r15, qword ptr [rsi + 0x78]
0066f615: cmp dword ptr [rcx + 0xe4], 0
0066f61c: jne 0x18066f62a
0066f61e: call 0x1804feeb0
0066f623: mov rcx, qword ptr [rip + 0x45bf4e6]
0066f62a: mov rax, qword ptr [rcx + 0xb8]
0066f631: mov r14, qword ptr [rax + 0x60]
0066f635: test r14, r14
0066f638: jne 0x18066f6a9
0066f63a: cmp dword ptr [rcx + 0xe4], r14d
0066f641: jne 0x18066f64f
0066f643: call 0x1804feeb0
0066f648: mov rcx, qword ptr [rip + 0x45bf4c1]
0066f64f: mov rax, qword ptr [rcx + 0xb8]
0066f656: mov rcx, qword ptr [rip + 0x460adf3]
0066f65d: mov rbx, qword ptr [rax]
0066f660: call 0x1804fedd0
0066f665: mov r8, qword ptr [rip + 0x4623d8c]
0066f66c: xor r9d, r9d
0066f66f: mov rdx, rbx
0066f672: mov rcx, rax
0066f675: mov r14, rax
0066f678: call 0x181b83210
0066f67d: mov rcx, qword ptr [rip + 0x45bf48c]
0066f684: mov rdx, qword ptr [rcx + 0xb8]
0066f68b: mov qword ptr [rdx + 0x60], r14
0066f68f: mov rdx, r14
0066f692: mov rcx, qword ptr [rip + 0x45bf477]
0066f699: mov rcx, qword ptr [rcx + 0xb8]
0066f6a0: add rcx, 0x60
0066f6a4: call 0x1804fdea0
0066f6a9: mov rax, qword ptr [rip + 0x45f8590]
0066f6b0: mov r9d, ebp
0066f6b3: mov qword ptr [rsp + 0x28], rax
0066f6b8: mov r8, rdi
0066f6bb: mov rdx, r15
0066f6be: mov qword ptr [rsp + 0x20], r14
0066f6c3: mov rcx, rsi
0066f6c6: call 0x181347200
0066f6cb: mov rcx, qword ptr [rip + 0x45bf43e]
0066f6d2: mov r15, qword ptr [rsi + 0x98]
0066f6d9: cmp dword ptr [rcx + 0xe4], 0
0066f6e0: jne 0x18066f6ee
0066f6e2: call 0x1804feeb0
0066f6e7: mov rcx, qword ptr [rip + 0x45bf422]
0066f6ee: mov rax, qword ptr [rcx + 0xb8]
0066f6f5: mov r14, qword ptr [rax + 0x68]
0066f6f9: test r14, r14
0066f6fc: jne 0x18066f76d
0066f6fe: cmp dword ptr [rcx + 0xe4], r14d
0066f705: jne 0x18066f713
0066f707: call 0x1804feeb0
0066f70c: mov rcx, qword ptr [rip + 0x45bf3fd]
0066f713: mov rax, qword ptr [rcx + 0xb8]
0066f71a: mov rcx, qword ptr [rip + 0x46048d7]
0066f721: mov rbx, qword ptr [rax]
0066f724: call 0x1804fedd0
0066f729: mov r8, qword ptr [rip + 0x4623da0]
0066f730: xor r9d, r9d
0066f733: mov rdx, rbx
0066f736: mov rcx, rax
0066f739: mov r14, rax
0066f73c: call 0x181b83210
0066f741: mov rcx, qword ptr [rip + 0x45bf3c8]
0066f748: mov rdx, qword ptr [rcx + 0xb8]
0066f74f: mov qword ptr [rdx + 0x68], r14
0066f753: mov rdx, r14
0066f756: mov rcx, qword ptr [rip + 0x45bf3b3]
0066f75d: mov rcx, qword ptr [rcx + 0xb8]
0066f764: add rcx, 0x68
0066f768: call 0x1804fdea0
0066f76d: mov rax, qword ptr [rip + 0x45f8324]
0066f774: mov r9d, ebp
0066f777: mov qword ptr [rsp + 0x28], rax
0066f77c: mov r8, rdi
0066f77f: mov rdx, r15
0066f782: mov qword ptr [rsp + 0x20], r14
0066f787: mov rcx, rsi
0066f78a: call 0x181347200
0066f78f: mov rcx, qword ptr [rip + 0x45bf37a]
0066f796: mov r15, qword ptr [rsi + 0x88]
0066f79d: cmp dword ptr [rcx + 0xe4], 0
0066f7a4: jne 0x18066f7b2
0066f7a6: call 0x1804feeb0
0066f7ab: mov rcx, qword ptr [rip + 0x45bf35e]
0066f7b2: mov rax, qword ptr [rcx + 0xb8]
0066f7b9: mov r14, qword ptr [rax + 0x70]
0066f7bd: test r14, r14
0066f7c0: jne 0x18066f831
0066f7c2: cmp dword ptr [rcx + 0xe4], r14d
0066f7c9: jne 0x18066f7d7
0066f7cb: call 0x1804feeb0
0066f7d0: mov rcx, qword ptr [rip + 0x45bf339]
0066f7d7: mov rax, qword ptr [rcx + 0xb8]
0066f7de: mov rcx, qword ptr [rip + 0x460006b]
0066f7e5: mov rbx, qword ptr [rax]
0066f7e8: call 0x1804fedd0
0066f7ed: mov r8, qword ptr [rip + 0x4623db4]
0066f7f4: xor r9d, r9d
0066f7f7: mov rdx, rbx
0066f7fa: mov rcx, rax
0066f7fd: mov r14, rax
0066f800: call 0x181b83210
0066f805: mov rcx, qword ptr [rip + 0x45bf304]
0066f80c: mov rdx, qword ptr [rcx + 0xb8]
0066f813: mov qword ptr [rdx + 0x70], r14
0066f817: mov rdx, r14
0066f81a: mov rcx, qword ptr [rip + 0x45bf2ef]
0066f821: mov rcx, qword ptr [rcx + 0xb8]
0066f828: add rcx, 0x70
0066f82c: call 0x1804fdea0
0066f831: mov rax, qword ptr [rip + 0x45f8190]
0066f838: mov r9d, ebp
0066f83b: mov qword ptr [rsp + 0x28], rax
0066f840: mov r8, rdi
0066f843: mov rdx, r15
0066f846: mov qword ptr [rsp + 0x20], r14
0066f84b: mov rcx, rsi
0066f84e: call 0x181347200
0066f853: mov rcx, qword ptr [rip + 0x45bf2b6]
0066f85a: mov r15, qword ptr [rsi + 0x80]
0066f861: cmp dword ptr [rcx + 0xe4], 0
0066f868: jne 0x18066f876
0066f86a: call 0x1804feeb0
0066f86f: mov rcx, qword ptr [rip + 0x45bf29a]
0066f876: mov rax, qword ptr [rcx + 0xb8]
0066f87d: mov r14, qword ptr [rax + 0x78]
0066f881: test r14, r14
0066f884: jne 0x18066f8f5
0066f886: cmp dword ptr [rcx + 0xe4], r14d
0066f88d: jne 0x18066f89b
0066f88f: call 0x1804feeb0
0066f894: mov rcx, qword ptr [rip + 0x45bf275]
0066f89b: mov rax, qword ptr [rcx + 0xb8]
0066f8a2: mov rcx, qword ptr [rip + 0x460ad57]
0066f8a9: mov rbx, qword ptr [rax]
0066f8ac: call 0x1804fedd0
0066f8b1: mov r8, qword ptr [rip + 0x4623dc8]
0066f8b8: xor r9d, r9d
0066f8bb: mov rdx, rbx
0066f8be: mov rcx, rax
0066f8c1: mov r14, rax
0066f8c4: call 0x181b83210
0066f8c9: mov rcx, qword ptr [rip + 0x45bf240]
0066f8d0: mov rdx, qword ptr [rcx + 0xb8]
0066f8d7: mov qword ptr [rdx + 0x78], r14
0066f8db: mov rdx, r14
0066f8de: mov rcx, qword ptr [rip + 0x45bf22b]
0066f8e5: mov rcx, qword ptr [rcx + 0xb8]
0066f8ec: add rcx, 0x78
0066f8f0: call 0x1804fdea0
0066f8f5: mov rax, qword ptr [rip + 0x45f841c]
0066f8fc: mov r9d, ebp
0066f8ff: mov qword ptr [rsp + 0x28], rax
0066f904: mov r8, rdi
0066f907: mov rdx, r15
0066f90a: mov qword ptr [rsp + 0x20], r14
0066f90f: mov rcx, rsi
0066f912: call 0x181347200
0066f917: mov rcx, qword ptr [rip + 0x45bf1f2]
0066f91e: mov r15, qword ptr [rsi + 0x90]
0066f925: cmp dword ptr [rcx + 0xe4], 0
0066f92c: jne 0x18066f93a
0066f92e: call 0x1804feeb0
0066f933: mov rcx, qword ptr [rip + 0x45bf1d6]
0066f93a: mov rax, qword ptr [rcx + 0xb8]
0066f941: mov r14, qword ptr [rax + 0x80]
0066f948: test r14, r14
0066f94b: jne 0x18066f9bf
0066f94d: cmp dword ptr [rcx + 0xe4], r14d
0066f954: jne 0x18066f962
0066f956: call 0x1804feeb0
0066f95b: mov rcx, qword ptr [rip + 0x45bf1ae]
0066f962: mov rax, qword ptr [rcx + 0xb8]
0066f969: mov rcx, qword ptr [rip + 0x46086a0]
0066f970: mov rbx, qword ptr [rax]
0066f973: call 0x1804fedd0
0066f978: mov r8, qword ptr [rip + 0x4623dd9]
0066f97f: xor r9d, r9d
0066f982: mov rdx, rbx
0066f985: mov rcx, rax
0066f988: mov r14, rax
0066f98b: call 0x181b83210
0066f990: mov rcx, qword ptr [rip + 0x45bf179]
0066f997: mov rdx, qword ptr [rcx + 0xb8]
0066f99e: mov qword ptr [rdx + 0x80], r14
0066f9a5: mov rdx, r14
0066f9a8: mov rcx, qword ptr [rip + 0x45bf161]
0066f9af: mov rcx, qword ptr [rcx + 0xb8]
0066f9b6: sub rcx, -0x80
0066f9ba: call 0x1804fdea0
0066f9bf: mov rax, qword ptr [rip + 0x45f81aa]
0066f9c6: mov r9d, ebp
0066f9c9: mov qword ptr [rsp + 0x28], rax
0066f9ce: mov r8, rdi
0066f9d1: mov rdx, r15
0066f9d4: mov qword ptr [rsp + 0x20], r14
0066f9d9: mov rcx, rsi
0066f9dc: call 0x181347200
0066f9e1: mov r15, qword ptr [rsp + 0x60]
0066f9e6: mov r14, qword ptr [rsp + 0x58]
0066f9eb: mov rbx, qword ptr [rsp + 0x50]
0066f9f0: add rsp, 0x30
0066f9f4: pop rdi
0066f9f5: pop rsi
0066f9f6: pop rbp
0066f9f7: ret 
0066f9f8: call 0x1804fee20
0066f9fd: int3 
0066f9fe: int3 
0066f9ff: int3 
