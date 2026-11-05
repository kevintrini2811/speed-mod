007ca5b0: mov qword ptr [rsp + 0x10], rbx
007ca5b5: push rdi
007ca5b6: sub rsp, 0x20
007ca5ba: mov rbx, rcx
007ca5bd: xor edi, edi
007ca5bf: mov qword ptr [rcx + 0x20], rdi
007ca5c3: xor edx, edx
007ca5c5: add rcx, 0x20
007ca5c9: call 0x1804fdea0
007ca5ce: mov eax, dword ptr [rbx + 0x100]
007ca5d4: movsd xmm0, qword ptr [rbx + 0xf8]
007ca5dc: movsd qword ptr [rbx + 0x38], xmm0
007ca5e1: mov dword ptr [rbx + 0x40], eax
007ca5e4: mov eax, dword ptr [rbx + 0x104]
007ca5ea: mov dword ptr [rbx + 0xa0], eax
007ca5f0: mov eax, dword ptr [rbx + 0x108]
007ca5f6: mov dword ptr [rbx + 0xa4], eax
007ca5fc: mov dword ptr [rbx + 0x118], edi
007ca602: cmp byte ptr [rip + 0x4720d3b], dil
007ca609: jne 0x1807ca61e
007ca60b: lea rcx, [rip + 0x44d8916]
007ca612: call 0x1804feb70
007ca617: mov byte ptr [rip + 0x4720d26], 1
007ca61e: mov rax, qword ptr [rip + 0x44d8903]
007ca625: mov rcx, qword ptr [rax + 0xb8]
007ca62c: movss xmm1, dword ptr [rcx + 4]
007ca631: movss xmm0, dword ptr [rcx]
007ca635: xor edx, edx
007ca637: unpcklps xmm0, xmm1
007ca63a: movq rcx, xmm0
007ca63f: call 0x18336c2a0
007ca644: mov qword ptr [rsp + 0x30], rax
007ca649: movss xmm0, dword ptr [rsp + 0x30]
007ca64f: movss xmm1, dword ptr [rsp + 0x34]
007ca655: movss dword ptr [rbx + 0x10c], xmm0
007ca65d: movss dword ptr [rbx + 0x110], xmm1
007ca665: mov dword ptr [rbx + 0x120], edi
007ca66b: mov qword ptr [rbx + 0x50], rdi
007ca66f: cmp byte ptr [rip + 0x472188c], dil
007ca676: jne 0x1807ca68b
007ca678: lea rcx, [rip + 0x44e0db1]
007ca67f: call 0x1804feb70
007ca684: mov byte ptr [rip + 0x4721877], 1
007ca68b: mov rax, qword ptr [rip + 0x44e0d9e]
007ca692: mov rdx, qword ptr [rbx]
007ca695: mov rcx, qword ptr [rax + 0xb8]
007ca69c: movups xmm0, xmmword ptr [rcx + 0x40]
007ca6a0: movups xmm1, xmmword ptr [rcx + 0x50]
007ca6a4: movups xmm2, xmmword ptr [rcx + 0x60]
007ca6a8: movups xmm3, xmmword ptr [rcx + 0x70]
007ca6ac: mov dword ptr [rbx + 0xa8], 0x80000000
007ca6b6: mov rcx, rbx
007ca6b9: movups xmmword ptr [rbx + 0x60], xmm0
007ca6bd: movups xmmword ptr [rbx + 0x70], xmm1
007ca6c1: movups xmmword ptr [rbx + 0x80], xmm2
007ca6c8: movups xmmword ptr [rbx + 0x90], xmm3
007ca6cf: mov rax, qword ptr [rdx + 0x278]
007ca6d6: mov rdx, qword ptr [rdx + 0x280]
007ca6dd: mov rbx, qword ptr [rsp + 0x38]
007ca6e2: add rsp, 0x20
007ca6e6: pop rdi
007ca6e7: jmp rax
007ca6ea: int3 
007ca6eb: int3 
007ca6ec: int3 
007ca6ed: int3 
007ca6ee: int3 
007ca6ef: int3 
