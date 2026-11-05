007e1fd0: push rbx
007e1fd2: sub rsp, 0x30
007e1fd6: cmp byte ptr [rip + 0x470a010], 0
007e1fdd: mov rbx, rcx
007e1fe0: jne 0x1807e200d
007e1fe2: lea rcx, [rip + 0x44b4bd7]
007e1fe9: call 0x1804feb70
007e1fee: lea rcx, [rip + 0x445301b]
007e1ff5: call 0x1804feb70
007e1ffa: lea rcx, [rip + 0x4493167]
007e2001: call 0x1804feb70
007e2006: mov byte ptr [rip + 0x4709fe0], 1
007e200d: mov rcx, qword ptr [rip + 0x44b4bac]
007e2014: cmp dword ptr [rcx + 0xe4], 0
007e201b: jne 0x1807e2022
007e201d: call 0x1804feeb0
007e2022: xor ecx, ecx
007e2024: call 0x18379e760
007e2029: test al, al
007e202b: jne 0x1807e2045
007e202d: cmp qword ptr [rbx + 0x100], 0
007e2035: je 0x1807e2045
007e2037: mov rcx, qword ptr [rbx + 0x100]
007e203e: xor edx, edx
007e2040: call 0x18060f880
007e2045: mov rax, qword ptr [rbx + 0x40]
007e2049: movaps xmmword ptr [rsp + 0x20], xmm6
007e204e: test rax, rax
007e2051: je 0x1807e21d0
007e2057: cmp dword ptr [rax + 0x30], 4
007e205b: je 0x1807e21c5
007e2061: movsd xmm6, qword ptr [rbx + 0x158]
007e2069: xor ecx, ecx
007e206b: call 0x183840160
007e2070: xorps xmm1, xmm1
007e2073: cvtss2sd xmm1, xmm0
007e2077: addsd xmm1, xmm6
007e207b: movsd qword ptr [rbx + 0x158], xmm1
007e2083: mov rax, qword ptr [rip + 0x4452f86]
007e208a: cmp dword ptr [rax + 0xe4], 0
007e2091: jne 0x1807e20a2
007e2093: mov rcx, rax
007e2096: call 0x1804feeb0
007e209b: mov rax, qword ptr [rip + 0x4452f6e]
007e20a2: mov rax, qword ptr [rax + 0xb8]
007e20a9: movsd xmm0, qword ptr [rbx + 0x158]
007e20b1: movsd xmm6, qword ptr [rax]
007e20b5: comisd xmm0, xmm6
007e20b9: jb 0x1807e2193
007e20bf: nop 
007e20c0: cmp qword ptr [rbx + 0x100], 0
007e20c8: je 0x1807e20fb
007e20ca: mov rcx, qword ptr [rbx + 0x100]
007e20d1: xor edx, edx
007e20d3: call 0x18066cf90
007e20d8: mov rcx, qword ptr [rbx + 0x100]
007e20df: test rcx, rcx
007e20e2: je 0x1807e21d0
007e20e8: mov rdx, qword ptr [rcx]
007e20eb: mov rax, qword ptr [rdx + 0x198]
007e20f2: mov rdx, qword ptr [rdx + 0x1a0]
007e20f9: call rax
007e20fb: mov rcx, qword ptr [rbx + 0x128]
007e2102: test rcx, rcx
007e2105: je 0x1807e211a
007e2107: mov rdx, qword ptr [rcx]
007e210a: mov rax, qword ptr [rdx + 0x198]
007e2111: mov rdx, qword ptr [rdx + 0x1a0]
007e2118: call rax
007e211a: mov rcx, qword ptr [rbx + 0xc8]
007e2121: test rcx, rcx
007e2124: je 0x1807e2139
007e2126: mov rdx, qword ptr [rcx]
007e2129: mov rax, qword ptr [rdx + 0x188]
007e2130: mov rdx, qword ptr [rdx + 0x190]
007e2137: call rax
007e2139: mov rcx, qword ptr [rbx + 0xd0]
007e2140: test rcx, rcx
007e2143: je 0x1807e2158
007e2145: mov rdx, qword ptr [rcx]
007e2148: mov rax, qword ptr [rdx + 0x188]
007e214f: mov rdx, qword ptr [rdx + 0x190]
007e2156: call rax
007e2158: mov rcx, qword ptr [rbx + 0x148]
007e215f: test rcx, rcx
007e2162: je 0x1807e216b
007e2164: xor edx, edx
007e2166: call 0x18060f880
007e216b: xor edx, edx
007e216d: mov rcx, rbx
007e2170: call 0x1807da330
007e2175: movsd xmm0, qword ptr [rbx + 0x158]
007e217d: subsd xmm0, xmm6
007e2181: comisd xmm0, xmm6
007e2185: movsd qword ptr [rbx + 0x158], xmm0
007e218d: jae 0x1807e20c0
007e2193: cmp qword ptr [rbx + 0x100], 0
007e219b: je 0x1807e21ab
007e219d: mov rcx, qword ptr [rbx + 0x100]
007e21a4: xor edx, edx
007e21a6: call 0x18066ce10
007e21ab: mov r8, qword ptr [rbx + 0x58]
007e21af: test r8, r8
007e21b2: je 0x1807e21d0
007e21b4: mov rdx, qword ptr [rip + 0x4492fad]
007e21bb: mov ecx, 0xd
007e21c0: call 0x180002290
007e21c5: movaps xmm6, xmmword ptr [rsp + 0x20]
007e21ca: add rsp, 0x30
007e21ce: pop rbx
007e21cf: ret 
007e21d0: call 0x1804fee20
007e21d5: int3 
007e21d6: int3 
007e21d7: int3 
007e21d8: int3 
007e21d9: int3 
007e21da: int3 
007e21db: int3 
007e21dc: int3 
007e21dd: int3 
007e21de: int3 
007e21df: int3 
