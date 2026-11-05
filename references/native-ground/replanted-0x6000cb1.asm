007c9600: mov qword ptr [rsp + 0x10], rbx
007c9605: mov qword ptr [rsp + 0x18], rsi
007c960a: mov qword ptr [rsp + 0x20], rdi
007c960f: push rbp
007c9610: push r12
007c9612: push r13
007c9614: push r14
007c9616: push r15
007c9618: mov rbp, rsp
007c961b: sub rsp, 0x30
007c961f: cmp byte ptr [rip + 0x4722857], 0
007c9626: mov r12d, r8d
007c9629: mov rbx, rdx
007c962c: mov rsi, rcx
007c962f: jne 0x1807c9644
007c9631: lea rcx, [rip + 0x449ddc8]
007c9638: call 0x1804feb70
007c963d: mov byte ptr [rip + 0x4722839], 1
007c9644: lea rdx, [rsi + 0x54]
007c9648: xor r8d, r8d
007c964b: mov rcx, rbx
007c964e: call 0x18060d8c0
007c9653: cmp byte ptr [rip + 0x47228aa], 0
007c965a: jne 0x1807c967b
007c965c: lea rcx, [rip + 0x44c9cb5]
007c9663: call 0x1804feb70
007c9668: lea rcx, [rip + 0x4474f49]
007c966f: call 0x1804feb70
007c9674: mov byte ptr [rip + 0x4722889], 1
007c967b: movsxd r14, dword ptr [rbx + 0x10]
007c967f: mov r13, qword ptr [rip + 0x4474f32]
007c9686: cmp r14d, dword ptr [rbx + 8]
007c968a: jbe 0x1807c9693
007c968c: xor ecx, ecx
007c968e: call 0x182c05bf0
007c9693: mov rcx, qword ptr [r13 + 0x20]
007c9697: mov r15, r14
007c969a: add r15, qword ptr [rbx]
007c969d: mov edi, dword ptr [rbx + 8]
007c96a0: mov qword ptr [rbp - 8], 0
007c96a8: test byte ptr [rcx + 0x135], 1
007c96af: jne 0x1807c96b6
007c96b1: call 0x1804fc300
007c96b6: sub edi, r14d
007c96b9: mov qword ptr [rbp - 0x10], r15
007c96bd: cmp byte ptr [rip + 0x47226b2], 0
007c96c4: mov dword ptr [rbp - 8], edi
007c96c7: jne 0x1807c96e8
007c96c9: lea rcx, [rip + 0x44c9588]
007c96d0: call 0x1804feb70
007c96d5: lea rcx, [rip + 0x4475304]
007c96dc: call 0x1804feb70
007c96e1: mov byte ptr [rip + 0x472268e], 1
007c96e8: cmp edi, 0x40
007c96eb: jge 0x1807c96f9
007c96ed: xor edx, edx
007c96ef: mov ecx, 0x1c
007c96f4: call 0x182c05bc0
007c96f9: movaps xmm0, xmmword ptr [rbp - 0x10]
007c96fd: lea rcx, [rbp - 0x10]
007c9701: mov rdx, qword ptr [rip + 0x44c9550]
007c9708: movdqa xmmword ptr [rbp - 0x10], xmm0
007c970d: call 0x180721da0
007c9712: lea rdx, [rsi + 0xa0]
007c9719: xor r8d, r8d
007c971c: mov rcx, rbx
007c971f: movups xmm0, xmmword ptr [rax]
007c9722: movups xmm1, xmmword ptr [rax + 0x10]
007c9726: movups xmm2, xmmword ptr [rax + 0x20]
007c972a: movups xmm3, xmmword ptr [rax + 0x30]
007c972e: movups xmmword ptr [rsi + 0x60], xmm0
007c9732: movups xmmword ptr [rsi + 0x70], xmm1
007c9736: movups xmmword ptr [rsi + 0x80], xmm2
007c973d: movups xmmword ptr [rsi + 0x90], xmm3
007c9744: add dword ptr [rbx + 0x10], 0x40
007c9748: call 0x1806e4a40
007c974d: lea rdx, [rsi + 0xa8]
007c9754: xor r8d, r8d
007c9757: mov rcx, rbx
007c975a: call 0x18063b5f0
007c975f: lea rdx, [rsi + 0x38]
007c9763: xor r8d, r8d
007c9766: mov rcx, rbx
007c9769: call 0x18060d9d0
007c976e: lea rdx, [rsi + 0x44]
007c9772: xor r8d, r8d
007c9775: mov rcx, rbx
007c9778: call 0x18060d9d0
007c977d: lea rdx, [rsi + 0x10c]
007c9784: xor r8d, r8d
007c9787: mov rcx, rbx
007c978a: call 0x1806e4a40
007c978f: lea rdx, [rsi + 0x118]
007c9796: xor r8d, r8d
007c9799: mov rcx, rbx
007c979c: call 0x18060d8c0
007c97a1: xor r14d, r14d
007c97a4: lea rdx, [rbp + 0x30]
007c97a8: xor r8d, r8d
007c97ab: mov dword ptr [rbp + 0x30], r14d
007c97af: mov rcx, rbx
007c97b2: call 0x18063b5f0
007c97b7: mov eax, dword ptr [rbp + 0x30]
007c97ba: lea rdx, [rbp + 0x30]
007c97be: xor r8d, r8d
007c97c1: mov dword ptr [rsi + 0x120], eax
007c97c7: mov rcx, rbx
007c97ca: mov byte ptr [rbp + 0x30], r14b
007c97ce: call 0x18063b2a0
007c97d3: cmp byte ptr [rbp + 0x30], r14b
007c97d7: je 0x1807c9899
007c97dd: mov rdi, qword ptr [rsi + 0xb8]
007c97e4: test rdi, rdi
007c97e7: je 0x1807c995f
007c97ed: cmp byte ptr [rip + 0x4722694], r14b
007c97f4: jne 0x1807c9809
007c97f6: lea rcx, [rip + 0x449e02b]
007c97fd: call 0x1804feb70
007c9802: mov byte ptr [rip + 0x472267f], 1
007c9809: lea rdx, [rdi + 0x40]
007c980d: xor r8d, r8d
007c9810: mov rcx, rbx
007c9813: call 0x18060d9d0
007c9818: lea rdx, [rdi + 0x4c]
007c981c: xor r8d, r8d
007c981f: mov rcx, rbx
007c9822: call 0x18060d9d0
007c9827: xor r8d, r8d
007c982a: mov dword ptr [rbp + 0x30], r14d
007c982e: lea rdx, [rbp + 0x30]
007c9832: mov rcx, rbx
007c9835: call 0x18063b5f0
007c983a: mov eax, dword ptr [rbp + 0x30]
007c983d: lea rdx, [rdi + 0x5c]
007c9841: xor r8d, r8d
007c9844: mov dword ptr [rdi + 0x58], eax
007c9847: mov rcx, rbx
007c984a: call 0x18063b5f0
007c984f: lea rdx, [rdi + 0x60]
007c9853: xor r8d, r8d
007c9856: mov rcx, rbx
007c9859: call 0x18063b5f0
007c985e: xor edx, edx
007c9860: mov rcx, rdi
007c9863: call 0x1807cc660
007c9868: mov rcx, qword ptr [rdi + 0x38]
007c986c: test rcx, rcx
007c986f: je 0x1807c995f
007c9875: mov ecx, dword ptr [rcx + 0x58]
007c9878: xor edx, edx
007c987a: mov dword ptr [rdi + 0x60], ecx
007c987d: call 0x1807e9150
007c9882: mov rcx, qword ptr [rdi + 0x28]
007c9886: test rcx, rcx
007c9889: je 0x1807c995f
007c988f: xor r8d, r8d
007c9892: mov edx, eax
007c9894: call 0x1837ea7a0
007c9899: xor r8d, r8d
007c989c: mov byte ptr [rbp + 0x30], r14b
007c98a0: lea rdx, [rbp + 0x30]
007c98a4: mov rcx, rbx
007c98a7: call 0x18063b2a0
007c98ac: cmp byte ptr [rbp + 0x30], r14b
007c98b0: je 0x1807c98d0
007c98b2: mov rcx, qword ptr [rsi + 0xc0]
007c98b9: test rcx, rcx
007c98bc: je 0x1807c995f
007c98c2: xor r9d, r9d
007c98c5: mov r8d, r12d
007c98c8: mov rdx, rbx
007c98cb: call 0x1807534e0
007c98d0: xor r8d, r8d
007c98d3: mov byte ptr [rbp + 0x30], r14b
007c98d7: lea rdx, [rbp + 0x30]
007c98db: mov rcx, rbx
007c98de: call 0x18063b2a0
007c98e3: cmp byte ptr [rbp + 0x30], r14b
007c98e7: je 0x1807c9903
007c98e9: mov rcx, qword ptr [rsi + 0xc8]
007c98f0: test rcx, rcx
007c98f3: je 0x1807c995f
007c98f5: xor r9d, r9d
007c98f8: mov r8d, r12d
007c98fb: mov rdx, rbx
007c98fe: call 0x1807b4e00
007c9903: xor r8d, r8d
007c9906: mov byte ptr [rbp + 0x30], r14b
007c990a: lea rdx, [rbp + 0x30]
007c990e: mov rcx, rbx
007c9911: call 0x18063b2a0
007c9916: cmp byte ptr [rbp + 0x30], r14b
007c991a: je 0x1807c9936
007c991c: mov rcx, qword ptr [rsi + 0xd0]
007c9923: test rcx, rcx
007c9926: je 0x1807c995f
007c9928: xor r9d, r9d
007c992b: mov r8d, r12d
007c992e: mov rdx, rbx
007c9931: call 0x1807b6ac0
007c9936: xor r8d, r8d
007c9939: mov dl, 1
007c993b: mov rcx, rsi
007c993e: mov rbx, qword ptr [rsp + 0x68]
007c9943: mov rsi, qword ptr [rsp + 0x70]
007c9948: mov rdi, qword ptr [rsp + 0x78]
007c994d: add rsp, 0x30
007c9951: pop r15
007c9953: pop r14
007c9955: pop r13
007c9957: pop r12
007c9959: pop rbp
007c995a: jmp 0x1807c9d10
007c995f: call 0x1804fee20
007c9964: int3 
007c9965: int3 
007c9966: int3 
007c9967: int3 
007c9968: int3 
007c9969: int3 
007c996a: int3 
007c996b: int3 
007c996c: int3 
007c996d: int3 
007c996e: int3 
007c996f: int3 
