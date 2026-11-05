007d9540: push rsi
007d9542: sub rsp, 0x30
007d9546: cmp byte ptr [rip + 0x4712aa3], 0
007d954d: mov rsi, rcx
007d9550: jne 0x1807d9565
007d9552: lea rcx, [rip + 0x44b21af]
007d9559: call 0x1804feb70
007d955e: mov byte ptr [rip + 0x4712a8b], 1
007d9565: xor edx, edx
007d9567: mov rcx, rsi
007d956a: call 0x18060f880
007d956f: mov rcx, qword ptr [rip + 0x44b2192]
007d9576: cmp dword ptr [rcx + 0xe4], 0
007d957d: jne 0x1807d9584
007d957f: call 0x1804feeb0
007d9584: xor ecx, ecx
007d9586: call 0x180625d40
007d958b: test al, al
007d958d: jne 0x1807d96b8
007d9593: mov qword ptr [rsp + 0x48], rdi
007d9598: xor edx, edx
007d959a: mov rcx, rsi
007d959d: call 0x1807e1fd0
007d95a2: cmp byte ptr [rip + 0x4712a43], 0
007d95a9: jne 0x1807d95d6
007d95ab: lea rcx, [rip + 0x44a71f6]
007d95b2: call 0x1804feb70
007d95b7: lea rcx, [rip + 0x44a7472]
007d95be: call 0x1804feb70
007d95c3: lea rcx, [rip + 0x44a753e]
007d95ca: call 0x1804feb70
007d95cf: mov byte ptr [rip + 0x4712a16], 1
007d95d6: mov rdi, qword ptr [rsi + 0x230]
007d95dd: mov qword ptr [rsp + 0x40], rbx
007d95e2: movaps xmmword ptr [rsp + 0x20], xmm6
007d95e7: test rdi, rdi
007d95ea: je 0x1807d96be
007d95f0: mov edi, dword ptr [rdi + 0x28]
007d95f3: sub edi, 1
007d95f6: js 0x1807d9685
007d95fc: nop dword ptr [rax]
007d9600: mov rcx, qword ptr [rsi + 0x230]
007d9607: test rcx, rcx
007d960a: je 0x1807d96be
007d9610: mov r8, qword ptr [rip + 0x44a74f1]
007d9617: mov edx, edi
007d9619: call 0x182449330
007d961e: mov rbx, rax
007d9621: test rax, rax
007d9624: je 0x1807d96be
007d962a: movss xmm6, dword ptr [rax + 0x94]
007d9632: xor ecx, ecx
007d9634: call 0x183840160
007d9639: addss xmm6, xmm0
007d963d: movss dword ptr [rbx + 0x94], xmm6
007d9645: comiss xmm6, dword ptr [rbx + 0x98]
007d964c: jb 0x1807d9658
007d964e: xor edx, edx
007d9650: mov rcx, rbx
007d9653: call 0x1806d7cd0
007d9658: cmp byte ptr [rbx + 0x90], 0
007d965f: je 0x1807d967c
007d9661: mov rcx, qword ptr [rsi + 0x230]
007d9668: test rcx, rcx
007d966b: je 0x1807d96be
007d966d: mov r8, qword ptr [rip + 0x44a7134]
007d9674: mov rdx, rbx
007d9677: call 0x182448460
007d967c: sub edi, 1
007d967f: jns 0x1807d9600
007d9685: cmp qword ptr [rsi + 0x100], 0
007d968d: je 0x1807d96a9
007d968f: mov rcx, qword ptr [rsi + 0x100]
007d9696: mov rdx, qword ptr [rcx]
007d9699: mov rax, qword ptr [rdx + 0x1a8]
007d96a0: mov rdx, qword ptr [rdx + 0x1b0]
007d96a7: call rax
007d96a9: mov rbx, qword ptr [rsp + 0x40]
007d96ae: movaps xmm6, xmmword ptr [rsp + 0x20]
007d96b3: mov rdi, qword ptr [rsp + 0x48]
007d96b8: add rsp, 0x30
007d96bc: pop rsi
007d96bd: ret 
007d96be: call 0x1804fee20
007d96c3: int3 
007d96c4: int3 
007d96c5: int3 
007d96c6: int3 
007d96c7: int3 
007d96c8: int3 
007d96c9: int3 
007d96ca: int3 
007d96cb: int3 
007d96cc: int3 
007d96cd: int3 
007d96ce: int3 
007d96cf: int3 
