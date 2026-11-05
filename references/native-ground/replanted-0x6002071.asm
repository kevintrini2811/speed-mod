007251b0: push rbx
007251b2: sub rsp, 0x20
007251b6: cmp byte ptr [rip + 0x47c67cb], 0
007251bd: mov rbx, rcx
007251c0: jne 0x1807251e1
007251c2: lea rcx, [rip + 0x456619f]
007251c9: call 0x1804feb70
007251ce: lea rcx, [rip + 0x458e493]
007251d5: call 0x1804feb70
007251da: mov byte ptr [rip + 0x47c67a7], 1
007251e1: xor edx, edx
007251e3: mov rcx, rbx
007251e6: call 0x180722fa0
007251eb: mov rcx, qword ptr [rbx + 0x28]
007251ef: test rcx, rcx
007251f2: je 0x1807252b6
007251f8: xor edx, edx
007251fa: call 0x182f6dc60
007251ff: test rax, rax
00725202: je 0x1807252b6
00725208: xor edx, edx
0072520a: mov rcx, rax
0072520d: call 0x182f20400
00725212: mov rcx, qword ptr [rbx + 0x28]
00725216: test rcx, rcx
00725219: je 0x1807252b6
0072521f: xor edx, edx
00725221: call 0x182f923c0
00725226: test rax, rax
00725229: je 0x1807252b6
0072522f: xor edx, edx
00725231: mov rcx, rax
00725234: call 0x182f3f680
00725239: mov rcx, qword ptr [rbx + 0xc8]
00725240: test rcx, rcx
00725243: je 0x1807252b6
00725245: mov rdx, qword ptr [rip + 0x456611c]
0072524c: call 0x182466100
00725251: mov rcx, qword ptr [rbx + 0xc0]
00725258: test rcx, rcx
0072525b: je 0x1807252b6
0072525d: mov rdx, qword ptr [rip + 0x4566104]
00725264: call 0x182466100
00725269: lea rcx, [rbx + 0x20]
0072526d: mov qword ptr [rbx + 0x20], 0
00725275: xor edx, edx
00725277: call 0x1804fdea0
0072527c: mov rax, qword ptr [rip + 0x458e3e5]
00725283: mov rax, qword ptr [rax + 0xb8]
0072528a: movss xmm0, dword ptr [rax + 4]
0072528f: mov eax, dword ptr [rax]
00725291: movss dword ptr [rbx + 0xac], xmm0
00725299: mov dword ptr [rbx + 0xa8], eax
0072529f: mov byte ptr [rbx + 0xb0], 0
007252a6: mov dword ptr [rbx + 0xb4], 0xbf800000
007252b0: add rsp, 0x20
007252b4: pop rbx
007252b5: ret 
007252b6: call 0x1804fee20
007252bb: int3 
007252bc: int3 
007252bd: int3 
007252be: int3 
007252bf: int3 
