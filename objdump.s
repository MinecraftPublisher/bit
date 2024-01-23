
./build/basm:	file format mach-o 64-bit x86-64

Disassembly of section __TEXT,__text:

0000000100000a30 <_memoryfailure>:
100000a30: 55                          	pushq	%rbp
100000a31: 48 89 e5                    	movq	%rsp, %rbp
100000a34: 48 83 ec 10                 	subq	$16, %rsp
100000a38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000a3c: 89 75 f4                    	movl	%esi, -12(%rbp)
100000a3f: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100000a43: 8b 55 f4                    	movl	-12(%rbp), %edx
100000a46: 48 8d 3d 42 b2 00 00        	leaq	45634(%rip), %rdi       ## 0x10000bc8f <_strnlen+0x10000bc8f>
100000a4d: 31 c0                       	xorl	%eax, %eax
100000a4f: e8 11 b2 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100000a54: bf 01 00 00 00              	movl	$1, %edi
100000a59: e8 d7 b1 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100000a5e: 66 90                       	nop

0000000100000a60 <_bh_ht_init>:
100000a60: 55                          	pushq	%rbp
100000a61: 48 89 e5                    	movq	%rsp, %rbp
100000a64: 48 83 ec 10                 	subq	$16, %rsp
100000a68: bf 10 00 00 00              	movl	$16, %edi
100000a6d: e8 e1 b1 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100000a72: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000a76: 48 83 7d f8 00              	cmpq	$0, -8(%rbp)
100000a7b: 0f 85 11 00 00 00           	jne	0x100000a92 <_bh_ht_init+0x32>
100000a81: 48 8d 3d 28 b2 00 00        	leaq	45608(%rip), %rdi       ## 0x10000bcb0 <_strnlen+0x10000bcb0>
100000a88: be 48 00 00 00              	movl	$72, %esi
100000a8d: e8 9e ff ff ff              	callq	0x100000a30 <_memoryfailure>
100000a92: bf 08 00 00 00              	movl	$8, %edi
100000a97: e8 b7 b1 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100000a9c: 48 89 c1                    	movq	%rax, %rcx
100000a9f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000aa3: 48 89 08                    	movq	%rcx, (%rax)
100000aa6: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000aaa: 48 83 38 00                 	cmpq	$0, (%rax)
100000aae: 0f 85 11 00 00 00           	jne	0x100000ac5 <_bh_ht_init+0x65>
100000ab4: 48 8d 3d f5 b1 00 00        	leaq	45557(%rip), %rdi       ## 0x10000bcb0 <_strnlen+0x10000bcb0>
100000abb: be 4a 00 00 00              	movl	$74, %esi
100000ac0: e8 6b ff ff ff              	callq	0x100000a30 <_memoryfailure>
100000ac5: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000ac9: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100000ad1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000ad5: 48 83 c4 10                 	addq	$16, %rsp
100000ad9: 5d                          	popq	%rbp
100000ada: c3                          	retq
100000adb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100000ae0 <_bh_ht_set>:
100000ae0: 55                          	pushq	%rbp
100000ae1: 48 89 e5                    	movq	%rsp, %rbp
100000ae4: 48 83 ec 30                 	subq	$48, %rsp
100000ae8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100000aec: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100000af0: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100000af4: 48 c7 45 d8 00 00 00 00     	movq	$0, -40(%rbp)
100000afc: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000b00: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100000b04: 48 3b 41 08                 	cmpq	8(%rcx), %rax
100000b08: 0f 83 64 00 00 00           	jae	0x100000b72 <_bh_ht_set+0x92>
100000b0e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b12: 48 8b 00                    	movq	(%rax), %rax
100000b15: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100000b19: 48 c1 e1 04                 	shlq	$4, %rcx
100000b1d: 48 01 c8                    	addq	%rcx, %rax
100000b20: 48 8b 38                    	movq	(%rax), %rdi
100000b23: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100000b27: e8 4b b1 00 00              	callq	0x10000bc77 <_strnlen+0x10000bc77>
100000b2c: 83 f8 00                    	cmpl	$0, %eax
100000b2f: 0f 85 27 00 00 00           	jne	0x100000b5c <_bh_ht_set+0x7c>
100000b35: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100000b39: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b3d: 48 8b 00                    	movq	(%rax), %rax
100000b40: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100000b44: 48 c1 e2 04                 	shlq	$4, %rdx
100000b48: 48 01 d0                    	addq	%rdx, %rax
100000b4b: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000b4f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b53: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000b57: e9 b2 00 00 00              	jmp	0x100000c0e <_bh_ht_set+0x12e>
100000b5c: e9 00 00 00 00              	jmp	0x100000b61 <_bh_ht_set+0x81>
100000b61: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000b65: 48 83 c0 01                 	addq	$1, %rax
100000b69: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100000b6d: e9 8a ff ff ff              	jmp	0x100000afc <_bh_ht_set+0x1c>
100000b72: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b76: 48 8b 48 08                 	movq	8(%rax), %rcx
100000b7a: 48 83 c1 01                 	addq	$1, %rcx
100000b7e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000b82: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b86: 48 8b 38                    	movq	(%rax), %rdi
100000b89: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000b8d: 48 8b 70 08                 	movq	8(%rax), %rsi
100000b91: 48 c1 e6 03                 	shlq	$3, %rsi
100000b95: e8 d7 b0 00 00              	callq	0x10000bc71 <_strnlen+0x10000bc71>
100000b9a: 48 89 c1                    	movq	%rax, %rcx
100000b9d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000ba1: 48 89 08                    	movq	%rcx, (%rax)
100000ba4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000ba8: 48 83 38 00                 	cmpq	$0, (%rax)
100000bac: 0f 85 11 00 00 00           	jne	0x100000bc3 <_bh_ht_set+0xe3>
100000bb2: 48 8d 3d f7 b0 00 00        	leaq	45303(%rip), %rdi       ## 0x10000bcb0 <_strnlen+0x10000bcb0>
100000bb9: be 5c 00 00 00              	movl	$92, %esi
100000bbe: e8 6d fe ff ff              	callq	0x100000a30 <_memoryfailure>
100000bc3: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100000bc7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000bcb: 48 8b 00                    	movq	(%rax), %rax
100000bce: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100000bd2: 48 8b 52 08                 	movq	8(%rdx), %rdx
100000bd6: 48 83 ea 01                 	subq	$1, %rdx
100000bda: 48 c1 e2 04                 	shlq	$4, %rdx
100000bde: 48 01 d0                    	addq	%rdx, %rax
100000be1: 48 89 08                    	movq	%rcx, (%rax)
100000be4: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100000be8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000bec: 48 8b 00                    	movq	(%rax), %rax
100000bef: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100000bf3: 48 8b 52 08                 	movq	8(%rdx), %rdx
100000bf7: 48 83 ea 01                 	subq	$1, %rdx
100000bfb: 48 c1 e2 04                 	shlq	$4, %rdx
100000bff: 48 01 d0                    	addq	%rdx, %rax
100000c02: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000c06: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000c0a: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000c0e: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000c12: 48 83 c4 30                 	addq	$48, %rsp
100000c16: 5d                          	popq	%rbp
100000c17: c3                          	retq
100000c18: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100000c20 <_bh_ht_get>:
100000c20: 55                          	pushq	%rbp
100000c21: 48 89 e5                    	movq	%rsp, %rbp
100000c24: 48 83 ec 50                 	subq	$80, %rsp
100000c28: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100000c2c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100000c30: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100000c38: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100000c3c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100000c40: 48 3b 41 08                 	cmpq	8(%rcx), %rax
100000c44: 0f 83 b9 00 00 00           	jae	0x100000d03 <_bh_ht_get+0xe3>
100000c4a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000c4e: 48 8b 00                    	movq	(%rax), %rax
100000c51: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100000c55: 48 c1 e1 04                 	shlq	$4, %rcx
100000c59: 48 01 c8                    	addq	%rcx, %rax
100000c5c: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100000c60: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000c64: 48 8b 38                    	movq	(%rax), %rdi
100000c67: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100000c6b: e8 07 b0 00 00              	callq	0x10000bc77 <_strnlen+0x10000bc77>
100000c70: 83 f8 00                    	cmpl	$0, %eax
100000c73: 0f 85 74 00 00 00           	jne	0x100000ced <_bh_ht_get+0xcd>
100000c79: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000c7d: 48 8b 00                    	movq	(%rax), %rax
100000c80: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100000c84: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000c88: 48 8b 40 08                 	movq	8(%rax), %rax
100000c8c: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100000c90: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000c94: 48 8b 00                    	movq	(%rax), %rax
100000c97: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100000c9b: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100000c9f: 48 8b 00                    	movq	(%rax), %rax
100000ca2: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100000ca6: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100000caa: 48 8b 40 08                 	movq	8(%rax), %rax
100000cae: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100000cb2: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100000cb6: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100000cba: 48 89 08                    	movq	%rcx, (%rax)
100000cbd: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100000cc1: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100000cc5: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000cc9: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100000ccd: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000cd1: 48 89 08                    	movq	%rcx, (%rax)
100000cd4: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100000cd8: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000cdc: 48 89 48 08                 	movq	%rcx, 8(%rax)
100000ce0: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100000ce4: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000ce8: e9 1e 00 00 00              	jmp	0x100000d0b <_bh_ht_get+0xeb>
100000ced: e9 00 00 00 00              	jmp	0x100000cf2 <_bh_ht_get+0xd2>
100000cf2: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100000cf6: 48 83 c0 01                 	addq	$1, %rax
100000cfa: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100000cfe: e9 35 ff ff ff              	jmp	0x100000c38 <_bh_ht_get+0x18>
100000d03: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100000d0b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000d0f: 48 83 c4 50                 	addq	$80, %rsp
100000d13: 5d                          	popq	%rbp
100000d14: c3                          	retq
100000d15: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100000d20 <_replaceAll>:
100000d20: 55                          	pushq	%rbp
100000d21: 48 89 e5                    	movq	%rsp, %rbp
100000d24: 48 81 ec 80 00 00 00        	subq	$128, %rsp
100000d2b: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100000d2f: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100000d33: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100000d37: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100000d3b: 48 8d 35 82 af 00 00        	leaq	44930(%rip), %rsi       ## 0x10000bcc4 <_strnlen+0x10000bcc4>
100000d42: e8 30 af 00 00              	callq	0x10000bc77 <_strnlen+0x10000bc77>
100000d47: 83 f8 00                    	cmpl	$0, %eax
100000d4a: 0f 85 0d 00 00 00           	jne	0x100000d5d <_replaceAll+0x3d>
100000d50: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000d54: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000d58: e9 25 02 00 00              	jmp	0x100000f82 <_replaceAll+0x262>
100000d5d: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100000d61: e8 17 af 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100000d66: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100000d6a: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
100000d6e: e8 0a af 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100000d73: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100000d77: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000d7b: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100000d7f: 0f 82 0b 00 00 00           	jb	0x100000d90 <_replaceAll+0x70>
100000d85: 31 c0                       	xorl	%eax, %eax
100000d87: 48 89 45 88                 	movq	%rax, -120(%rbp)
100000d8b: e9 0c 00 00 00              	jmp	0x100000d9c <_replaceAll+0x7c>
100000d90: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100000d94: 48 2b 45 d8                 	subq	-40(%rbp), %rax
100000d98: 48 89 45 88                 	movq	%rax, -120(%rbp)
100000d9c: 48 8b 45 88                 	movq	-120(%rbp), %rax
100000da0: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100000da4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100000da8: e8 d0 ae 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100000dad: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100000db1: 48 c7 45 b8 00 00 00 00     	movq	$0, -72(%rbp)
100000db9: 48 c7 45 b0 00 00 00 00     	movq	$0, -80(%rbp)
100000dc1: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100000dc5: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100000dc9: 48 2b 4d d8                 	subq	-40(%rbp), %rcx
100000dcd: 48 39 c8                    	cmpq	%rcx, %rax
100000dd0: 0f 87 40 00 00 00           	ja	0x100000e16 <_replaceAll+0xf6>
100000dd6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100000dda: 48 03 7d b0                 	addq	-80(%rbp), %rdi
100000dde: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100000de2: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100000de6: e8 98 ae 00 00              	callq	0x10000bc83 <_strnlen+0x10000bc83>
100000deb: 83 f8 00                    	cmpl	$0, %eax
100000dee: 0f 85 0c 00 00 00           	jne	0x100000e00 <_replaceAll+0xe0>
100000df4: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100000df8: 48 83 c0 01                 	addq	$1, %rax
100000dfc: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100000e00: e9 00 00 00 00              	jmp	0x100000e05 <_replaceAll+0xe5>
100000e05: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100000e09: 48 83 c0 01                 	addq	$1, %rax
100000e0d: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100000e11: e9 ab ff ff ff              	jmp	0x100000dc1 <_replaceAll+0xa1>
100000e16: 48 8b 7d c0                 	movq	-64(%rbp), %rdi
100000e1a: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100000e1e: 48 0f af 45 c8              	imulq	-56(%rbp), %rax
100000e23: 48 01 c7                    	addq	%rax, %rdi
100000e26: 48 83 c7 01                 	addq	$1, %rdi
100000e2a: 48 c1 e7 00                 	shlq	$0, %rdi
100000e2e: e8 20 ae 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100000e33: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100000e37: 48 83 7d a8 00              	cmpq	$0, -88(%rbp)
100000e3c: 0f 85 11 00 00 00           	jne	0x100000e53 <_replaceAll+0x133>
100000e42: 48 8d 3d 67 ae 00 00        	leaq	44647(%rip), %rdi       ## 0x10000bcb0 <_strnlen+0x10000bcb0>
100000e49: be 8d 00 00 00              	movl	$141, %esi
100000e4e: e8 dd fb ff ff              	callq	0x100000a30 <_memoryfailure>
100000e53: 48 c7 45 a0 00 00 00 00     	movq	$0, -96(%rbp)
100000e5b: 48 c7 45 98 00 00 00 00     	movq	$0, -104(%rbp)
100000e63: 48 8b 45 98                 	movq	-104(%rbp), %rax
100000e67: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100000e6b: 48 2b 4d d8                 	subq	-40(%rbp), %rcx
100000e6f: 48 39 c8                    	cmpq	%rcx, %rax
100000e72: 0f 87 b2 00 00 00           	ja	0x100000f2a <_replaceAll+0x20a>
100000e78: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100000e7c: 48 03 7d 98                 	addq	-104(%rbp), %rdi
100000e80: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100000e84: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100000e88: e8 f6 ad 00 00              	callq	0x10000bc83 <_strnlen+0x10000bc83>
100000e8d: 83 f8 00                    	cmpl	$0, %eax
100000e90: 0f 85 5d 00 00 00           	jne	0x100000ef3 <_replaceAll+0x1d3>
100000e96: 48 c7 45 90 00 00 00 00     	movq	$0, -112(%rbp)
100000e9e: 48 8b 45 90                 	movq	-112(%rbp), %rax
100000ea2: 48 3b 45 d0                 	cmpq	-48(%rbp), %rax
100000ea6: 0f 83 32 00 00 00           	jae	0x100000ede <_replaceAll+0x1be>
100000eac: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100000eb0: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100000eb4: 8a 14 08                    	movb	(%rax,%rcx), %dl
100000eb7: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100000ebb: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100000ebf: 48 89 ce                    	movq	%rcx, %rsi
100000ec2: 48 83 c6 01                 	addq	$1, %rsi
100000ec6: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
100000eca: 88 14 08                    	movb	%dl, (%rax,%rcx)
100000ecd: 48 8b 45 90                 	movq	-112(%rbp), %rax
100000ed1: 48 83 c0 01                 	addq	$1, %rax
100000ed5: 48 89 45 90                 	movq	%rax, -112(%rbp)
100000ed9: e9 c0 ff ff ff              	jmp	0x100000e9e <_replaceAll+0x17e>
100000ede: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100000ee2: 48 83 e8 01                 	subq	$1, %rax
100000ee6: 48 03 45 98                 	addq	-104(%rbp), %rax
100000eea: 48 89 45 98                 	movq	%rax, -104(%rbp)
100000eee: e9 21 00 00 00              	jmp	0x100000f14 <_replaceAll+0x1f4>
100000ef3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000ef7: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100000efb: 8a 14 08                    	movb	(%rax,%rcx), %dl
100000efe: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100000f02: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100000f06: 48 89 ce                    	movq	%rcx, %rsi
100000f09: 48 83 c6 01                 	addq	$1, %rsi
100000f0d: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
100000f11: 88 14 08                    	movb	%dl, (%rax,%rcx)
100000f14: e9 00 00 00 00              	jmp	0x100000f19 <_replaceAll+0x1f9>
100000f19: 48 8b 45 98                 	movq	-104(%rbp), %rax
100000f1d: 48 83 c0 01                 	addq	$1, %rax
100000f21: 48 89 45 98                 	movq	%rax, -104(%rbp)
100000f25: e9 39 ff ff ff              	jmp	0x100000e63 <_replaceAll+0x143>
100000f2a: e9 00 00 00 00              	jmp	0x100000f2f <_replaceAll+0x20f>
100000f2f: 48 8b 45 98                 	movq	-104(%rbp), %rax
100000f33: 48 3b 45 c0                 	cmpq	-64(%rbp), %rax
100000f37: 0f 83 31 00 00 00           	jae	0x100000f6e <_replaceAll+0x24e>
100000f3d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100000f41: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100000f45: 48 89 ca                    	movq	%rcx, %rdx
100000f48: 48 83 c2 01                 	addq	$1, %rdx
100000f4c: 48 89 55 98                 	movq	%rdx, -104(%rbp)
100000f50: 8a 14 08                    	movb	(%rax,%rcx), %dl
100000f53: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100000f57: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100000f5b: 48 89 ce                    	movq	%rcx, %rsi
100000f5e: 48 83 c6 01                 	addq	$1, %rsi
100000f62: 48 89 75 a0                 	movq	%rsi, -96(%rbp)
100000f66: 88 14 08                    	movb	%dl, (%rax,%rcx)
100000f69: e9 c1 ff ff ff              	jmp	0x100000f2f <_replaceAll+0x20f>
100000f6e: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100000f72: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100000f76: c6 04 08 00                 	movb	$0, (%rax,%rcx)
100000f7a: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100000f7e: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100000f82: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100000f86: 48 81 c4 80 00 00 00        	addq	$128, %rsp
100000f8d: 5d                          	popq	%rbp
100000f8e: c3                          	retq
100000f8f: 90                          	nop

0000000100000f90 <_run_code>:
100000f90: 55                          	pushq	%rbp
100000f91: 48 89 e5                    	movq	%rsp, %rbp
100000f94: 48 83 ec 30                 	subq	$48, %rsp
100000f98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100000f9c: 48 83 7d f8 00              	cmpq	$0, -8(%rbp)
100000fa1: 0f 84 ee 00 00 00           	je	0x100001095 <_run_code+0x105>
100000fa7: 48 8d 05 72 f0 00 00        	leaq	61554(%rip), %rax       ## 0x100010020 <_current_path>
100000fae: 48 8b 38                    	movq	(%rax), %rdi
100000fb1: e8 c7 ac 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100000fb6: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100000fba: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100000fbe: e8 ba ac 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100000fc3: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
100000fc7: 48 01 c7                    	addq	%rax, %rdi
100000fca: 48 83 c7 32                 	addq	$50, %rdi
100000fce: e8 80 ac 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100000fd3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100000fd7: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100000fdc: 0f 85 11 00 00 00           	jne	0x100000ff3 <_run_code+0x63>
100000fe2: 48 8d 3d dc ac 00 00        	leaq	44252(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
100000fe9: be 1e 00 00 00              	movl	$30, %esi
100000fee: e8 3d fa ff ff              	callq	0x100000a30 <_memoryfailure>
100000ff3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100000ff7: 4c 8b 45 f8                 	movq	-8(%rbp), %r8
100000ffb: 48 8d 05 1e f0 00 00        	leaq	61470(%rip), %rax       ## 0x100010020 <_current_path>
100001002: 4c 8b 08                    	movq	(%rax), %r9
100001005: 31 f6                       	xorl	%esi, %esi
100001007: 48 c7 c2 ff ff ff ff        	movq	$-1, %rdx
10000100e: 48 8d 0d c4 ac 00 00        	leaq	44228(%rip), %rcx       ## 0x10000bcd9 <_strnlen+0x10000bcd9>
100001015: b0 00                       	movb	$0, %al
100001017: e8 01 ac 00 00              	callq	0x10000bc1d <_strnlen+0x10000bc1d>
10000101c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001020: 48 8d 35 c1 ac 00 00        	leaq	44225(%rip), %rsi       ## 0x10000bce8 <_strnlen+0x10000bce8>
100001027: e8 33 ac 00 00              	callq	0x10000bc5f <_strnlen+0x10000bc5f>
10000102c: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001030: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
100001035: 0f 85 18 00 00 00           	jne	0x100001053 <_run_code+0xc3>
10000103b: 48 8d 3d a8 ac 00 00        	leaq	44200(%rip), %rdi       ## 0x10000bcea <_strnlen+0x10000bcea>
100001042: 31 c0                       	xorl	%eax, %eax
100001044: e8 1c ac 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001049: bf 01 00 00 00              	movl	$1, %edi
10000104e: e8 e2 ab 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100001053: e9 00 00 00 00              	jmp	0x100001058 <_run_code+0xc8>
100001058: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000105c: e8 da ab 00 00              	callq	0x10000bc3b <_strnlen+0x10000bc3b>
100001061: 88 45 e7                    	movb	%al, -25(%rbp)
100001064: 0f be c0                    	movsbl	%al, %eax
100001067: 83 f8 ff                    	cmpl	$-1, %eax
10000106a: 0f 84 0e 00 00 00           	je	0x10000107e <_run_code+0xee>
100001070: 0f be 7d e7                 	movsbl	-25(%rbp), %edi
100001074: e8 f2 ab 00 00              	callq	0x10000bc6b <_strnlen+0x10000bc6b>
100001079: e9 da ff ff ff              	jmp	0x100001058 <_run_code+0xc8>
10000107e: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001082: e8 d2 ab 00 00              	callq	0x10000bc59 <_strnlen+0x10000bc59>
100001087: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000108b: e8 b7 ab 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100001090: e9 23 00 00 00              	jmp	0x1000010b8 <_run_code+0x128>
100001095: 31 c0                       	xorl	%eax, %eax
100001097: 89 c7                       	movl	%eax, %edi
100001099: e8 22 00 00 00              	callq	0x1000010c0 <_bit_asm_create>
10000109e: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000010a2: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000010a6: 31 c0                       	xorl	%eax, %eax
1000010a8: 89 c6                       	movl	%eax, %esi
1000010aa: e8 31 00 00 00              	callq	0x1000010e0 <_bit_asm_parse>
1000010af: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000010b3: e8 c8 00 00 00              	callq	0x100001180 <_bit_asm_destroy>
1000010b8: 48 83 c4 30                 	addq	$48, %rsp
1000010bc: 5d                          	popq	%rbp
1000010bd: c3                          	retq
1000010be: 66 90                       	nop

00000001000010c0 <_bit_asm_create>:
1000010c0: 55                          	pushq	%rbp
1000010c1: 48 89 e5                    	movq	%rsp, %rbp
1000010c4: 48 83 ec 10                 	subq	$16, %rsp
1000010c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000010cc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000010d0: e8 fb 0a 00 00              	callq	0x100001bd0 <_pcc_context__create>
1000010d5: 48 83 c4 10                 	addq	$16, %rsp
1000010d9: 5d                          	popq	%rbp
1000010da: c3                          	retq
1000010db: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000010e0 <_bit_asm_parse>:
1000010e0: 55                          	pushq	%rbp
1000010e1: 48 89 e5                    	movq	%rsp, %rbp
1000010e4: 48 83 ec 10                 	subq	$16, %rsp
1000010e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000010ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000010f0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000010f4: 48 8b 55 f8                 	movq	-8(%rbp), %rdx
1000010f8: 48 83 c2 68                 	addq	$104, %rdx
1000010fc: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001100: 48 8d 35 c9 11 00 00        	leaq	4553(%rip), %rsi        ## 0x1000022d0 <_pcc_evaluate_rule_main>
100001107: e8 b4 0b 00 00              	callq	0x100001cc0 <_pcc_apply_rule>
10000110c: 83 f8 00                    	cmpl	$0, %eax
10000110f: 0f 84 1a 00 00 00           	je	0x10000112f <_bit_asm_parse+0x4f>
100001115: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001119: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000111d: 48 83 c6 68                 	addq	$104, %rsi
100001121: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100001125: e8 66 17 00 00              	callq	0x100002890 <_pcc_do_action>
10000112a: e9 05 00 00 00              	jmp	0x100001134 <_bit_asm_parse+0x54>
10000112f: e8 2c 18 00 00              	callq	0x100002960 <_pcc_error>
100001134: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001138: e8 53 18 00 00              	callq	0x100002990 <_pcc_commit_buffer>
10000113d: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001141: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001148: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000114c: 48 83 c6 68                 	addq	$104, %rsi
100001150: 31 c0                       	xorl	%eax, %eax
100001152: 89 c2                       	movl	%eax, %edx
100001154: e8 d7 18 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
100001159: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000115d: be 01 00 00 00              	movl	$1, %esi
100001162: e8 29 19 00 00              	callq	0x100002a90 <_pcc_refill_buffer>
100001167: 48 83 f8 01                 	cmpq	$1, %rax
10000116b: 0f 93 c0                    	setae	%al
10000116e: 24 01                       	andb	$1, %al
100001170: 0f b6 c0                    	movzbl	%al, %eax
100001173: 48 83 c4 10                 	addq	$16, %rsp
100001177: 5d                          	popq	%rbp
100001178: c3                          	retq
100001179: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100001180 <_bit_asm_destroy>:
100001180: 55                          	pushq	%rbp
100001181: 48 89 e5                    	movq	%rsp, %rbp
100001184: 48 83 ec 10                 	subq	$16, %rsp
100001188: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000118c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001190: e8 bb 19 00 00              	callq	0x100002b50 <_pcc_context__destroy>
100001195: 48 83 c4 10                 	addq	$16, %rsp
100001199: 5d                          	popq	%rbp
10000119a: c3                          	retq
10000119b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000011a0 <_run_expr>:
1000011a0: 55                          	pushq	%rbp
1000011a1: 48 89 e5                    	movq	%rsp, %rbp
1000011a4: 48 83 ec 30                 	subq	$48, %rsp
1000011a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000011ac: 48 83 7d f8 00              	cmpq	$0, -8(%rbp)
1000011b1: 0f 84 ee 00 00 00           	je	0x1000012a5 <_run_expr+0x105>
1000011b7: 48 8d 05 62 ee 00 00        	leaq	61026(%rip), %rax       ## 0x100010020 <_current_path>
1000011be: 48 8b 38                    	movq	(%rax), %rdi
1000011c1: e8 b7 aa 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
1000011c6: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000011ca: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000011ce: e8 aa aa 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
1000011d3: 48 8b 7d d0                 	movq	-48(%rbp), %rdi
1000011d7: 48 01 c7                    	addq	%rax, %rdi
1000011da: 48 83 c7 64                 	addq	$100, %rdi
1000011de: e8 70 aa 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
1000011e3: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000011e7: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
1000011ec: 0f 85 11 00 00 00           	jne	0x100001203 <_run_expr+0x63>
1000011f2: 48 8d 3d cc aa 00 00        	leaq	43724(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
1000011f9: be 36 00 00 00              	movl	$54, %esi
1000011fe: e8 2d f8 ff ff              	callq	0x100000a30 <_memoryfailure>
100001203: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001207: 4c 8b 45 f8                 	movq	-8(%rbp), %r8
10000120b: 48 8d 05 0e ee 00 00        	leaq	60942(%rip), %rax       ## 0x100010020 <_current_path>
100001212: 4c 8b 08                    	movq	(%rax), %r9
100001215: 31 f6                       	xorl	%esi, %esi
100001217: 48 c7 c2 ff ff ff ff        	movq	$-1, %rdx
10000121e: 48 8d 0d d9 aa 00 00        	leaq	43737(%rip), %rcx       ## 0x10000bcfe <_strnlen+0x10000bcfe>
100001225: b0 00                       	movb	$0, %al
100001227: e8 f1 a9 00 00              	callq	0x10000bc1d <_strnlen+0x10000bc1d>
10000122c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001230: 48 8d 35 b1 aa 00 00        	leaq	43697(%rip), %rsi       ## 0x10000bce8 <_strnlen+0x10000bce8>
100001237: e8 23 aa 00 00              	callq	0x10000bc5f <_strnlen+0x10000bc5f>
10000123c: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001240: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
100001245: 0f 85 18 00 00 00           	jne	0x100001263 <_run_expr+0xc3>
10000124b: 48 8d 3d 98 aa 00 00        	leaq	43672(%rip), %rdi       ## 0x10000bcea <_strnlen+0x10000bcea>
100001252: 31 c0                       	xorl	%eax, %eax
100001254: e8 0c aa 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001259: bf 01 00 00 00              	movl	$1, %edi
10000125e: e8 d2 a9 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100001263: e9 00 00 00 00              	jmp	0x100001268 <_run_expr+0xc8>
100001268: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000126c: e8 ca a9 00 00              	callq	0x10000bc3b <_strnlen+0x10000bc3b>
100001271: 88 45 e7                    	movb	%al, -25(%rbp)
100001274: 0f be c0                    	movsbl	%al, %eax
100001277: 83 f8 ff                    	cmpl	$-1, %eax
10000127a: 0f 84 0e 00 00 00           	je	0x10000128e <_run_expr+0xee>
100001280: 0f be 7d e7                 	movsbl	-25(%rbp), %edi
100001284: e8 e2 a9 00 00              	callq	0x10000bc6b <_strnlen+0x10000bc6b>
100001289: e9 da ff ff ff              	jmp	0x100001268 <_run_expr+0xc8>
10000128e: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001292: e8 c2 a9 00 00              	callq	0x10000bc59 <_strnlen+0x10000bc59>
100001297: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000129b: e8 a7 a9 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
1000012a0: e9 23 00 00 00              	jmp	0x1000012c8 <_run_expr+0x128>
1000012a5: 31 c0                       	xorl	%eax, %eax
1000012a7: 89 c7                       	movl	%eax, %edi
1000012a9: e8 12 fe ff ff              	callq	0x1000010c0 <_bit_asm_create>
1000012ae: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000012b2: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000012b6: 31 c0                       	xorl	%eax, %eax
1000012b8: 89 c6                       	movl	%eax, %esi
1000012ba: e8 21 fe ff ff              	callq	0x1000010e0 <_bit_asm_parse>
1000012bf: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000012c3: e8 b8 fe ff ff              	callq	0x100001180 <_bit_asm_destroy>
1000012c8: 48 83 c4 30                 	addq	$48, %rsp
1000012cc: 5d                          	popq	%rbp
1000012cd: c3                          	retq
1000012ce: 66 90                       	nop

00000001000012d0 <_print_bin>:
1000012d0: 55                          	pushq	%rbp
1000012d1: 48 89 e5                    	movq	%rsp, %rbp
1000012d4: 41 57                       	pushq	%r15
1000012d6: 41 56                       	pushq	%r14
1000012d8: 41 55                       	pushq	%r13
1000012da: 41 54                       	pushq	%r12
1000012dc: 53                          	pushq	%rbx
1000012dd: 48 83 ec 58                 	subq	$88, %rsp
1000012e1: 89 7d d4                    	movl	%edi, -44(%rbp)
1000012e4: 89 75 d0                    	movl	%esi, -48(%rbp)
1000012e7: 83 7d d0 00                 	cmpl	$0, -48(%rbp)
1000012eb: 0f 84 1d 00 00 00           	je	0x10000130e <_print_bin+0x3e>
1000012f1: 8b 75 d4                    	movl	-44(%rbp), %esi
1000012f4: 81 e6 00 40 00 00           	andl	$16384, %esi            ## imm = 0x4000
1000012fa: c1 fe 0e                    	sarl	$14, %esi
1000012fd: 83 c6 30                    	addl	$48, %esi
100001300: 48 8d 3d 1a aa 00 00        	leaq	43546(%rip), %rdi       ## 0x10000bd21 <_strnlen+0x10000bd21>
100001307: b0 00                       	movb	$0, %al
100001309: e8 57 a9 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000130e: 8b 75 d4                    	movl	-44(%rbp), %esi
100001311: 81 e6 00 20 00 00           	andl	$8192, %esi             ## imm = 0x2000
100001317: c1 fe 0d                    	sarl	$13, %esi
10000131a: 83 c6 30                    	addl	$48, %esi
10000131d: 8b 55 d4                    	movl	-44(%rbp), %edx
100001320: 81 e2 00 10 00 00           	andl	$4096, %edx             ## imm = 0x1000
100001326: c1 fa 0c                    	sarl	$12, %edx
100001329: 83 c2 30                    	addl	$48, %edx
10000132c: 8b 4d d4                    	movl	-44(%rbp), %ecx
10000132f: 81 e1 00 08 00 00           	andl	$2048, %ecx             ## imm = 0x800
100001335: c1 f9 0b                    	sarl	$11, %ecx
100001338: 83 c1 30                    	addl	$48, %ecx
10000133b: 44 8b 45 d4                 	movl	-44(%rbp), %r8d
10000133f: 41 81 e0 00 04 00 00        	andl	$1024, %r8d             ## imm = 0x400
100001346: 41 c1 f8 0a                 	sarl	$10, %r8d
10000134a: 41 83 c0 30                 	addl	$48, %r8d
10000134e: 44 8b 4d d4                 	movl	-44(%rbp), %r9d
100001352: 41 81 e1 00 02 00 00        	andl	$512, %r9d              ## imm = 0x200
100001359: 41 c1 f9 09                 	sarl	$9, %r9d
10000135d: 41 83 c1 30                 	addl	$48, %r9d
100001361: 8b 45 d4                    	movl	-44(%rbp), %eax
100001364: 25 00 01 00 00              	andl	$256, %eax              ## imm = 0x100
100001369: c1 f8 08                    	sarl	$8, %eax
10000136c: 83 c0 30                    	addl	$48, %eax
10000136f: 44 8b 6d d4                 	movl	-44(%rbp), %r13d
100001373: 41 81 e5 80 00 00 00        	andl	$128, %r13d
10000137a: 41 c1 fd 07                 	sarl	$7, %r13d
10000137e: 41 83 c5 30                 	addl	$48, %r13d
100001382: 44 8b 65 d4                 	movl	-44(%rbp), %r12d
100001386: 41 83 e4 40                 	andl	$64, %r12d
10000138a: 41 c1 fc 06                 	sarl	$6, %r12d
10000138e: 41 83 c4 30                 	addl	$48, %r12d
100001392: 44 8b 7d d4                 	movl	-44(%rbp), %r15d
100001396: 41 83 e7 20                 	andl	$32, %r15d
10000139a: 41 c1 ff 05                 	sarl	$5, %r15d
10000139e: 41 83 c7 30                 	addl	$48, %r15d
1000013a2: 44 8b 75 d4                 	movl	-44(%rbp), %r14d
1000013a6: 41 83 e6 10                 	andl	$16, %r14d
1000013aa: 41 c1 fe 04                 	sarl	$4, %r14d
1000013ae: 41 83 c6 30                 	addl	$48, %r14d
1000013b2: 8b 5d d4                    	movl	-44(%rbp), %ebx
1000013b5: 83 e3 08                    	andl	$8, %ebx
1000013b8: c1 fb 03                    	sarl	$3, %ebx
1000013bb: 83 c3 30                    	addl	$48, %ebx
1000013be: 44 8b 5d d4                 	movl	-44(%rbp), %r11d
1000013c2: 41 83 e3 04                 	andl	$4, %r11d
1000013c6: 41 c1 fb 02                 	sarl	$2, %r11d
1000013ca: 41 83 c3 30                 	addl	$48, %r11d
1000013ce: 44 8b 55 d4                 	movl	-44(%rbp), %r10d
1000013d2: 41 83 e2 02                 	andl	$2, %r10d
1000013d6: 41 c1 fa 02                 	sarl	$2, %r10d
1000013da: 41 83 c2 30                 	addl	$48, %r10d
1000013de: 8b 7d d4                    	movl	-44(%rbp), %edi
1000013e1: 83 e7 01                    	andl	$1, %edi
1000013e4: 83 c7 30                    	addl	$48, %edi
1000013e7: 89 7d cc                    	movl	%edi, -52(%rbp)
1000013ea: 48 8d 3d 33 a9 00 00        	leaq	43315(%rip), %rdi       ## 0x10000bd24 <_strnlen+0x10000bd24>
1000013f1: 89 04 24                    	movl	%eax, (%rsp)
1000013f4: 8b 45 cc                    	movl	-52(%rbp), %eax
1000013f7: 44 89 6c 24 08              	movl	%r13d, 8(%rsp)
1000013fc: 44 89 64 24 10              	movl	%r12d, 16(%rsp)
100001401: 44 89 7c 24 18              	movl	%r15d, 24(%rsp)
100001406: 44 89 74 24 20              	movl	%r14d, 32(%rsp)
10000140b: 89 5c 24 28                 	movl	%ebx, 40(%rsp)
10000140f: 44 89 5c 24 30              	movl	%r11d, 48(%rsp)
100001414: 44 89 54 24 38              	movl	%r10d, 56(%rsp)
100001419: 89 44 24 40                 	movl	%eax, 64(%rsp)
10000141d: b0 00                       	movb	$0, %al
10000141f: e8 41 a8 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001424: 48 83 c4 58                 	addq	$88, %rsp
100001428: 5b                          	popq	%rbx
100001429: 41 5c                       	popq	%r12
10000142b: 41 5d                       	popq	%r13
10000142d: 41 5e                       	popq	%r14
10000142f: 41 5f                       	popq	%r15
100001431: 5d                          	popq	%rbp
100001432: c3                          	retq
100001433: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100001440 <_print_reg>:
100001440: 55                          	pushq	%rbp
100001441: 48 89 e5                    	movq	%rsp, %rbp
100001444: 48 83 ec 10                 	subq	$16, %rsp
100001448: 89 7d fc                    	movl	%edi, -4(%rbp)
10000144b: 48 63 4d fc                 	movslq	-4(%rbp), %rcx
10000144f: 48 8d 05 3a ab 00 00        	leaq	43834(%rip), %rax       ## 0x10000bf90 <_registers>
100001456: 0f be 34 08                 	movsbl	(%rax,%rcx), %esi
10000145a: 48 8d 3d e3 a8 00 00        	leaq	43235(%rip), %rdi       ## 0x10000bd44 <_strnlen+0x10000bd44>
100001461: b0 00                       	movb	$0, %al
100001463: e8 fd a7 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001468: 8b 7d fc                    	movl	-4(%rbp), %edi
10000146b: 31 f6                       	xorl	%esi, %esi
10000146d: e8 5e fe ff ff              	callq	0x1000012d0 <_print_bin>
100001472: 48 8d 3d e8 a8 00 00        	leaq	43240(%rip), %rdi       ## 0x10000bd61 <_strnlen+0x10000bd61>
100001479: b0 00                       	movb	$0, %al
10000147b: e8 e5 a7 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001480: 48 83 c4 10                 	addq	$16, %rsp
100001484: 5d                          	popq	%rbp
100001485: c3                          	retq
100001486: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100001490 <_bh_init_string>:
100001490: 55                          	pushq	%rbp
100001491: 48 89 e5                    	movq	%rsp, %rbp
100001494: 48 83 ec 10                 	subq	$16, %rsp
100001498: bf 10 00 00 00              	movl	$16, %edi
10000149d: e8 b1 a7 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
1000014a2: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000014a6: 48 83 7d f8 00              	cmpq	$0, -8(%rbp)
1000014ab: 0f 85 11 00 00 00           	jne	0x1000014c2 <_bh_init_string+0x32>
1000014b1: 48 8d 3d 0d a8 00 00        	leaq	43021(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
1000014b8: be 77 00 00 00              	movl	$119, %esi
1000014bd: e8 6e f5 ff ff              	callq	0x100000a30 <_memoryfailure>
1000014c2: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000014c6: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000014cd: bf 08 00 00 00              	movl	$8, %edi
1000014d2: e8 7c a7 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
1000014d7: 48 89 c1                    	movq	%rax, %rcx
1000014da: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000014de: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000014e2: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000014e6: 48 83 78 08 00              	cmpq	$0, 8(%rax)
1000014eb: 0f 85 11 00 00 00           	jne	0x100001502 <_bh_init_string+0x72>
1000014f1: 48 8d 3d cd a7 00 00        	leaq	42957(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
1000014f8: be 77 00 00 00              	movl	$119, %esi
1000014fd: e8 2e f5 ff ff              	callq	0x100000a30 <_memoryfailure>
100001502: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001506: 48 83 c4 10                 	addq	$16, %rsp
10000150a: 5d                          	popq	%rbp
10000150b: c3                          	retq
10000150c: 0f 1f 40 00                 	nopl	(%rax)

0000000100001510 <_bh_append_string>:
100001510: 55                          	pushq	%rbp
100001511: 48 89 e5                    	movq	%rsp, %rbp
100001514: 48 83 ec 10                 	subq	$16, %rsp
100001518: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000151c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001520: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001524: 48 8b 08                    	movq	(%rax), %rcx
100001527: 48 83 c1 01                 	addq	$1, %rcx
10000152b: 48 89 08                    	movq	%rcx, (%rax)
10000152e: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001532: 48 8b 78 08                 	movq	8(%rax), %rdi
100001536: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000153a: 48 8b 30                    	movq	(%rax), %rsi
10000153d: 48 c1 e6 03                 	shlq	$3, %rsi
100001541: e8 2b a7 00 00              	callq	0x10000bc71 <_strnlen+0x10000bc71>
100001546: 48 89 c1                    	movq	%rax, %rcx
100001549: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000154d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001551: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001555: 48 83 78 08 00              	cmpq	$0, 8(%rax)
10000155a: 0f 85 11 00 00 00           	jne	0x100001571 <_bh_append_string+0x61>
100001560: 48 8d 3d 5e a7 00 00        	leaq	42846(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
100001567: be 77 00 00 00              	movl	$119, %esi
10000156c: e8 bf f4 ff ff              	callq	0x100000a30 <_memoryfailure>
100001571: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100001575: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001579: 48 8b 40 08                 	movq	8(%rax), %rax
10000157d: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100001581: 48 8b 09                    	movq	(%rcx), %rcx
100001584: 48 83 e9 01                 	subq	$1, %rcx
100001588: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
10000158c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001590: 48 83 c4 10                 	addq	$16, %rsp
100001594: 5d                          	popq	%rbp
100001595: c3                          	retq
100001596: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000015a0 <_bh_remove_string>:
1000015a0: 55                          	pushq	%rbp
1000015a1: 48 89 e5                    	movq	%rsp, %rbp
1000015a4: 48 83 ec 10                 	subq	$16, %rsp
1000015a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000015ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015b0: 48 8b 08                    	movq	(%rax), %rcx
1000015b3: 48 83 c1 ff                 	addq	$-1, %rcx
1000015b7: 48 89 08                    	movq	%rcx, (%rax)
1000015ba: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015be: 48 8b 40 08                 	movq	8(%rax), %rax
1000015c2: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000015c6: 48 8b 09                    	movq	(%rcx), %rcx
1000015c9: 48 c7 04 c8 00 00 00 00     	movq	$0, (%rax,%rcx,8)
1000015d1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015d5: 48 8b 78 08                 	movq	8(%rax), %rdi
1000015d9: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015dd: 48 8b 30                    	movq	(%rax), %rsi
1000015e0: 48 c1 e6 03                 	shlq	$3, %rsi
1000015e4: e8 88 a6 00 00              	callq	0x10000bc71 <_strnlen+0x10000bc71>
1000015e9: 48 89 c1                    	movq	%rax, %rcx
1000015ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015f0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000015f4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000015f8: 48 83 78 08 00              	cmpq	$0, 8(%rax)
1000015fd: 0f 85 11 00 00 00           	jne	0x100001614 <_bh_remove_string+0x74>
100001603: 48 8d 3d bb a6 00 00        	leaq	42683(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
10000160a: be 77 00 00 00              	movl	$119, %esi
10000160f: e8 1c f4 ff ff              	callq	0x100000a30 <_memoryfailure>
100001614: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001618: 48 83 c4 10                 	addq	$16, %rsp
10000161c: 5d                          	popq	%rbp
10000161d: c3                          	retq
10000161e: 66 90                       	nop

0000000100001620 <_trim>:
100001620: 55                          	pushq	%rbp
100001621: 48 89 e5                    	movq	%rsp, %rbp
100001624: 48 83 ec 50                 	subq	$80, %rsp
100001628: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000162c: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100001631: 0f 85 0d 00 00 00           	jne	0x100001644 <_trim+0x24>
100001637: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000163f: e9 bf 01 00 00              	jmp	0x100001803 <_trim+0x1e3>
100001644: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001648: e8 30 a6 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
10000164d: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001651: 48 c7 45 e0 ff ff ff ff     	movq	$-1, -32(%rbp)
100001659: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000165d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001661: 48 89 ca                    	movq	%rcx, %rdx
100001664: 48 83 c2 01                 	addq	$1, %rdx
100001668: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
10000166c: 0f be 4c 08 01              	movsbl	1(%rax,%rcx), %ecx
100001671: b0 01                       	movb	$1, %al
100001673: 83 f9 20                    	cmpl	$32, %ecx
100001676: 88 45 bf                    	movb	%al, -65(%rbp)
100001679: 0f 84 2f 00 00 00           	je	0x1000016ae <_trim+0x8e>
10000167f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001683: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001687: 0f be 0c 08                 	movsbl	(%rax,%rcx), %ecx
10000168b: b0 01                       	movb	$1, %al
10000168d: 83 f9 0a                    	cmpl	$10, %ecx
100001690: 88 45 bf                    	movb	%al, -65(%rbp)
100001693: 0f 84 15 00 00 00           	je	0x1000016ae <_trim+0x8e>
100001699: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000169d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000016a1: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000016a5: 83 f8 09                    	cmpl	$9, %eax
1000016a8: 0f 94 c0                    	sete	%al
1000016ab: 88 45 bf                    	movb	%al, -65(%rbp)
1000016ae: 8a 45 bf                    	movb	-65(%rbp), %al
1000016b1: a8 01                       	testb	$1, %al
1000016b3: 0f 85 05 00 00 00           	jne	0x1000016be <_trim+0x9e>
1000016b9: e9 05 00 00 00              	jmp	0x1000016c3 <_trim+0xa3>
1000016be: e9 96 ff ff ff              	jmp	0x100001659 <_trim+0x39>
1000016c3: 48 c7 45 d8 ff ff ff ff     	movq	$-1, -40(%rbp)
1000016cb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000016cf: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000016d3: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000016d7: 48 83 c2 01                 	addq	$1, %rdx
1000016db: 48 89 55 d8                 	movq	%rdx, -40(%rbp)
1000016df: 48 29 d1                    	subq	%rdx, %rcx
1000016e2: 48 83 e9 01                 	subq	$1, %rcx
1000016e6: 0f be 0c 08                 	movsbl	(%rax,%rcx), %ecx
1000016ea: b0 01                       	movb	$1, %al
1000016ec: 83 f9 20                    	cmpl	$32, %ecx
1000016ef: 88 45 be                    	movb	%al, -66(%rbp)
1000016f2: 0f 84 3f 00 00 00           	je	0x100001737 <_trim+0x117>
1000016f8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000016fc: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001700: 48 2b 4d d8                 	subq	-40(%rbp), %rcx
100001704: 48 83 e9 01                 	subq	$1, %rcx
100001708: 0f be 0c 08                 	movsbl	(%rax,%rcx), %ecx
10000170c: b0 01                       	movb	$1, %al
10000170e: 83 f9 0a                    	cmpl	$10, %ecx
100001711: 88 45 be                    	movb	%al, -66(%rbp)
100001714: 0f 84 1d 00 00 00           	je	0x100001737 <_trim+0x117>
10000171a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000171e: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001722: 48 2b 4d d8                 	subq	-40(%rbp), %rcx
100001726: 48 83 e9 01                 	subq	$1, %rcx
10000172a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000172e: 83 f8 09                    	cmpl	$9, %eax
100001731: 0f 94 c0                    	sete	%al
100001734: 88 45 be                    	movb	%al, -66(%rbp)
100001737: 8a 45 be                    	movb	-66(%rbp), %al
10000173a: a8 01                       	testb	$1, %al
10000173c: 0f 85 05 00 00 00           	jne	0x100001747 <_trim+0x127>
100001742: e9 05 00 00 00              	jmp	0x10000174c <_trim+0x12c>
100001747: e9 7f ff ff ff              	jmp	0x1000016cb <_trim+0xab>
10000174c: 48 83 7d e0 00              	cmpq	$0, -32(%rbp)
100001751: 0f 85 18 00 00 00           	jne	0x10000176f <_trim+0x14f>
100001757: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000175c: 0f 85 0d 00 00 00           	jne	0x10000176f <_trim+0x14f>
100001762: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001766: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000176a: e9 94 00 00 00              	jmp	0x100001803 <_trim+0x1e3>
10000176f: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001773: 48 2b 7d e0                 	subq	-32(%rbp), %rdi
100001777: 48 2b 7d d8                 	subq	-40(%rbp), %rdi
10000177b: 48 c1 e7 00                 	shlq	$0, %rdi
10000177f: e8 cf a4 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100001784: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001788: 48 83 7d d0 00              	cmpq	$0, -48(%rbp)
10000178d: 0f 85 11 00 00 00           	jne	0x1000017a4 <_trim+0x184>
100001793: 48 8d 3d 2b a5 00 00        	leaq	42283(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
10000179a: be 8b 00 00 00              	movl	$139, %esi
10000179f: e8 8c f2 ff ff              	callq	0x100000a30 <_memoryfailure>
1000017a4: 48 c7 45 c8 00 00 00 00     	movq	$0, -56(%rbp)
1000017ac: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000017b0: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000017b4: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000017b8: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000017bc: 48 2b 4d d8                 	subq	-40(%rbp), %rcx
1000017c0: 48 39 c8                    	cmpq	%rcx, %rax
1000017c3: 0f 83 32 00 00 00           	jae	0x1000017fb <_trim+0x1db>
1000017c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000017cd: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000017d1: 8a 14 08                    	movb	(%rax,%rcx), %dl
1000017d4: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000017d8: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000017dc: 48 89 ce                    	movq	%rcx, %rsi
1000017df: 48 83 c6 01                 	addq	$1, %rsi
1000017e3: 48 89 75 c8                 	movq	%rsi, -56(%rbp)
1000017e7: 88 14 08                    	movb	%dl, (%rax,%rcx)
1000017ea: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000017ee: 48 83 c0 01                 	addq	$1, %rax
1000017f2: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000017f6: e9 b9 ff ff ff              	jmp	0x1000017b4 <_trim+0x194>
1000017fb: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000017ff: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100001803: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001807: 48 83 c4 50                 	addq	$80, %rsp
10000180b: 5d                          	popq	%rbp
10000180c: c3                          	retq
10000180d: 0f 1f 00                    	nopl	(%rax)

0000000100001810 <_split>:
100001810: 55                          	pushq	%rbp
100001811: 48 89 e5                    	movq	%rsp, %rbp
100001814: 48 83 ec 60                 	subq	$96, %rsp
100001818: 40 88 f0                    	movb	%sil, %al
10000181b: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000181f: 88 45 f7                    	movb	%al, -9(%rbp)
100001822: e8 69 fc ff ff              	callq	0x100001490 <_bh_init_string>
100001827: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000182b: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100001833: 48 c7 45 d8 00 00 00 00     	movq	$0, -40(%rbp)
10000183b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000183f: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001843: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001847: 48 89 45 a8                 	movq	%rax, -88(%rbp)
10000184b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000184f: e8 29 a4 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100001854: 48 89 c1                    	movq	%rax, %rcx
100001857: 48 8b 45 a8                 	movq	-88(%rbp), %rax
10000185b: 48 39 c8                    	cmpq	%rcx, %rax
10000185e: 0f 83 06 01 00 00           	jae	0x10000196a <_split+0x15a>
100001864: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001868: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000186c: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100001870: 0f be 4d f7                 	movsbl	-9(%rbp), %ecx
100001874: 39 c8                       	cmpl	%ecx, %eax
100001876: 0f 85 d8 00 00 00           	jne	0x100001954 <_split+0x144>
10000187c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001880: 48 2b 45 e0                 	subq	-32(%rbp), %rax
100001884: 48 83 f8 00                 	cmpq	$0, %rax
100001888: 0f 85 15 00 00 00           	jne	0x1000018a3 <_split+0x93>
10000188e: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001892: 48 8d 35 2b a4 00 00        	leaq	42027(%rip), %rsi       ## 0x10000bcc4 <_strnlen+0x10000bcc4>
100001899: e8 72 fc ff ff              	callq	0x100001510 <_bh_append_string>
10000189e: e9 b6 00 00 00              	jmp	0x100001959 <_split+0x149>
1000018a3: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000018a7: 48 2b 7d e0                 	subq	-32(%rbp), %rdi
1000018ab: 48 c1 e7 00                 	shlq	$0, %rdi
1000018af: e8 9f a3 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
1000018b4: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000018b8: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
1000018bd: 0f 85 11 00 00 00           	jne	0x1000018d4 <_split+0xc4>
1000018c3: 48 8d 3d fb a3 00 00        	leaq	41979(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
1000018ca: be a3 00 00 00              	movl	$163, %esi
1000018cf: e8 5c f1 ff ff              	callq	0x100000a30 <_memoryfailure>
1000018d4: 48 c7 45 c0 00 00 00 00     	movq	$0, -64(%rbp)
1000018dc: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000018e0: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000018e4: 48 2b 4d e0                 	subq	-32(%rbp), %rcx
1000018e8: 48 39 c8                    	cmpq	%rcx, %rax
1000018eb: 0f 83 27 00 00 00           	jae	0x100001918 <_split+0x108>
1000018f1: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000018f5: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
1000018f9: 8a 14 08                    	movb	(%rax,%rcx), %dl
1000018fc: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100001900: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100001904: 88 14 08                    	movb	%dl, (%rax,%rcx)
100001907: 48 8b 45 c0                 	movq	-64(%rbp), %rax
10000190b: 48 83 c0 01                 	addq	$1, %rax
10000190f: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100001913: e9 c4 ff ff ff              	jmp	0x1000018dc <_split+0xcc>
100001918: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000191c: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100001920: 48 8b 7d c8                 	movq	-56(%rbp), %rdi
100001924: e8 f7 fc ff ff              	callq	0x100001620 <_trim>
100001929: 48 8b 7d a0                 	movq	-96(%rbp), %rdi
10000192d: 48 89 c6                    	movq	%rax, %rsi
100001930: e8 db fb ff ff              	callq	0x100001510 <_bh_append_string>
100001935: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100001939: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000193d: 48 83 c1 01                 	addq	$1, %rcx
100001941: 48 01 c8                    	addq	%rcx, %rax
100001944: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001948: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000194c: 48 83 c0 01                 	addq	$1, %rax
100001950: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001954: e9 00 00 00 00              	jmp	0x100001959 <_split+0x149>
100001959: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000195d: 48 83 c0 01                 	addq	$1, %rax
100001961: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100001965: e9 d9 fe ff ff              	jmp	0x100001843 <_split+0x33>
10000196a: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000196e: 48 2b 7d e0                 	subq	-32(%rbp), %rdi
100001972: 48 c1 e7 00                 	shlq	$0, %rdi
100001976: e8 d8 a2 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
10000197b: 48 89 45 b8                 	movq	%rax, -72(%rbp)
10000197f: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
100001984: 0f 85 11 00 00 00           	jne	0x10000199b <_split+0x18b>
10000198a: 48 8d 3d 34 a3 00 00        	leaq	41780(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
100001991: be ac 00 00 00              	movl	$172, %esi
100001996: e8 95 f0 ff ff              	callq	0x100000a30 <_memoryfailure>
10000199b: 48 c7 45 b0 00 00 00 00     	movq	$0, -80(%rbp)
1000019a3: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000019a7: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000019ab: 48 2b 4d e0                 	subq	-32(%rbp), %rcx
1000019af: 48 39 c8                    	cmpq	%rcx, %rax
1000019b2: 0f 83 27 00 00 00           	jae	0x1000019df <_split+0x1cf>
1000019b8: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000019bc: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
1000019c0: 8a 14 08                    	movb	(%rax,%rcx), %dl
1000019c3: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000019c7: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
1000019cb: 88 14 08                    	movb	%dl, (%rax,%rcx)
1000019ce: 48 8b 45 b0                 	movq	-80(%rbp), %rax
1000019d2: 48 83 c0 01                 	addq	$1, %rax
1000019d6: 48 89 45 b0                 	movq	%rax, -80(%rbp)
1000019da: e9 c4 ff ff ff              	jmp	0x1000019a3 <_split+0x193>
1000019df: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
1000019e3: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
1000019e7: e8 24 fb ff ff              	callq	0x100001510 <_bh_append_string>
1000019ec: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000019f0: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000019f4: 48 83 c1 01                 	addq	$1, %rcx
1000019f8: 48 01 c8                    	addq	%rcx, %rax
1000019fb: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000019ff: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001a03: 48 83 c0 01                 	addq	$1, %rax
100001a07: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001a0b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001a0f: 48 83 c4 60                 	addq	$96, %rsp
100001a13: 5d                          	popq	%rbp
100001a14: c3                          	retq
100001a15: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100001a20 <_create_macro_function>:
100001a20: 55                          	pushq	%rbp
100001a21: 48 89 e5                    	movq	%rsp, %rbp
100001a24: 48 83 ec 20                 	subq	$32, %rsp
100001a28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001a2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100001a30: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100001a34: bf 18 00 00 00              	movl	$24, %edi
100001a39: e8 15 a2 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100001a3e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001a42: 48 83 7d e0 00              	cmpq	$0, -32(%rbp)
100001a47: 0f 85 11 00 00 00           	jne	0x100001a5e <_create_macro_function+0x3e>
100001a4d: 48 8d 3d 71 a2 00 00        	leaq	41585(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
100001a54: be c0 00 00 00              	movl	$192, %esi
100001a59: e8 d2 ef ff ff              	callq	0x100000a30 <_memoryfailure>
100001a5e: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100001a62: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001a66: 48 89 08                    	movq	%rcx, (%rax)
100001a69: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001a6d: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001a71: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001a75: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001a79: be 2c 00 00 00              	movl	$44, %esi
100001a7e: e8 8d fd ff ff              	callq	0x100001810 <_split>
100001a83: 48 89 c1                    	movq	%rax, %rcx
100001a86: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001a8a: 48 89 48 10                 	movq	%rcx, 16(%rax)
100001a8e: 48 8d 05 93 e5 00 00        	leaq	58771(%rip), %rax       ## 0x100010028 <_macro_functions>
100001a95: 48 8b 38                    	movq	(%rax), %rdi
100001a98: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100001a9c: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100001aa0: e8 3b f0 ff ff              	callq	0x100000ae0 <_bh_ht_set>
100001aa5: 48 83 c4 20                 	addq	$32, %rsp
100001aa9: 5d                          	popq	%rbp
100001aaa: c3                          	retq
100001aab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100001ab0 <_run_macro>:
100001ab0: 55                          	pushq	%rbp
100001ab1: 48 89 e5                    	movq	%rsp, %rbp
100001ab4: 48 83 ec 30                 	subq	$48, %rsp
100001ab8: 48 8d 45 10                 	leaq	16(%rbp), %rax
100001abc: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100001ac0: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001ac4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001ac8: be 2c 00 00 00              	movl	$44, %esi
100001acd: e8 3e fd ff ff              	callq	0x100001810 <_split>
100001ad2: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100001ad6: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001ada: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ade: 48 8b 00                    	movq	(%rax), %rax
100001ae1: 48 8b 49 10                 	movq	16(%rcx), %rcx
100001ae5: 48 3b 01                    	cmpq	(%rcx), %rax
100001ae8: 0f 84 1f 00 00 00           	je	0x100001b0d <_run_macro+0x5d>
100001aee: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001af2: 48 8b 30                    	movq	(%rax), %rsi
100001af5: 48 8d 3d 67 a2 00 00        	leaq	41575(%rip), %rdi       ## 0x10000bd63 <_strnlen+0x10000bd63>
100001afc: 31 c0                       	xorl	%eax, %eax
100001afe: e8 62 a1 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100001b03: bf 01 00 00 00              	movl	$1, %edi
100001b08: e8 28 a1 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100001b0d: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001b11: 48 8b 78 08                 	movq	8(%rax), %rdi
100001b15: e8 63 a1 00 00              	callq	0x10000bc7d <_strnlen+0x10000bc7d>
100001b1a: 48 89 c7                    	movq	%rax, %rdi
100001b1d: 48 c1 e7 00                 	shlq	$0, %rdi
100001b21: e8 2d a1 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100001b26: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001b2a: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
100001b2f: 0f 85 11 00 00 00           	jne	0x100001b46 <_run_macro+0x96>
100001b35: 48 8d 3d 89 a1 00 00        	leaq	41353(%rip), %rdi       ## 0x10000bcc5 <_strnlen+0x10000bcc5>
100001b3c: be d1 00 00 00              	movl	$209, %esi
100001b41: e8 ea ee ff ff              	callq	0x100000a30 <_memoryfailure>
100001b46: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001b4a: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001b4e: 48 8b 70 08                 	movq	8(%rax), %rsi
100001b52: 48 c7 c2 ff ff ff ff        	movq	$-1, %rdx
100001b59: e8 cb a0 00 00              	callq	0x10000bc29 <_strnlen+0x10000bc29>
100001b5e: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100001b66: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100001b6a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001b6e: 48 8b 49 10                 	movq	16(%rcx), %rcx
100001b72: 48 3b 01                    	cmpq	(%rcx), %rax
100001b75: 0f 83 42 00 00 00           	jae	0x100001bbd <_run_macro+0x10d>
100001b7b: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100001b7f: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001b83: 48 8b 40 10                 	movq	16(%rax), %rax
100001b87: 48 8b 40 08                 	movq	8(%rax), %rax
100001b8b: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001b8f: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100001b93: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001b97: 48 8b 40 08                 	movq	8(%rax), %rax
100001b9b: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100001b9f: 48 8b 14 c8                 	movq	(%rax,%rcx,8), %rdx
100001ba3: e8 78 f1 ff ff              	callq	0x100000d20 <_replaceAll>
100001ba8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100001bac: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100001bb0: 48 83 c0 01                 	addq	$1, %rax
100001bb4: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100001bb8: e9 a9 ff ff ff              	jmp	0x100001b66 <_run_macro+0xb6>
100001bbd: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
100001bc1: e8 ca f3 ff ff              	callq	0x100000f90 <_run_code>
100001bc6: 48 83 c4 30                 	addq	$48, %rsp
100001bca: 5d                          	popq	%rbp
100001bcb: c3                          	retq
100001bcc: 0f 1f 40 00                 	nopl	(%rax)

0000000100001bd0 <_pcc_context__create>:
100001bd0: 55                          	pushq	%rbp
100001bd1: 48 89 e5                    	movq	%rsp, %rbp
100001bd4: 48 83 ec 10                 	subq	$16, %rsp
100001bd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100001bdc: bf d0 00 00 00              	movl	$208, %edi
100001be1: e8 da 10 00 00              	callq	0x100002cc0 <_pcc_malloc_e>
100001be6: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100001bea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001bee: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100001bf5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001bf9: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100001c01: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001c05: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100001c0d: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c11: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c15: 48 83 c6 18                 	addq	$24, %rsi
100001c19: e8 f2 10 00 00              	callq	0x100002d10 <_pcc_char_array__init>
100001c1e: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c22: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c26: 48 83 c6 30                 	addq	$48, %rsi
100001c2a: e8 21 11 00 00              	callq	0x100002d50 <_pcc_lr_table__init>
100001c2f: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c33: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c37: 48 83 c6 50                 	addq	$80, %rsi
100001c3b: e8 50 11 00 00              	callq	0x100002d90 <_pcc_lr_stack__init>
100001c40: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c44: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c48: 48 83 c6 68                 	addq	$104, %rsi
100001c4c: e8 7f 11 00 00              	callq	0x100002dd0 <_pcc_thunk_array__init>
100001c51: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c55: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c59: 48 81 c6 88 00 00 00        	addq	$136, %rsi
100001c60: ba 50 00 00 00              	movl	$80, %edx
100001c65: e8 a6 11 00 00              	callq	0x100002e10 <_pcc_memory_recycler__init>
100001c6a: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c6e: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c72: 48 81 c6 a0 00 00 00        	addq	$160, %rsi
100001c79: ba 40 00 00 00              	movl	$64, %edx
100001c7e: e8 8d 11 00 00              	callq	0x100002e10 <_pcc_memory_recycler__init>
100001c83: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100001c87: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001c8b: 48 81 c6 b8 00 00 00        	addq	$184, %rsi
100001c92: ba 20 00 00 00              	movl	$32, %edx
100001c97: e8 74 11 00 00              	callq	0x100002e10 <_pcc_memory_recycler__init>
100001c9c: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
100001ca0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ca4: 48 89 88 80 00 00 00        	movq	%rcx, 128(%rax)
100001cab: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001caf: 48 83 c4 10                 	addq	$16, %rsp
100001cb3: 5d                          	popq	%rbp
100001cb4: c3                          	retq
100001cb5: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100001cc0 <_pcc_apply_rule>:
100001cc0: 55                          	pushq	%rbp
100001cc1: 48 89 e5                    	movq	%rsp, %rbp
100001cc4: 48 81 ec 80 00 00 00        	subq	$128, %rsp
100001ccb: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100001ccf: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100001cd3: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100001cd7: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100001cdb: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100001ce3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ce7: 48 8b 00                    	movq	(%rax), %rax
100001cea: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100001cee: 48 03 41 08                 	addq	8(%rcx), %rax
100001cf2: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100001cf6: c7 45 c4 01 00 00 00        	movl	$1, -60(%rbp)
100001cfd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001d01: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001d05: 48 83 c6 30                 	addq	$48, %rsi
100001d09: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001d0d: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001d11: e8 3a 11 00 00              	callq	0x100002e50 <_pcc_lr_table__get_answer>
100001d16: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001d1a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001d1e: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001d22: 48 83 c6 30                 	addq	$48, %rsi
100001d26: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001d2a: e8 b1 11 00 00              	callq	0x100002ee0 <_pcc_lr_table__get_head>
100001d2f: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100001d33: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
100001d38: 0f 84 e0 00 00 00           	je	0x100001e1e <_pcc_apply_rule+0x15e>
100001d3e: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
100001d43: 0f 85 4b 00 00 00           	jne	0x100001d94 <_pcc_apply_rule+0xd4>
100001d49: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001d4d: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100001d51: 48 3b 01                    	cmpq	(%rcx), %rax
100001d54: 0f 84 3a 00 00 00           	je	0x100001d94 <_pcc_apply_rule+0xd4>
100001d5a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d5e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001d65: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100001d69: 48 83 c6 08                 	addq	$8, %rsi
100001d6d: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001d71: e8 ea 11 00 00              	callq	0x100002f60 <_pcc_rule_set__index>
100001d76: 48 83 f8 ff                 	cmpq	$-1, %rax
100001d7a: 0f 85 14 00 00 00           	jne	0x100001d94 <_pcc_apply_rule+0xd4>
100001d80: c7 45 c4 00 00 00 00        	movl	$0, -60(%rbp)
100001d87: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100001d8f: e9 85 00 00 00              	jmp	0x100001e19 <_pcc_apply_rule+0x159>
100001d94: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001d98: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001d9f: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100001da3: 48 83 c6 20                 	addq	$32, %rsi
100001da7: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100001dab: e8 30 12 00 00              	callq	0x100002fe0 <_pcc_rule_set__remove>
100001db0: 83 f8 00                    	cmpl	$0, %eax
100001db3: 0f 84 5b 00 00 00           	je	0x100001e14 <_pcc_apply_rule+0x154>
100001db9: c7 45 c4 00 00 00 00        	movl	$0, -60(%rbp)
100001dc0: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100001dc4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001dc8: ff d0                       	callq	*%rax
100001dca: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001dce: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001dd2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001dd6: 48 8b 10                    	movq	(%rax), %rdx
100001dd9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ddd: 48 03 50 08                 	addq	8(%rax), %rdx
100001de1: be 01 00 00 00              	movl	$1, %esi
100001de6: e8 95 12 00 00              	callq	0x100003080 <_pcc_lr_answer__create>
100001deb: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001def: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100001df3: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001df7: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001dfb: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001dff: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001e03: 48 83 c6 30                 	addq	$48, %rsi
100001e07: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001e0b: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100001e0f: e8 2c 13 00 00              	callq	0x100003140 <_pcc_lr_table__hold_answer>
100001e14: e9 00 00 00 00              	jmp	0x100001e19 <_pcc_apply_rule+0x159>
100001e19: e9 00 00 00 00              	jmp	0x100001e1e <_pcc_apply_rule+0x15e>
100001e1e: 83 7d c4 00                 	cmpl	$0, -60(%rbp)
100001e22: 0f 84 0e 04 00 00           	je	0x100002236 <_pcc_apply_rule+0x576>
100001e28: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
100001e2d: 0f 84 63 01 00 00           	je	0x100001f96 <_pcc_apply_rule+0x2d6>
100001e33: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001e37: 48 8b 48 10                 	movq	16(%rax), %rcx
100001e3b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001e3f: 48 8b 10                    	movq	(%rax), %rdx
100001e42: 48 29 d1                    	subq	%rdx, %rcx
100001e45: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001e49: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001e4d: 8b 00                       	movl	(%rax), %eax
100001e4f: 89 45 9c                    	movl	%eax, -100(%rbp)
100001e52: 85 c0                       	testl	%eax, %eax
100001e54: 0f 84 16 00 00 00           	je	0x100001e70 <_pcc_apply_rule+0x1b0>
100001e5a: e9 00 00 00 00              	jmp	0x100001e5f <_pcc_apply_rule+0x19f>
100001e5f: 8b 45 9c                    	movl	-100(%rbp), %eax
100001e62: 83 e8 01                    	subl	$1, %eax
100001e65: 0f 84 10 01 00 00           	je	0x100001f7b <_pcc_apply_rule+0x2bb>
100001e6b: e9 1c 01 00 00              	jmp	0x100001f8c <_pcc_apply_rule+0x2cc>
100001e70: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001e74: 48 8b 40 08                 	movq	8(%rax), %rax
100001e78: 48 83 78 10 00              	cmpq	$0, 16(%rax)
100001e7d: 0f 85 3d 00 00 00           	jne	0x100001ec0 <_pcc_apply_rule+0x200>
100001e83: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001e87: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001e8b: e8 70 13 00 00              	callq	0x100003200 <_pcc_lr_head__create>
100001e90: 48 89 c1                    	movq	%rax, %rcx
100001e93: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001e97: 48 8b 40 08                 	movq	8(%rax), %rax
100001e9b: 48 89 48 10                 	movq	%rcx, 16(%rax)
100001e9f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001ea3: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001ea7: 48 83 c6 30                 	addq	$48, %rsi
100001eab: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001eaf: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001eb3: 48 8b 40 08                 	movq	8(%rax), %rax
100001eb7: 48 8b 48 10                 	movq	16(%rax), %rcx
100001ebb: e8 c0 13 00 00              	callq	0x100003280 <_pcc_lr_table__hold_head>
100001ec0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ec4: 48 8b 40 60                 	movq	96(%rax), %rax
100001ec8: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100001ecc: 48 83 7d a8 00              	cmpq	$0, -88(%rbp)
100001ed1: 0f 86 8f 00 00 00           	jbe	0x100001f66 <_pcc_apply_rule+0x2a6>
100001ed7: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100001edb: 48 83 c0 ff                 	addq	$-1, %rax
100001edf: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100001ee3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001ee7: 48 8b 40 50                 	movq	80(%rax), %rax
100001eeb: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100001eef: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100001ef3: 48 8b 40 10                 	movq	16(%rax), %rax
100001ef7: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100001efb: 48 8b 49 08                 	movq	8(%rcx), %rcx
100001eff: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100001f03: 0f 85 05 00 00 00           	jne	0x100001f0e <_pcc_apply_rule+0x24e>
100001f09: e9 58 00 00 00              	jmp	0x100001f66 <_pcc_apply_rule+0x2a6>
100001f0e: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001f12: 48 8b 40 08                 	movq	8(%rax), %rax
100001f16: 48 8b 48 10                 	movq	16(%rax), %rcx
100001f1a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001f1e: 48 8b 40 50                 	movq	80(%rax), %rax
100001f22: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100001f26: 48 8b 04 d0                 	movq	(%rax,%rdx,8), %rax
100001f2a: 48 89 48 10                 	movq	%rcx, 16(%rax)
100001f2e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001f32: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001f39: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001f3d: 48 8b 40 08                 	movq	8(%rax), %rax
100001f41: 48 8b 70 10                 	movq	16(%rax), %rsi
100001f45: 48 83 c6 08                 	addq	$8, %rsi
100001f49: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001f4d: 48 8b 40 50                 	movq	80(%rax), %rax
100001f51: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100001f55: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100001f59: 48 8b 10                    	movq	(%rax), %rdx
100001f5c: e8 df 13 00 00              	callq	0x100003340 <_pcc_rule_set__add>
100001f61: e9 66 ff ff ff              	jmp	0x100001ecc <_pcc_apply_rule+0x20c>
100001f66: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001f6a: 48 8b 40 08                 	movq	8(%rax), %rax
100001f6e: 48 8b 40 08                 	movq	8(%rax), %rax
100001f72: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001f76: e9 16 00 00 00              	jmp	0x100001f91 <_pcc_apply_rule+0x2d1>
100001f7b: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001f7f: 48 8b 40 08                 	movq	8(%rax), %rax
100001f83: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100001f87: e9 05 00 00 00              	jmp	0x100001f91 <_pcc_apply_rule+0x2d1>
100001f8c: e9 00 00 00 00              	jmp	0x100001f91 <_pcc_apply_rule+0x2d1>
100001f91: e9 9b 02 00 00              	jmp	0x100002231 <_pcc_apply_rule+0x571>
100001f96: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001f9a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001fa1: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100001fa5: e8 d6 14 00 00              	callq	0x100003480 <_pcc_lr_entry__create>
100001faa: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100001fae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100001fb2: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100001fb9: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001fbd: 48 83 c6 50                 	addq	$80, %rsi
100001fc1: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100001fc5: e8 06 15 00 00              	callq	0x1000034d0 <_pcc_lr_stack__push>
100001fca: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001fce: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001fd2: 31 f6                       	xorl	%esi, %esi
100001fd4: e8 a7 10 00 00              	callq	0x100003080 <_pcc_lr_answer__create>
100001fd9: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100001fdd: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100001fe1: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100001fe5: 48 89 48 08                 	movq	%rcx, 8(%rax)
100001fe9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100001fed: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100001ff1: 48 83 c6 30                 	addq	$48, %rsi
100001ff5: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100001ff9: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100001ffd: 4c 8b 45 b8                 	movq	-72(%rbp), %r8
100002001: e8 da 15 00 00              	callq	0x1000035e0 <_pcc_lr_table__set_answer>
100002006: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000200a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000200e: ff d0                       	callq	*%rax
100002010: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100002014: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002018: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000201f: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002023: 48 83 c6 50                 	addq	$80, %rsi
100002027: e8 64 16 00 00              	callq	0x100003690 <_pcc_lr_stack__pop>
10000202c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002030: 48 8b 08                    	movq	(%rax), %rcx
100002033: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002037: 48 03 48 08                 	addq	8(%rax), %rcx
10000203b: 48 8b 45 b8                 	movq	-72(%rbp), %rax
10000203f: 48 89 48 10                 	movq	%rcx, 16(%rax)
100002043: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100002047: 48 83 78 10 00              	cmpq	$0, 16(%rax)
10000204c: 0f 85 16 00 00 00           	jne	0x100002068 <_pcc_apply_rule+0x3a8>
100002052: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002056: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
10000205a: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000205e: e8 5d 16 00 00              	callq	0x1000036c0 <_pcc_lr_answer__set_chunk>
100002063: e9 c4 01 00 00              	jmp	0x10000222c <_pcc_apply_rule+0x56c>
100002068: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
10000206c: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100002070: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002074: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002078: 48 8b 40 08                 	movq	8(%rax), %rax
10000207c: 48 8b 40 10                 	movq	16(%rax), %rax
100002080: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100002084: 48 8b 45 b0                 	movq	-80(%rbp), %rax
100002088: 48 8b 00                    	movq	(%rax), %rax
10000208b: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
10000208f: 0f 84 5b 00 00 00           	je	0x1000020f0 <_pcc_apply_rule+0x430>
100002095: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002099: 48 8b 40 08                 	movq	8(%rax), %rax
10000209d: 48 8b 40 08                 	movq	8(%rax), %rax
1000020a1: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000020a5: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000020a9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000020ad: 48 8b 10                    	movq	(%rax), %rdx
1000020b0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000020b4: 48 03 50 08                 	addq	8(%rax), %rdx
1000020b8: be 01 00 00 00              	movl	$1, %esi
1000020bd: e8 be 0f 00 00              	callq	0x100003080 <_pcc_lr_answer__create>
1000020c2: 48 89 45 b8                 	movq	%rax, -72(%rbp)
1000020c6: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000020ca: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000020ce: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000020d2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000020d6: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000020da: 48 83 c6 30                 	addq	$48, %rsi
1000020de: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000020e2: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000020e6: e8 55 10 00 00              	callq	0x100003140 <_pcc_lr_table__hold_answer>
1000020eb: e9 37 01 00 00              	jmp	0x100002227 <_pcc_apply_rule+0x567>
1000020f0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000020f4: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
1000020f8: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000020fc: 48 8b 40 08                 	movq	8(%rax), %rax
100002100: 48 8b 50 08                 	movq	8(%rax), %rdx
100002104: e8 b7 15 00 00              	callq	0x1000036c0 <_pcc_lr_answer__set_chunk>
100002109: 48 8b 45 b8                 	movq	-72(%rbp), %rax
10000210d: 48 83 78 08 00              	cmpq	$0, 8(%rax)
100002112: 0f 85 0d 00 00 00           	jne	0x100002125 <_pcc_apply_rule+0x465>
100002118: 48 c7 45 d0 00 00 00 00     	movq	$0, -48(%rbp)
100002120: e9 fd 00 00 00              	jmp	0x100002222 <_pcc_apply_rule+0x562>
100002125: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002129: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000212d: 48 83 c6 30                 	addq	$48, %rsi
100002131: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100002135: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100002139: e8 42 16 00 00              	callq	0x100003780 <_pcc_lr_table__set_head>
10000213e: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100002142: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002146: 48 2b 08                    	subq	(%rax), %rcx
100002149: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000214d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002151: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002155: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000215c: 48 8b 75 b0                 	movq	-80(%rbp), %rsi
100002160: 48 83 c6 20                 	addq	$32, %rsi
100002164: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
100002168: 48 83 c2 08                 	addq	$8, %rdx
10000216c: e8 af 16 00 00              	callq	0x100003820 <_pcc_rule_set__copy>
100002171: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002175: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002179: ff d0                       	callq	*%rax
10000217b: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000217f: 48 83 7d d0 00              	cmpq	$0, -48(%rbp)
100002184: 0f 84 1d 00 00 00           	je	0x1000021a7 <_pcc_apply_rule+0x4e7>
10000218a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000218e: 48 8b 00                    	movq	(%rax), %rax
100002191: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002195: 48 03 41 08                 	addq	8(%rcx), %rax
100002199: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000219d: 48 3b 41 10                 	cmpq	16(%rcx), %rax
1000021a1: 0f 87 05 00 00 00           	ja	0x1000021ac <_pcc_apply_rule+0x4ec>
1000021a7: e9 2d 00 00 00              	jmp	0x1000021d9 <_pcc_apply_rule+0x519>
1000021ac: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021b0: 48 8b 75 b8                 	movq	-72(%rbp), %rsi
1000021b4: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000021b8: e8 03 15 00 00              	callq	0x1000036c0 <_pcc_lr_answer__set_chunk>
1000021bd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000021c1: 48 8b 08                    	movq	(%rax), %rcx
1000021c4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000021c8: 48 03 48 08                 	addq	8(%rax), %rcx
1000021cc: 48 8b 45 b8                 	movq	-72(%rbp), %rax
1000021d0: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000021d4: e9 65 ff ff ff              	jmp	0x10000213e <_pcc_apply_rule+0x47e>
1000021d9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021dd: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000021e1: e8 aa 16 00 00              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
1000021e6: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000021ea: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000021ee: 48 83 c6 30                 	addq	$48, %rsi
1000021f2: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000021f6: 31 c0                       	xorl	%eax, %eax
1000021f8: 89 c1                       	movl	%eax, %ecx
1000021fa: e8 81 15 00 00              	callq	0x100003780 <_pcc_lr_table__set_head>
1000021ff: 48 8b 45 b8                 	movq	-72(%rbp), %rax
100002203: 48 8b 48 10                 	movq	16(%rax), %rcx
100002207: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000220b: 48 2b 08                    	subq	(%rax), %rcx
10000220e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002212: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002216: 48 8b 45 b8                 	movq	-72(%rbp), %rax
10000221a: 48 8b 40 08                 	movq	8(%rax), %rax
10000221e: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100002222: e9 00 00 00 00              	jmp	0x100002227 <_pcc_apply_rule+0x567>
100002227: e9 00 00 00 00              	jmp	0x10000222c <_pcc_apply_rule+0x56c>
10000222c: e9 00 00 00 00              	jmp	0x100002231 <_pcc_apply_rule+0x571>
100002231: e9 00 00 00 00              	jmp	0x100002236 <_pcc_apply_rule+0x576>
100002236: 48 83 7d d0 00              	cmpq	$0, -48(%rbp)
10000223b: 0f 85 0c 00 00 00           	jne	0x10000224d <_pcc_apply_rule+0x58d>
100002241: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
100002248: e9 77 00 00 00              	jmp	0x1000022c4 <_pcc_apply_rule+0x604>
10000224d: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100002252: 0f 85 0b 00 00 00           	jne	0x100002263 <_pcc_apply_rule+0x5a3>
100002258: 48 8d 05 b1 dd 00 00        	leaq	56753(%rip), %rax       ## 0x100010010 <_pcc_apply_rule.null>
10000225f: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100002263: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
100002267: 31 f6                       	xorl	%esi, %esi
100002269: ba 08 00 00 00              	movl	$8, %edx
10000226e: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
100002275: e8 9d 99 00 00              	callq	0x10000bc17 <_strnlen+0x10000bc17>
10000227a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000227e: 48 8b 80 80 00 00 00        	movq	128(%rax), %rax
100002285: 48 89 45 88                 	movq	%rax, -120(%rbp)
100002289: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000228d: 48 89 45 90                 	movq	%rax, -112(%rbp)
100002291: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002295: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000229c: 48 8b 75 d0                 	movq	-48(%rbp), %rsi
1000022a0: 48 83 c6 30                 	addq	$48, %rsi
1000022a4: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000022a8: e8 83 17 00 00              	callq	0x100003a30 <_pcc_thunk__create_node>
1000022ad: 48 8b 7d 88                 	movq	-120(%rbp), %rdi
1000022b1: 48 8b 75 90                 	movq	-112(%rbp), %rsi
1000022b5: 48 89 c2                    	movq	%rax, %rdx
1000022b8: e8 63 16 00 00              	callq	0x100003920 <_pcc_thunk_array__add>
1000022bd: c7 45 fc 01 00 00 00        	movl	$1, -4(%rbp)
1000022c4: 8b 45 fc                    	movl	-4(%rbp), %eax
1000022c7: 48 81 c4 80 00 00 00        	addq	$128, %rsp
1000022ce: 5d                          	popq	%rbp
1000022cf: c3                          	retq

00000001000022d0 <_pcc_evaluate_rule_main>:
1000022d0: 55                          	pushq	%rbp
1000022d1: 48 89 e5                    	movq	%rsp, %rbp
1000022d4: 48 83 ec 60                 	subq	$96, %rsp
1000022d8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000022dc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000022e0: e8 eb 22 00 00              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
1000022e5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000022e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000022ed: 48 8b 48 08                 	movq	8(%rax), %rcx
1000022f1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000022f5: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000022f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000022fd: 48 8b 48 10                 	movq	16(%rax), %rcx
100002301: 48 83 c1 01                 	addq	$1, %rcx
100002305: 48 89 48 10                 	movq	%rcx, 16(%rax)
100002309: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000230d: 48 8b 40 08                 	movq	8(%rax), %rax
100002311: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002315: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002319: 48 8b 40 40                 	movq	64(%rax), %rax
10000231d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100002321: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002325: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100002329: 48 83 c2 30                 	addq	$48, %rdx
10000232d: 48 8d 35 2c 23 00 00        	leaq	9004(%rip), %rsi        ## 0x100004660 <_pcc_evaluate_rule__>
100002334: 31 c0                       	xorl	%eax, %eax
100002336: 89 c1                       	movl	%eax, %ecx
100002338: e8 83 f9 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000233d: 83 f8 00                    	cmpl	$0, %eax
100002340: 0f 85 05 00 00 00           	jne	0x10000234b <_pcc_evaluate_rule_main+0x7b>
100002346: e9 b1 01 00 00              	jmp	0x1000024fc <_pcc_evaluate_rule_main+0x22c>
10000234b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000234f: be 0a 00 00 00              	movl	$10, %esi
100002354: e8 37 07 00 00              	callq	0x100002a90 <_pcc_refill_buffer>
100002359: 48 83 f8 0a                 	cmpq	$10, %rax
10000235d: 0f 82 2b 01 00 00           	jb	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002363: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002367: 48 8b 40 18                 	movq	24(%rax), %rax
10000236b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000236f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002373: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100002377: 83 f8 23                    	cmpl	$35, %eax
10000237a: 0f 85 0e 01 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002380: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002384: 48 8b 40 18                 	movq	24(%rax), %rax
100002388: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000238c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002390: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100002395: 83 f8 23                    	cmpl	$35, %eax
100002398: 0f 85 f0 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
10000239e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000023a2: 48 8b 40 18                 	movq	24(%rax), %rax
1000023a6: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000023aa: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000023ae: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000023b3: 83 f8 45                    	cmpl	$69, %eax
1000023b6: 0f 85 d2 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
1000023bc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000023c0: 48 8b 40 18                 	movq	24(%rax), %rax
1000023c4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000023c8: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000023cc: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
1000023d1: 83 f8 58                    	cmpl	$88, %eax
1000023d4: 0f 85 b4 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
1000023da: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000023de: 48 8b 40 18                 	movq	24(%rax), %rax
1000023e2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000023e6: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000023ea: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
1000023ef: 83 f8 50                    	cmpl	$80, %eax
1000023f2: 0f 85 96 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
1000023f8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000023fc: 48 8b 40 18                 	movq	24(%rax), %rax
100002400: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002404: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002408: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000240d: 83 f8 52                    	cmpl	$82, %eax
100002410: 0f 85 78 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002416: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000241a: 48 8b 40 18                 	movq	24(%rax), %rax
10000241e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002422: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002426: 0f be 44 08 06              	movsbl	6(%rax,%rcx), %eax
10000242b: 83 f8 4f                    	cmpl	$79, %eax
10000242e: 0f 85 5a 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002434: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002438: 48 8b 40 18                 	movq	24(%rax), %rax
10000243c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002440: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002444: 0f be 44 08 07              	movsbl	7(%rax,%rcx), %eax
100002449: 83 f8 4e                    	cmpl	$78, %eax
10000244c: 0f 85 3c 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002452: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002456: 48 8b 40 18                 	movq	24(%rax), %rax
10000245a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000245e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002462: 0f be 44 08 08              	movsbl	8(%rax,%rcx), %eax
100002467: 83 f8 4c                    	cmpl	$76, %eax
10000246a: 0f 85 1e 00 00 00           	jne	0x10000248e <_pcc_evaluate_rule_main+0x1be>
100002470: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002474: 48 8b 40 18                 	movq	24(%rax), %rax
100002478: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000247c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002480: 0f be 44 08 09              	movsbl	9(%rax,%rcx), %eax
100002485: 83 f8 59                    	cmpl	$89, %eax
100002488: 0f 84 05 00 00 00           	je	0x100002493 <_pcc_evaluate_rule_main+0x1c3>
10000248e: e9 69 00 00 00              	jmp	0x1000024fc <_pcc_evaluate_rule_main+0x22c>
100002493: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002497: 48 8b 48 08                 	movq	8(%rax), %rcx
10000249b: 48 83 c1 0a                 	addq	$10, %rcx
10000249f: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000024a3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000024a7: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000024ab: 48 83 c2 30                 	addq	$48, %rdx
1000024af: 48 8d 35 aa 21 00 00        	leaq	8618(%rip), %rsi        ## 0x100004660 <_pcc_evaluate_rule__>
1000024b6: 31 c0                       	xorl	%eax, %eax
1000024b8: 89 c1                       	movl	%eax, %ecx
1000024ba: e8 01 f8 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000024bf: 83 f8 00                    	cmpl	$0, %eax
1000024c2: 0f 85 05 00 00 00           	jne	0x1000024cd <_pcc_evaluate_rule_main+0x1fd>
1000024c8: e9 2f 00 00 00              	jmp	0x1000024fc <_pcc_evaluate_rule_main+0x22c>
1000024cd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000024d1: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000024d5: 48 83 c2 30                 	addq	$48, %rdx
1000024d9: 48 8d 35 d0 23 00 00        	leaq	9168(%rip), %rsi        ## 0x1000048b0 <_pcc_evaluate_rule_data>
1000024e0: 31 c0                       	xorl	%eax, %eax
1000024e2: 89 c1                       	movl	%eax, %ecx
1000024e4: e8 d7 f7 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000024e9: 83 f8 00                    	cmpl	$0, %eax
1000024ec: 0f 85 05 00 00 00           	jne	0x1000024f7 <_pcc_evaluate_rule_main+0x227>
1000024f2: e9 05 00 00 00              	jmp	0x1000024fc <_pcc_evaluate_rule_main+0x22c>
1000024f7: e9 43 03 00 00              	jmp	0x10000283f <_pcc_evaluate_rule_main+0x56f>
1000024fc: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002500: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002504: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002508: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000250c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002513: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002517: 48 83 c6 30                 	addq	$48, %rsi
10000251b: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000251f: e8 0c 05 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
100002524: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002528: 48 8b 40 08                 	movq	8(%rax), %rax
10000252c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100002530: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002534: 48 8b 40 40                 	movq	64(%rax), %rax
100002538: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000253c: c7 45 c4 00 00 00 00        	movl	$0, -60(%rbp)
100002543: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002547: 48 8b 40 08                 	movq	8(%rax), %rax
10000254b: 48 89 45 b8                 	movq	%rax, -72(%rbp)
10000254f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002553: 48 8b 40 40                 	movq	64(%rax), %rax
100002557: 48 89 45 b0                 	movq	%rax, -80(%rbp)
10000255b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000255f: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100002563: 48 83 c2 30                 	addq	$48, %rdx
100002567: 48 8d 35 f2 20 00 00        	leaq	8434(%rip), %rsi        ## 0x100004660 <_pcc_evaluate_rule__>
10000256e: 31 c0                       	xorl	%eax, %eax
100002570: 89 c1                       	movl	%eax, %ecx
100002572: e8 49 f7 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100002577: 83 f8 00                    	cmpl	$0, %eax
10000257a: 0f 85 05 00 00 00           	jne	0x100002585 <_pcc_evaluate_rule_main+0x2b5>
100002580: e9 16 02 00 00              	jmp	0x10000279b <_pcc_evaluate_rule_main+0x4cb>
100002585: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002589: 48 8b 40 08                 	movq	8(%rax), %rax
10000258d: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100002591: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002595: 48 8b 40 40                 	movq	64(%rax), %rax
100002599: 48 89 45 a0                 	movq	%rax, -96(%rbp)
10000259d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000025a1: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000025a5: 48 83 c2 30                 	addq	$48, %rdx
1000025a9: 48 8d 35 b0 24 00 00        	leaq	9392(%rip), %rsi        ## 0x100004a60 <_pcc_evaluate_rule_comment>
1000025b0: 31 c0                       	xorl	%eax, %eax
1000025b2: 89 c1                       	movl	%eax, %ecx
1000025b4: e8 07 f7 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000025b9: 83 f8 00                    	cmpl	$0, %eax
1000025bc: 0f 85 05 00 00 00           	jne	0x1000025c7 <_pcc_evaluate_rule_main+0x2f7>
1000025c2: e9 05 00 00 00              	jmp	0x1000025cc <_pcc_evaluate_rule_main+0x2fc>
1000025c7: e9 89 01 00 00              	jmp	0x100002755 <_pcc_evaluate_rule_main+0x485>
1000025cc: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
1000025d0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000025d4: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000025d8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000025dc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000025e3: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000025e7: 48 83 c6 30                 	addq	$48, %rsi
1000025eb: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000025ef: e8 3c 04 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000025f4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000025f8: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000025fc: 48 83 c2 30                 	addq	$48, %rdx
100002600: 48 8d 35 39 27 00 00        	leaq	10041(%rip), %rsi       ## 0x100004d40 <_pcc_evaluate_rule_macro_call>
100002607: 31 c0                       	xorl	%eax, %eax
100002609: 89 c1                       	movl	%eax, %ecx
10000260b: e8 b0 f6 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100002610: 83 f8 00                    	cmpl	$0, %eax
100002613: 0f 85 05 00 00 00           	jne	0x10000261e <_pcc_evaluate_rule_main+0x34e>
100002619: e9 05 00 00 00              	jmp	0x100002623 <_pcc_evaluate_rule_main+0x353>
10000261e: e9 32 01 00 00              	jmp	0x100002755 <_pcc_evaluate_rule_main+0x485>
100002623: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100002627: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000262b: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000262f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002633: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000263a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000263e: 48 83 c6 30                 	addq	$48, %rsi
100002642: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100002646: e8 e5 03 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000264b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000264f: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100002653: 48 83 c2 30                 	addq	$48, %rdx
100002657: 48 8d 35 c2 2a 00 00        	leaq	10946(%rip), %rsi       ## 0x100005120 <_pcc_evaluate_rule_instruction>
10000265e: 31 c0                       	xorl	%eax, %eax
100002660: 89 c1                       	movl	%eax, %ecx
100002662: e8 59 f6 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100002667: 83 f8 00                    	cmpl	$0, %eax
10000266a: 0f 85 05 00 00 00           	jne	0x100002675 <_pcc_evaluate_rule_main+0x3a5>
100002670: e9 05 00 00 00              	jmp	0x10000267a <_pcc_evaluate_rule_main+0x3aa>
100002675: e9 db 00 00 00              	jmp	0x100002755 <_pcc_evaluate_rule_main+0x485>
10000267a: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
10000267e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002682: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002686: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000268a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002691: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002695: 48 83 c6 30                 	addq	$48, %rsi
100002699: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000269d: e8 8e 03 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000026a2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000026a6: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000026aa: 48 83 c2 30                 	addq	$48, %rdx
1000026ae: 48 8d 35 0b 4b 00 00        	leaq	19211(%rip), %rsi       ## 0x1000071c0 <_pcc_evaluate_rule_define>
1000026b5: 31 c0                       	xorl	%eax, %eax
1000026b7: 89 c1                       	movl	%eax, %ecx
1000026b9: e8 02 f6 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000026be: 83 f8 00                    	cmpl	$0, %eax
1000026c1: 0f 85 05 00 00 00           	jne	0x1000026cc <_pcc_evaluate_rule_main+0x3fc>
1000026c7: e9 05 00 00 00              	jmp	0x1000026d1 <_pcc_evaluate_rule_main+0x401>
1000026cc: e9 84 00 00 00              	jmp	0x100002755 <_pcc_evaluate_rule_main+0x485>
1000026d1: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
1000026d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000026d9: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000026dd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000026e1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000026e8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000026ec: 48 83 c6 30                 	addq	$48, %rsi
1000026f0: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000026f4: e8 37 03 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000026f9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000026fd: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100002701: 48 83 c2 30                 	addq	$48, %rdx
100002705: 48 8d 35 e4 50 00 00        	leaq	20708(%rip), %rsi       ## 0x1000077f0 <_pcc_evaluate_rule_macro>
10000270c: 31 c0                       	xorl	%eax, %eax
10000270e: 89 c1                       	movl	%eax, %ecx
100002710: e8 ab f5 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100002715: 83 f8 00                    	cmpl	$0, %eax
100002718: 0f 85 05 00 00 00           	jne	0x100002723 <_pcc_evaluate_rule_main+0x453>
10000271e: e9 05 00 00 00              	jmp	0x100002728 <_pcc_evaluate_rule_main+0x458>
100002723: e9 2d 00 00 00              	jmp	0x100002755 <_pcc_evaluate_rule_main+0x485>
100002728: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
10000272c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002730: 48 89 48 08                 	movq	%rcx, 8(%rax)
100002734: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002738: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000273f: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002743: 48 83 c6 30                 	addq	$48, %rsi
100002747: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000274b: e8 e0 02 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
100002750: e9 46 00 00 00              	jmp	0x10000279b <_pcc_evaluate_rule_main+0x4cb>
100002755: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002759: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000275d: 48 83 c2 30                 	addq	$48, %rdx
100002761: 48 8d 35 f8 1e 00 00        	leaq	7928(%rip), %rsi        ## 0x100004660 <_pcc_evaluate_rule__>
100002768: 31 c0                       	xorl	%eax, %eax
10000276a: 89 c1                       	movl	%eax, %ecx
10000276c: e8 4f f5 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100002771: 83 f8 00                    	cmpl	$0, %eax
100002774: 0f 85 05 00 00 00           	jne	0x10000277f <_pcc_evaluate_rule_main+0x4af>
10000277a: e9 1c 00 00 00              	jmp	0x10000279b <_pcc_evaluate_rule_main+0x4cb>
10000277f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002783: 48 8b 40 08                 	movq	8(%rax), %rax
100002787: 48 3b 45 b8                 	cmpq	-72(%rbp), %rax
10000278b: 0f 85 05 00 00 00           	jne	0x100002796 <_pcc_evaluate_rule_main+0x4c6>
100002791: e9 40 00 00 00              	jmp	0x1000027d6 <_pcc_evaluate_rule_main+0x506>
100002796: e9 2d 00 00 00              	jmp	0x1000027c8 <_pcc_evaluate_rule_main+0x4f8>
10000279b: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000279f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000027a3: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000027a7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000027ab: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000027b2: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000027b6: 48 83 c6 30                 	addq	$48, %rsi
1000027ba: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
1000027be: e8 6d 02 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000027c3: e9 0e 00 00 00              	jmp	0x1000027d6 <_pcc_evaluate_rule_main+0x506>
1000027c8: 8b 45 c4                    	movl	-60(%rbp), %eax
1000027cb: 83 c0 01                    	addl	$1, %eax
1000027ce: 89 45 c4                    	movl	%eax, -60(%rbp)
1000027d1: e9 6d fd ff ff              	jmp	0x100002543 <_pcc_evaluate_rule_main+0x273>
1000027d6: 83 7d c4 01                 	cmpl	$1, -60(%rbp)
1000027da: 0f 8d 2d 00 00 00           	jge	0x10000280d <_pcc_evaluate_rule_main+0x53d>
1000027e0: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000027e4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000027e8: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000027ec: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000027f0: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000027f7: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000027fb: 48 83 c6 30                 	addq	$48, %rsi
1000027ff: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100002803: e8 28 02 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
100002808: e9 05 00 00 00              	jmp	0x100002812 <_pcc_evaluate_rule_main+0x542>
10000280d: e9 2d 00 00 00              	jmp	0x10000283f <_pcc_evaluate_rule_main+0x56f>
100002812: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002816: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000281a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000281e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002822: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002829: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000282d: 48 83 c6 30                 	addq	$48, %rsi
100002831: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100002835: e8 f6 01 00 00              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000283a: e9 1d 00 00 00              	jmp	0x10000285c <_pcc_evaluate_rule_main+0x58c>
10000283f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002843: 48 8b 48 10                 	movq	16(%rax), %rcx
100002847: 48 83 c1 ff                 	addq	$-1, %rcx
10000284b: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000284f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002853: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002857: e9 25 00 00 00              	jmp	0x100002881 <_pcc_evaluate_rule_main+0x5b1>
10000285c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002860: 48 8b 48 10                 	movq	16(%rax), %rcx
100002864: 48 83 c1 ff                 	addq	$-1, %rcx
100002868: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000286c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002870: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002874: e8 17 10 00 00              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100002879: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100002881: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002885: 48 83 c4 60                 	addq	$96, %rsp
100002889: 5d                          	popq	%rbp
10000288a: c3                          	retq
10000288b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002890 <_pcc_do_action>:
100002890: 55                          	pushq	%rbp
100002891: 48 89 e5                    	movq	%rsp, %rbp
100002894: 48 83 ec 30                 	subq	$48, %rsp
100002898: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000289c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000028a0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000028a4: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
1000028ac: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000028b0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000028b4: 48 3b 41 10                 	cmpq	16(%rcx), %rax
1000028b8: 0f 83 8e 00 00 00           	jae	0x10000294c <_pcc_do_action+0xbc>
1000028be: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000028c2: 48 8b 00                    	movq	(%rax), %rax
1000028c5: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000028c9: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
1000028cd: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000028d1: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000028d5: 8b 00                       	movl	(%rax), %eax
1000028d7: 89 45 d4                    	movl	%eax, -44(%rbp)
1000028da: 85 c0                       	testl	%eax, %eax
1000028dc: 0f 84 16 00 00 00           	je	0x1000028f8 <_pcc_do_action+0x68>
1000028e2: e9 00 00 00 00              	jmp	0x1000028e7 <_pcc_do_action+0x57>
1000028e7: 8b 45 d4                    	movl	-44(%rbp), %eax
1000028ea: 83 e8 01                    	subl	$1, %eax
1000028ed: 0f 84 20 00 00 00           	je	0x100002913 <_pcc_do_action+0x83>
1000028f3: e9 39 00 00 00              	jmp	0x100002931 <_pcc_do_action+0xa1>
1000028f8: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000028fc: 48 8b 40 50                 	movq	80(%rax), %rax
100002900: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002904: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100002908: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000290c: ff d0                       	callq	*%rax
10000290e: e9 23 00 00 00              	jmp	0x100002936 <_pcc_do_action+0xa6>
100002913: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002917: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000291b: 48 8b 70 08                 	movq	8(%rax), %rsi
10000291f: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002923: 48 8b 50 10                 	movq	16(%rax), %rdx
100002927: e8 64 ff ff ff              	callq	0x100002890 <_pcc_do_action>
10000292c: e9 05 00 00 00              	jmp	0x100002936 <_pcc_do_action+0xa6>
100002931: e9 00 00 00 00              	jmp	0x100002936 <_pcc_do_action+0xa6>
100002936: e9 00 00 00 00              	jmp	0x10000293b <_pcc_do_action+0xab>
10000293b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000293f: 48 83 c0 01                 	addq	$1, %rax
100002943: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002947: e9 60 ff ff ff              	jmp	0x1000028ac <_pcc_do_action+0x1c>
10000294c: 48 83 c4 30                 	addq	$48, %rsp
100002950: 5d                          	popq	%rbp
100002951: c3                          	retq
100002952: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100002960 <_pcc_error>:
100002960: 55                          	pushq	%rbp
100002961: 48 89 e5                    	movq	%rsp, %rbp
100002964: 48 8b 05 c5 96 00 00        	movq	38597(%rip), %rax       ## 0x10000c030 <_strnlen+0x10000c030>
10000296b: 48 8b 38                    	movq	(%rax), %rdi
10000296e: 48 8d 35 04 96 00 00        	leaq	38404(%rip), %rsi       ## 0x10000bf79 <_strnlen+0x10000bf79>
100002975: 31 c0                       	xorl	%eax, %eax
100002977: e8 c5 92 00 00              	callq	0x10000bc41 <_strnlen+0x10000bc41>
10000297c: bf 01 00 00 00              	movl	$1, %edi
100002981: e8 af 92 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100002986: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100002990 <_pcc_commit_buffer>:
100002990: 55                          	pushq	%rbp
100002991: 48 89 e5                    	movq	%rsp, %rbp
100002994: 48 83 ec 10                 	subq	$16, %rsp
100002998: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000299c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029a0: 48 8b 78 18                 	movq	24(%rax), %rdi
1000029a4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029a8: 48 8b 70 18                 	movq	24(%rax), %rsi
1000029ac: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029b0: 48 03 70 08                 	addq	8(%rax), %rsi
1000029b4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029b8: 48 8b 50 28                 	movq	40(%rax), %rdx
1000029bc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029c0: 48 2b 50 08                 	subq	8(%rax), %rdx
1000029c4: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
1000029cb: e8 41 92 00 00              	callq	0x10000bc11 <_strnlen+0x10000bc11>
1000029d0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029d4: 48 8b 50 08                 	movq	8(%rax), %rdx
1000029d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029dc: 48 8b 48 28                 	movq	40(%rax), %rcx
1000029e0: 48 29 d1                    	subq	%rdx, %rcx
1000029e3: 48 89 48 28                 	movq	%rcx, 40(%rax)
1000029e7: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029eb: 48 8b 48 08                 	movq	8(%rax), %rcx
1000029ef: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000029f3: 48 03 08                    	addq	(%rax), %rcx
1000029f6: 48 89 08                    	movq	%rcx, (%rax)
1000029f9: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000029fd: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002a01: 48 83 c6 30                 	addq	$48, %rsi
100002a05: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002a09: 48 8b 50 08                 	movq	8(%rax), %rdx
100002a0d: e8 be 8e 00 00              	callq	0x10000b8d0 <_pcc_lr_table__shift>
100002a12: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002a16: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002a1e: 48 83 c4 10                 	addq	$16, %rsp
100002a22: 5d                          	popq	%rbp
100002a23: c3                          	retq
100002a24: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000100002a30 <_pcc_thunk_array__revert>:
100002a30: 55                          	pushq	%rbp
100002a31: 48 89 e5                    	movq	%rsp, %rbp
100002a34: 48 83 ec 20                 	subq	$32, %rsp
100002a38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002a3c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002a40: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002a44: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002a48: 48 8b 40 10                 	movq	16(%rax), %rax
100002a4c: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100002a50: 0f 86 31 00 00 00           	jbe	0x100002a87 <_pcc_thunk_array__revert+0x57>
100002a56: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002a5a: 48 8b 48 10                 	movq	16(%rax), %rcx
100002a5e: 48 83 c1 ff                 	addq	$-1, %rcx
100002a62: 48 89 48 10                 	movq	%rcx, 16(%rax)
100002a66: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002a6a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002a6e: 48 8b 00                    	movq	(%rax), %rax
100002a71: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002a75: 48 8b 49 10                 	movq	16(%rcx), %rcx
100002a79: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100002a7d: e8 4e 1a 00 00              	callq	0x1000044d0 <_pcc_thunk__destroy>
100002a82: e9 bd ff ff ff              	jmp	0x100002a44 <_pcc_thunk_array__revert+0x14>
100002a87: 48 83 c4 20                 	addq	$32, %rsp
100002a8b: 5d                          	popq	%rbp
100002a8c: c3                          	retq
100002a8d: 0f 1f 00                    	nopl	(%rax)

0000000100002a90 <_pcc_refill_buffer>:
100002a90: 55                          	pushq	%rbp
100002a91: 48 89 e5                    	movq	%rsp, %rbp
100002a94: 48 83 ec 20                 	subq	$32, %rsp
100002a98: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100002a9c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002aa0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002aa4: 48 8b 40 28                 	movq	40(%rax), %rax
100002aa8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002aac: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002ab0: 48 03 4d e8                 	addq	-24(%rbp), %rcx
100002ab4: 48 39 c8                    	cmpq	%rcx, %rax
100002ab7: 0f 82 19 00 00 00           	jb	0x100002ad6 <_pcc_refill_buffer+0x46>
100002abd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002ac1: 48 8b 40 28                 	movq	40(%rax), %rax
100002ac5: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002ac9: 48 2b 41 08                 	subq	8(%rcx), %rax
100002acd: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002ad1: e9 70 00 00 00              	jmp	0x100002b46 <_pcc_refill_buffer+0xb6>
100002ad6: e9 00 00 00 00              	jmp	0x100002adb <_pcc_refill_buffer+0x4b>
100002adb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002adf: 48 8b 40 28                 	movq	40(%rax), %rax
100002ae3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002ae7: 48 8b 49 08                 	movq	8(%rcx), %rcx
100002aeb: 48 03 4d e8                 	addq	-24(%rbp), %rcx
100002aef: 48 39 c8                    	cmpq	%rcx, %rax
100002af2: 0f 83 3a 00 00 00           	jae	0x100002b32 <_pcc_refill_buffer+0xa2>
100002af8: e8 50 91 00 00              	callq	0x10000bc4d <_strnlen+0x10000bc4d>
100002afd: 89 45 e4                    	movl	%eax, -28(%rbp)
100002b00: 83 7d e4 00                 	cmpl	$0, -28(%rbp)
100002b04: 0f 8d 05 00 00 00           	jge	0x100002b0f <_pcc_refill_buffer+0x7f>
100002b0a: e9 23 00 00 00              	jmp	0x100002b32 <_pcc_refill_buffer+0xa2>
100002b0f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002b13: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002b1a: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100002b1e: 48 83 c6 18                 	addq	$24, %rsi
100002b22: 8b 45 e4                    	movl	-28(%rbp), %eax
100002b25: 0f be d0                    	movsbl	%al, %edx
100002b28: e8 c3 8e 00 00              	callq	0x10000b9f0 <_pcc_char_array__add>
100002b2d: e9 a9 ff ff ff              	jmp	0x100002adb <_pcc_refill_buffer+0x4b>
100002b32: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002b36: 48 8b 40 28                 	movq	40(%rax), %rax
100002b3a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100002b3e: 48 2b 41 08                 	subq	8(%rcx), %rax
100002b42: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002b46: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002b4a: 48 83 c4 20                 	addq	$32, %rsp
100002b4e: 5d                          	popq	%rbp
100002b4f: c3                          	retq

0000000100002b50 <_pcc_context__destroy>:
100002b50: 55                          	pushq	%rbp
100002b51: 48 89 e5                    	movq	%rsp, %rbp
100002b54: 48 83 ec 10                 	subq	$16, %rsp
100002b58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002b5c: 48 83 7d f8 00              	cmpq	$0, -8(%rbp)
100002b61: 0f 85 05 00 00 00           	jne	0x100002b6c <_pcc_context__destroy+0x1c>
100002b67: e9 b3 00 00 00              	jmp	0x100002c1f <_pcc_context__destroy+0xcf>
100002b6c: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002b70: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002b77: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002b7b: 48 83 c6 68                 	addq	$104, %rsi
100002b7f: e8 3c 18 00 00              	callq	0x1000043c0 <_pcc_thunk_array__term>
100002b84: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002b88: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002b8f: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002b93: 48 83 c6 50                 	addq	$80, %rsi
100002b97: e8 54 8f 00 00              	callq	0x10000baf0 <_pcc_lr_stack__term>
100002b9c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002ba0: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002ba4: 48 83 c6 30                 	addq	$48, %rsi
100002ba8: e8 73 8f 00 00              	callq	0x10000bb20 <_pcc_lr_table__term>
100002bad: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002bb1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002bb8: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002bbc: 48 83 c6 18                 	addq	$24, %rsi
100002bc0: e8 cb 8f 00 00              	callq	0x10000bb90 <_pcc_char_array__term>
100002bc5: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002bc9: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002bd0: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002bd4: 48 81 c6 88 00 00 00        	addq	$136, %rsi
100002bdb: e8 e0 8f 00 00              	callq	0x10000bbc0 <_pcc_memory_recycler__term>
100002be0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002be4: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002beb: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002bef: 48 81 c6 a0 00 00 00        	addq	$160, %rsi
100002bf6: e8 c5 8f 00 00              	callq	0x10000bbc0 <_pcc_memory_recycler__term>
100002bfb: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002bff: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100002c06: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100002c0a: 48 81 c6 b8 00 00 00        	addq	$184, %rsi
100002c11: e8 aa 8f 00 00              	callq	0x10000bbc0 <_pcc_memory_recycler__term>
100002c16: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002c1a: e8 28 90 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100002c1f: 48 83 c4 10                 	addq	$16, %rsp
100002c23: 5d                          	popq	%rbp
100002c24: c3                          	retq
100002c25: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100002c30 <_main>:
100002c30: 55                          	pushq	%rbp
100002c31: 48 89 e5                    	movq	%rsp, %rbp
100002c34: 48 83 ec 10                 	subq	$16, %rsp
100002c38: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
100002c3f: 89 7d f8                    	movl	%edi, -8(%rbp)
100002c42: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002c46: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002c4a: 48 8b 08                    	movq	(%rax), %rcx
100002c4d: 48 8d 05 cc d3 00 00        	leaq	54220(%rip), %rax       ## 0x100010020 <_current_path>
100002c54: 48 89 08                    	movq	%rcx, (%rax)
100002c57: 83 7d f8 02                 	cmpl	$2, -8(%rbp)
100002c5b: 0f 85 21 00 00 00           	jne	0x100002c82 <_main+0x52>
100002c61: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002c65: b9 74 72 61 74              	movl	$1952543348, %ecx       ## imm = 0x74617274
100002c6a: 48 39 48 08                 	cmpq	%rcx, 8(%rax)
100002c6e: 0f 85 0e 00 00 00           	jne	0x100002c82 <_main+0x52>
100002c74: 48 8d 3d 26 91 00 00        	leaq	37158(%rip), %rdi       ## 0x10000bda1 <_strnlen+0x10000bda1>
100002c7b: b0 00                       	movb	$0, %al
100002c7d: e8 e3 8f 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100002c82: e8 d9 dd ff ff              	callq	0x100000a60 <_bh_ht_init>
100002c87: 48 89 c1                    	movq	%rax, %rcx
100002c8a: 48 8d 05 97 d3 00 00        	leaq	54167(%rip), %rax       ## 0x100010028 <_macro_functions>
100002c91: 48 89 08                    	movq	%rcx, (%rax)
100002c94: e8 c7 dd ff ff              	callq	0x100000a60 <_bh_ht_init>
100002c99: 48 89 c1                    	movq	%rax, %rcx
100002c9c: 48 8d 05 75 d3 00 00        	leaq	54133(%rip), %rax       ## 0x100010018 <_constants>
100002ca3: 48 89 08                    	movq	%rcx, (%rax)
100002ca6: 31 c0                       	xorl	%eax, %eax
100002ca8: 89 c7                       	movl	%eax, %edi
100002caa: e8 e1 e2 ff ff              	callq	0x100000f90 <_run_code>
100002caf: 31 c0                       	xorl	%eax, %eax
100002cb1: 48 83 c4 10                 	addq	$16, %rsp
100002cb5: 5d                          	popq	%rbp
100002cb6: c3                          	retq
100002cb7: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100002cc0 <_pcc_malloc_e>:
100002cc0: 55                          	pushq	%rbp
100002cc1: 48 89 e5                    	movq	%rsp, %rbp
100002cc4: 48 83 ec 10                 	subq	$16, %rsp
100002cc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002ccc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100002cd0: e8 7e 8f 00 00              	callq	0x10000bc53 <_strnlen+0x10000bc53>
100002cd5: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100002cd9: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100002cde: 0f 85 22 00 00 00           	jne	0x100002d06 <_pcc_malloc_e+0x46>
100002ce4: 48 8b 05 45 93 00 00        	movq	37701(%rip), %rax       ## 0x10000c030 <_strnlen+0x10000c030>
100002ceb: 48 8b 38                    	movq	(%rax), %rdi
100002cee: 48 8d 35 32 91 00 00        	leaq	37170(%rip), %rsi       ## 0x10000be27 <_strnlen+0x10000be27>
100002cf5: 31 c0                       	xorl	%eax, %eax
100002cf7: e8 45 8f 00 00              	callq	0x10000bc41 <_strnlen+0x10000bc41>
100002cfc: bf 01 00 00 00              	movl	$1, %edi
100002d01: e8 2f 8f 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100002d06: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d0a: 48 83 c4 10                 	addq	$16, %rsp
100002d0e: 5d                          	popq	%rbp
100002d0f: c3                          	retq

0000000100002d10 <_pcc_char_array__init>:
100002d10: 55                          	pushq	%rbp
100002d11: 48 89 e5                    	movq	%rsp, %rbp
100002d14: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002d18: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002d1c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d20: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100002d28: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d2c: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002d34: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d38: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002d3f: 5d                          	popq	%rbp
100002d40: c3                          	retq
100002d41: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100002d50 <_pcc_lr_table__init>:
100002d50: 55                          	pushq	%rbp
100002d51: 48 89 e5                    	movq	%rsp, %rbp
100002d54: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002d58: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002d5c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d60: 48 c7 40 18 00 00 00 00     	movq	$0, 24(%rax)
100002d68: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d6c: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100002d74: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d78: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002d80: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002d84: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002d8b: 5d                          	popq	%rbp
100002d8c: c3                          	retq
100002d8d: 0f 1f 00                    	nopl	(%rax)

0000000100002d90 <_pcc_lr_stack__init>:
100002d90: 55                          	pushq	%rbp
100002d91: 48 89 e5                    	movq	%rsp, %rbp
100002d94: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002d98: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002d9c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002da0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100002da8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002dac: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002db4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002db8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002dbf: 5d                          	popq	%rbp
100002dc0: c3                          	retq
100002dc1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100002dd0 <_pcc_thunk_array__init>:
100002dd0: 55                          	pushq	%rbp
100002dd1: 48 89 e5                    	movq	%rsp, %rbp
100002dd4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002dd8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002ddc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002de0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100002de8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002dec: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002df4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002df8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002dff: 5d                          	popq	%rbp
100002e00: c3                          	retq
100002e01: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100002e10 <_pcc_memory_recycler__init>:
100002e10: 55                          	pushq	%rbp
100002e11: 48 89 e5                    	movq	%rsp, %rbp
100002e14: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100002e18: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100002e1c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100002e20: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002e24: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100002e2b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002e2f: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100002e37: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100002e3b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100002e3f: 48 89 48 10                 	movq	%rcx, 16(%rax)
100002e43: 5d                          	popq	%rbp
100002e44: c3                          	retq
100002e45: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100002e50 <_pcc_lr_table__get_answer>:
100002e50: 55                          	pushq	%rbp
100002e51: 48 89 e5                    	movq	%rsp, %rbp
100002e54: 48 83 ec 30                 	subq	$48, %rsp
100002e58: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100002e5c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002e60: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100002e64: 48 89 4d d8                 	movq	%rcx, -40(%rbp)
100002e68: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002e6c: 48 8b 40 18                 	movq	24(%rax), %rax
100002e70: 48 03 45 e0                 	addq	-32(%rbp), %rax
100002e74: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002e78: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002e7c: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100002e80: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100002e84: 0f 83 16 00 00 00           	jae	0x100002ea0 <_pcc_lr_table__get_answer+0x50>
100002e8a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002e8e: 48 8b 00                    	movq	(%rax), %rax
100002e91: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002e95: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
100002e9a: 0f 85 0d 00 00 00           	jne	0x100002ead <_pcc_lr_table__get_answer+0x5d>
100002ea0: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100002ea8: e9 24 00 00 00              	jmp	0x100002ed1 <_pcc_lr_table__get_answer+0x81>
100002ead: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002eb1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002eb5: 48 8b 00                    	movq	(%rax), %rax
100002eb8: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002ebc: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100002ec0: 48 83 c6 08                 	addq	$8, %rsi
100002ec4: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100002ec8: e8 b3 0b 00 00              	callq	0x100003a80 <_pcc_lr_memo_map__get>
100002ecd: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002ed1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002ed5: 48 83 c4 30                 	addq	$48, %rsp
100002ed9: 5d                          	popq	%rbp
100002eda: c3                          	retq
100002edb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100002ee0 <_pcc_lr_table__get_head>:
100002ee0: 55                          	pushq	%rbp
100002ee1: 48 89 e5                    	movq	%rsp, %rbp
100002ee4: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100002ee8: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002eec: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100002ef0: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002ef4: 48 8b 40 18                 	movq	24(%rax), %rax
100002ef8: 48 03 45 e0                 	addq	-32(%rbp), %rax
100002efc: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100002f00: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100002f04: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100002f08: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100002f0c: 0f 83 16 00 00 00           	jae	0x100002f28 <_pcc_lr_table__get_head+0x48>
100002f12: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002f16: 48 8b 00                    	movq	(%rax), %rax
100002f19: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002f1d: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
100002f22: 0f 85 0d 00 00 00           	jne	0x100002f35 <_pcc_lr_table__get_head+0x55>
100002f28: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100002f30: e9 16 00 00 00              	jmp	0x100002f4b <_pcc_lr_table__get_head+0x6b>
100002f35: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002f39: 48 8b 00                    	movq	(%rax), %rax
100002f3c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100002f40: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100002f44: 48 8b 00                    	movq	(%rax), %rax
100002f47: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002f4b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002f4f: 5d                          	popq	%rbp
100002f50: c3                          	retq
100002f51: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100002f60 <_pcc_rule_set__index>:
100002f60: 55                          	pushq	%rbp
100002f61: 48 89 e5                    	movq	%rsp, %rbp
100002f64: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100002f68: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002f6c: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100002f70: 48 c7 45 d8 00 00 00 00     	movq	$0, -40(%rbp)
100002f78: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002f7c: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100002f80: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100002f84: 0f 83 3c 00 00 00           	jae	0x100002fc6 <_pcc_rule_set__index+0x66>
100002f8a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100002f8e: 48 8b 00                    	movq	(%rax), %rax
100002f91: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100002f95: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
100002f99: 48 3b 45 e0                 	cmpq	-32(%rbp), %rax
100002f9d: 0f 85 0d 00 00 00           	jne	0x100002fb0 <_pcc_rule_set__index+0x50>
100002fa3: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002fa7: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100002fab: e9 1e 00 00 00              	jmp	0x100002fce <_pcc_rule_set__index+0x6e>
100002fb0: e9 00 00 00 00              	jmp	0x100002fb5 <_pcc_rule_set__index+0x55>
100002fb5: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100002fb9: 48 83 c0 01                 	addq	$1, %rax
100002fbd: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100002fc1: e9 b2 ff ff ff              	jmp	0x100002f78 <_pcc_rule_set__index+0x18>
100002fc6: 48 c7 45 f8 ff ff ff ff     	movq	$-1, -8(%rbp)
100002fce: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100002fd2: 5d                          	popq	%rbp
100002fd3: c3                          	retq
100002fd4: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000100002fe0 <_pcc_rule_set__remove>:
100002fe0: 55                          	pushq	%rbp
100002fe1: 48 89 e5                    	movq	%rsp, %rbp
100002fe4: 48 83 ec 30                 	subq	$48, %rsp
100002fe8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100002fec: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100002ff0: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100002ff4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100002ff8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100002ffc: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100003000: e8 5b ff ff ff              	callq	0x100002f60 <_pcc_rule_set__index>
100003005: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003009: 48 83 7d d8 ff              	cmpq	$-1, -40(%rbp)
10000300e: 0f 85 0c 00 00 00           	jne	0x100003020 <_pcc_rule_set__remove+0x40>
100003014: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
10000301b: e9 52 00 00 00              	jmp	0x100003072 <_pcc_rule_set__remove+0x92>
100003020: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003024: 48 8b 38                    	movq	(%rax), %rdi
100003027: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000302b: 48 c1 e0 03                 	shlq	$3, %rax
10000302f: 48 01 c7                    	addq	%rax, %rdi
100003032: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003036: 48 8b 30                    	movq	(%rax), %rsi
100003039: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000303d: 48 83 c0 01                 	addq	$1, %rax
100003041: 48 c1 e0 03                 	shlq	$3, %rax
100003045: 48 01 c6                    	addq	%rax, %rsi
100003048: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000304c: 48 8b 50 10                 	movq	16(%rax), %rdx
100003050: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003054: 48 83 c0 01                 	addq	$1, %rax
100003058: 48 29 c2                    	subq	%rax, %rdx
10000305b: 48 c1 e2 03                 	shlq	$3, %rdx
10000305f: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
100003066: e8 a6 8b 00 00              	callq	0x10000bc11 <_strnlen+0x10000bc11>
10000306b: c7 45 fc 01 00 00 00        	movl	$1, -4(%rbp)
100003072: 8b 45 fc                    	movl	-4(%rbp), %eax
100003075: 48 83 c4 30                 	addq	$48, %rsp
100003079: 5d                          	popq	%rbp
10000307a: c3                          	retq
10000307b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100003080 <_pcc_lr_answer__create>:
100003080: 55                          	pushq	%rbp
100003081: 48 89 e5                    	movq	%rsp, %rbp
100003084: 48 83 ec 30                 	subq	$48, %rsp
100003088: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000308c: 89 75 f4                    	movl	%esi, -12(%rbp)
10000308f: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003093: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100003097: 48 8b be 80 00 00 00        	movq	128(%rsi), %rdi
10000309e: 48 81 c6 b8 00 00 00        	addq	$184, %rsi
1000030a5: e8 c6 0a 00 00              	callq	0x100003b70 <_pcc_memory_recycler__supply>
1000030aa: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000030ae: 8b 4d f4                    	movl	-12(%rbp), %ecx
1000030b1: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000030b5: 89 08                       	movl	%ecx, (%rax)
1000030b7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000030bb: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000030bf: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000030c3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000030c7: 48 c7 40 18 00 00 00 00     	movq	$0, 24(%rax)
1000030cf: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000030d3: 8b 00                       	movl	(%rax), %eax
1000030d5: 89 45 dc                    	movl	%eax, -36(%rbp)
1000030d8: 85 c0                       	testl	%eax, %eax
1000030da: 0f 84 16 00 00 00           	je	0x1000030f6 <_pcc_lr_answer__create+0x76>
1000030e0: e9 00 00 00 00              	jmp	0x1000030e5 <_pcc_lr_answer__create+0x65>
1000030e5: 8b 45 dc                    	movl	-36(%rbp), %eax
1000030e8: 83 e8 01                    	subl	$1, %eax
1000030eb: 0f 84 16 00 00 00           	je	0x100003107 <_pcc_lr_answer__create+0x87>
1000030f1: e9 22 00 00 00              	jmp	0x100003118 <_pcc_lr_answer__create+0x98>
1000030f6: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000030fa: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100003102: e9 22 00 00 00              	jmp	0x100003129 <_pcc_lr_answer__create+0xa9>
100003107: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000310b: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100003113: e9 11 00 00 00              	jmp	0x100003129 <_pcc_lr_answer__create+0xa9>
100003118: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
10000311c: e8 26 8b 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100003121: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100003129: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000312d: 48 83 c4 30                 	addq	$48, %rsp
100003131: 5d                          	popq	%rbp
100003132: c3                          	retq
100003133: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100003140 <_pcc_lr_table__hold_answer>:
100003140: 55                          	pushq	%rbp
100003141: 48 89 e5                    	movq	%rsp, %rbp
100003144: 48 83 ec 20                 	subq	$32, %rsp
100003148: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000314c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003150: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003154: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100003158: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000315c: 48 8b 40 18                 	movq	24(%rax), %rax
100003160: 48 03 45 e8                 	addq	-24(%rbp), %rax
100003164: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100003168: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000316c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003170: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003174: 0f 82 15 00 00 00           	jb	0x10000318f <_pcc_lr_table__hold_answer+0x4f>
10000317a: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000317e: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003182: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100003186: 48 83 c2 01                 	addq	$1, %rdx
10000318a: e8 21 0b 00 00              	callq	0x100003cb0 <_pcc_lr_table__resize>
10000318f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003193: 48 8b 00                    	movq	(%rax), %rax
100003196: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000319a: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
10000319f: 0f 85 1b 00 00 00           	jne	0x1000031c0 <_pcc_lr_table__hold_answer+0x80>
1000031a5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000031a9: e8 62 0c 00 00              	callq	0x100003e10 <_pcc_lr_table_entry__create>
1000031ae: 48 89 c2                    	movq	%rax, %rdx
1000031b1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000031b5: 48 8b 00                    	movq	(%rax), %rax
1000031b8: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000031bc: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
1000031c0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000031c4: 48 8b 00                    	movq	(%rax), %rax
1000031c7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000031cb: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
1000031cf: 48 8b 48 20                 	movq	32(%rax), %rcx
1000031d3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000031d7: 48 89 48 18                 	movq	%rcx, 24(%rax)
1000031db: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000031df: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000031e3: 48 8b 00                    	movq	(%rax), %rax
1000031e6: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000031ea: 48 8b 04 d0                 	movq	(%rax,%rdx,8), %rax
1000031ee: 48 89 48 20                 	movq	%rcx, 32(%rax)
1000031f2: 48 83 c4 20                 	addq	$32, %rsp
1000031f6: 5d                          	popq	%rbp
1000031f7: c3                          	retq
1000031f8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003200 <_pcc_lr_head__create>:
100003200: 55                          	pushq	%rbp
100003201: 48 89 e5                    	movq	%rsp, %rbp
100003204: 48 83 ec 20                 	subq	$32, %rsp
100003208: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000320c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003210: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003214: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000321b: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
10000321f: 48 81 c6 a0 00 00 00        	addq	$160, %rsi
100003226: e8 45 09 00 00              	callq	0x100003b70 <_pcc_memory_recycler__supply>
10000322b: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000322f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003233: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003237: 48 89 08                    	movq	%rcx, (%rax)
10000323a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000323e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003245: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100003249: 48 83 c6 08                 	addq	$8, %rsi
10000324d: e8 7e 0f 00 00              	callq	0x1000041d0 <_pcc_rule_set__init>
100003252: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003256: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000325d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100003261: 48 83 c6 20                 	addq	$32, %rsi
100003265: e8 66 0f 00 00              	callq	0x1000041d0 <_pcc_rule_set__init>
10000326a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000326e: 48 c7 40 38 00 00 00 00     	movq	$0, 56(%rax)
100003276: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000327a: 48 83 c4 20                 	addq	$32, %rsp
10000327e: 5d                          	popq	%rbp
10000327f: c3                          	retq

0000000100003280 <_pcc_lr_table__hold_head>:
100003280: 55                          	pushq	%rbp
100003281: 48 89 e5                    	movq	%rsp, %rbp
100003284: 48 83 ec 20                 	subq	$32, %rsp
100003288: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000328c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003290: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003294: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100003298: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000329c: 48 8b 40 18                 	movq	24(%rax), %rax
1000032a0: 48 03 45 e8                 	addq	-24(%rbp), %rax
1000032a4: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000032a8: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000032ac: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000032b0: 48 3b 41 10                 	cmpq	16(%rcx), %rax
1000032b4: 0f 82 15 00 00 00           	jb	0x1000032cf <_pcc_lr_table__hold_head+0x4f>
1000032ba: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000032be: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000032c2: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000032c6: 48 83 c2 01                 	addq	$1, %rdx
1000032ca: e8 e1 09 00 00              	callq	0x100003cb0 <_pcc_lr_table__resize>
1000032cf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000032d3: 48 8b 00                    	movq	(%rax), %rax
1000032d6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000032da: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
1000032df: 0f 85 1b 00 00 00           	jne	0x100003300 <_pcc_lr_table__hold_head+0x80>
1000032e5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000032e9: e8 22 0b 00 00              	callq	0x100003e10 <_pcc_lr_table_entry__create>
1000032ee: 48 89 c2                    	movq	%rax, %rdx
1000032f1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000032f5: 48 8b 00                    	movq	(%rax), %rax
1000032f8: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000032fc: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
100003300: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003304: 48 8b 00                    	movq	(%rax), %rax
100003307: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000330b: 48 8b 04 c8                 	movq	(%rax,%rcx,8), %rax
10000330f: 48 8b 48 28                 	movq	40(%rax), %rcx
100003313: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003317: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000331b: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000331f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003323: 48 8b 00                    	movq	(%rax), %rax
100003326: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000332a: 48 8b 04 d0                 	movq	(%rax,%rdx,8), %rax
10000332e: 48 89 48 28                 	movq	%rcx, 40(%rax)
100003332: 48 83 c4 20                 	addq	$32, %rsp
100003336: 5d                          	popq	%rbp
100003337: c3                          	retq
100003338: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003340 <_pcc_rule_set__add>:
100003340: 55                          	pushq	%rbp
100003341: 48 89 e5                    	movq	%rsp, %rbp
100003344: 48 83 ec 40                 	subq	$64, %rsp
100003348: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000334c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100003350: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100003354: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100003358: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000335c: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100003360: e8 fb fb ff ff              	callq	0x100002f60 <_pcc_rule_set__index>
100003365: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003369: 48 83 7d d8 ff              	cmpq	$-1, -40(%rbp)
10000336e: 0f 84 0c 00 00 00           	je	0x100003380 <_pcc_rule_set__add+0x40>
100003374: c7 45 fc 00 00 00 00        	movl	$0, -4(%rbp)
10000337b: e9 ef 00 00 00              	jmp	0x10000346f <_pcc_rule_set__add+0x12f>
100003380: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003384: 48 8b 40 08                 	movq	8(%rax), %rax
100003388: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000338c: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003390: 0f 87 b0 00 00 00           	ja	0x100003446 <_pcc_rule_set__add+0x106>
100003396: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000339a: 48 8b 40 10                 	movq	16(%rax), %rax
10000339e: 48 83 c0 01                 	addq	$1, %rax
1000033a2: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000033a6: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000033aa: 48 8b 40 08                 	movq	8(%rax), %rax
1000033ae: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000033b2: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
1000033b7: 0f 85 08 00 00 00           	jne	0x1000033c5 <_pcc_rule_set__add+0x85>
1000033bd: 48 c7 45 c8 02 00 00 00     	movq	$2, -56(%rbp)
1000033c5: e9 00 00 00 00              	jmp	0x1000033ca <_pcc_rule_set__add+0x8a>
1000033ca: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000033ce: 31 c0                       	xorl	%eax, %eax
1000033d0: 48 3b 4d d0                 	cmpq	-48(%rbp), %rcx
1000033d4: 88 45 c7                    	movb	%al, -57(%rbp)
1000033d7: 0f 83 0b 00 00 00           	jae	0x1000033e8 <_pcc_rule_set__add+0xa8>
1000033dd: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
1000033e2: 0f 95 c0                    	setne	%al
1000033e5: 88 45 c7                    	movb	%al, -57(%rbp)
1000033e8: 8a 45 c7                    	movb	-57(%rbp), %al
1000033eb: a8 01                       	testb	$1, %al
1000033ed: 0f 85 05 00 00 00           	jne	0x1000033f8 <_pcc_rule_set__add+0xb8>
1000033f3: e9 11 00 00 00              	jmp	0x100003409 <_pcc_rule_set__add+0xc9>
1000033f8: 48 8b 45 c8                 	movq	-56(%rbp), %rax
1000033fc: 48 c1 e0 01                 	shlq	$1, %rax
100003400: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100003404: e9 c1 ff ff ff              	jmp	0x1000033ca <_pcc_rule_set__add+0x8a>
100003409: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
10000340e: 0f 85 08 00 00 00           	jne	0x10000341c <_pcc_rule_set__add+0xdc>
100003414: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003418: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000341c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003420: 48 8b 38                    	movq	(%rax), %rdi
100003423: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
100003427: 48 c1 e6 03                 	shlq	$3, %rsi
10000342b: e8 b0 0a 00 00              	callq	0x100003ee0 <_pcc_realloc_e>
100003430: 48 89 c1                    	movq	%rax, %rcx
100003433: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003437: 48 89 08                    	movq	%rcx, (%rax)
10000343a: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
10000343e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003442: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003446: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
10000344a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000344e: 48 8b 00                    	movq	(%rax), %rax
100003451: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100003455: 48 8b 4e 10                 	movq	16(%rsi), %rcx
100003459: 48 89 cf                    	movq	%rcx, %rdi
10000345c: 48 83 c7 01                 	addq	$1, %rdi
100003460: 48 89 7e 10                 	movq	%rdi, 16(%rsi)
100003464: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
100003468: c7 45 fc 01 00 00 00        	movl	$1, -4(%rbp)
10000346f: 8b 45 fc                    	movl	-4(%rbp), %eax
100003472: 48 83 c4 40                 	addq	$64, %rsp
100003476: 5d                          	popq	%rbp
100003477: c3                          	retq
100003478: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003480 <_pcc_lr_entry__create>:
100003480: 55                          	pushq	%rbp
100003481: 48 89 e5                    	movq	%rsp, %rbp
100003484: 48 83 ec 20                 	subq	$32, %rsp
100003488: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000348c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003490: bf 18 00 00 00              	movl	$24, %edi
100003495: e8 26 f8 ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
10000349a: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000349e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000034a2: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000034a6: 48 89 08                    	movq	%rcx, (%rax)
1000034a9: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000034ad: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000034b5: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000034b9: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000034c1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000034c5: 48 83 c4 20                 	addq	$32, %rsp
1000034c9: 5d                          	popq	%rbp
1000034ca: c3                          	retq
1000034cb: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000034d0 <_pcc_lr_stack__push>:
1000034d0: 55                          	pushq	%rbp
1000034d1: 48 89 e5                    	movq	%rsp, %rbp
1000034d4: 48 83 ec 30                 	subq	$48, %rsp
1000034d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000034dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000034e0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000034e4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000034e8: 48 8b 40 08                 	movq	8(%rax), %rax
1000034ec: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000034f0: 48 3b 41 10                 	cmpq	16(%rcx), %rax
1000034f4: 0f 87 b0 00 00 00           	ja	0x1000035aa <_pcc_lr_stack__push+0xda>
1000034fa: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000034fe: 48 8b 40 10                 	movq	16(%rax), %rax
100003502: 48 83 c0 01                 	addq	$1, %rax
100003506: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000350a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000350e: 48 8b 40 08                 	movq	8(%rax), %rax
100003512: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003516: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000351b: 0f 85 08 00 00 00           	jne	0x100003529 <_pcc_lr_stack__push+0x59>
100003521: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
100003529: e9 00 00 00 00              	jmp	0x10000352e <_pcc_lr_stack__push+0x5e>
10000352e: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003532: 31 c0                       	xorl	%eax, %eax
100003534: 48 3b 4d e0                 	cmpq	-32(%rbp), %rcx
100003538: 88 45 d7                    	movb	%al, -41(%rbp)
10000353b: 0f 83 0b 00 00 00           	jae	0x10000354c <_pcc_lr_stack__push+0x7c>
100003541: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003546: 0f 95 c0                    	setne	%al
100003549: 88 45 d7                    	movb	%al, -41(%rbp)
10000354c: 8a 45 d7                    	movb	-41(%rbp), %al
10000354f: a8 01                       	testb	$1, %al
100003551: 0f 85 05 00 00 00           	jne	0x10000355c <_pcc_lr_stack__push+0x8c>
100003557: e9 11 00 00 00              	jmp	0x10000356d <_pcc_lr_stack__push+0x9d>
10000355c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003560: 48 c1 e0 01                 	shlq	$1, %rax
100003564: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003568: e9 c1 ff ff ff              	jmp	0x10000352e <_pcc_lr_stack__push+0x5e>
10000356d: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003572: 0f 85 08 00 00 00           	jne	0x100003580 <_pcc_lr_stack__push+0xb0>
100003578: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000357c: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003580: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003584: 48 8b 38                    	movq	(%rax), %rdi
100003587: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
10000358b: 48 c1 e6 03                 	shlq	$3, %rsi
10000358f: e8 4c 09 00 00              	callq	0x100003ee0 <_pcc_realloc_e>
100003594: 48 89 c1                    	movq	%rax, %rcx
100003597: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000359b: 48 89 08                    	movq	%rcx, (%rax)
10000359e: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000035a2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000035a6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000035aa: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000035ae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000035b2: 48 8b 00                    	movq	(%rax), %rax
1000035b5: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000035b9: 48 8b 4e 10                 	movq	16(%rsi), %rcx
1000035bd: 48 89 cf                    	movq	%rcx, %rdi
1000035c0: 48 83 c7 01                 	addq	$1, %rdi
1000035c4: 48 89 7e 10                 	movq	%rdi, 16(%rsi)
1000035c8: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
1000035cc: 48 83 c4 30                 	addq	$48, %rsp
1000035d0: 5d                          	popq	%rbp
1000035d1: c3                          	retq
1000035d2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000035e0 <_pcc_lr_table__set_answer>:
1000035e0: 55                          	pushq	%rbp
1000035e1: 48 89 e5                    	movq	%rsp, %rbp
1000035e4: 48 83 ec 30                 	subq	$48, %rsp
1000035e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000035ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000035f0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000035f4: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
1000035f8: 4c 89 45 d8                 	movq	%r8, -40(%rbp)
1000035fc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003600: 48 8b 40 18                 	movq	24(%rax), %rax
100003604: 48 03 45 e8                 	addq	-24(%rbp), %rax
100003608: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000360c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003610: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003614: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003618: 0f 82 15 00 00 00           	jb	0x100003633 <_pcc_lr_table__set_answer+0x53>
10000361e: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003622: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003626: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000362a: 48 83 c2 01                 	addq	$1, %rdx
10000362e: e8 7d 06 00 00              	callq	0x100003cb0 <_pcc_lr_table__resize>
100003633: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003637: 48 8b 00                    	movq	(%rax), %rax
10000363a: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000363e: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
100003643: 0f 85 1b 00 00 00           	jne	0x100003664 <_pcc_lr_table__set_answer+0x84>
100003649: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000364d: e8 be 07 00 00              	callq	0x100003e10 <_pcc_lr_table_entry__create>
100003652: 48 89 c2                    	movq	%rax, %rdx
100003655: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003659: 48 8b 00                    	movq	(%rax), %rax
10000365c: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003660: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
100003664: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003668: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000366c: 48 8b 00                    	movq	(%rax), %rax
10000366f: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003673: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100003677: 48 83 c6 08                 	addq	$8, %rsi
10000367b: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
10000367f: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003683: e8 88 0b 00 00              	callq	0x100004210 <_pcc_lr_memo_map__put>
100003688: 48 83 c4 30                 	addq	$48, %rsp
10000368c: 5d                          	popq	%rbp
10000368d: c3                          	retq
10000368e: 66 90                       	nop

0000000100003690 <_pcc_lr_stack__pop>:
100003690: 55                          	pushq	%rbp
100003691: 48 89 e5                    	movq	%rsp, %rbp
100003694: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003698: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000369c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000036a0: 48 8b 00                    	movq	(%rax), %rax
1000036a3: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
1000036a7: 48 8b 4a 10                 	movq	16(%rdx), %rcx
1000036ab: 48 89 ce                    	movq	%rcx, %rsi
1000036ae: 48 83 c6 ff                 	addq	$-1, %rsi
1000036b2: 48 89 72 10                 	movq	%rsi, 16(%rdx)
1000036b6: 48 8b 44 c8 f8              	movq	-8(%rax,%rcx,8), %rax
1000036bb: 5d                          	popq	%rbp
1000036bc: c3                          	retq
1000036bd: 0f 1f 00                    	nopl	(%rax)

00000001000036c0 <_pcc_lr_answer__set_chunk>:
1000036c0: 55                          	pushq	%rbp
1000036c1: 48 89 e5                    	movq	%rsp, %rbp
1000036c4: 48 83 ec 30                 	subq	$48, %rsp
1000036c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000036cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000036d0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000036d4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000036d8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000036dc: 8b 30                       	movl	(%rax), %esi
1000036de: 48 8b 50 10                 	movq	16(%rax), %rdx
1000036e2: e8 99 f9 ff ff              	callq	0x100003080 <_pcc_lr_answer__create>
1000036e7: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000036eb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000036ef: 8b 00                       	movl	(%rax), %eax
1000036f1: 89 45 dc                    	movl	%eax, -36(%rbp)
1000036f4: 85 c0                       	testl	%eax, %eax
1000036f6: 0f 84 16 00 00 00           	je	0x100003712 <_pcc_lr_answer__set_chunk+0x52>
1000036fc: e9 00 00 00 00              	jmp	0x100003701 <_pcc_lr_answer__set_chunk+0x41>
100003701: 8b 45 dc                    	movl	-36(%rbp), %eax
100003704: 83 e8 01                    	subl	$1, %eax
100003707: 0f 84 1a 00 00 00           	je	0x100003727 <_pcc_lr_answer__set_chunk+0x67>
10000370d: e9 2a 00 00 00              	jmp	0x10000373c <_pcc_lr_answer__set_chunk+0x7c>
100003712: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003716: 48 8b 48 08                 	movq	8(%rax), %rcx
10000371a: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000371e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003722: e9 1a 00 00 00              	jmp	0x100003741 <_pcc_lr_answer__set_chunk+0x81>
100003727: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000372b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000372f: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003733: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003737: e9 05 00 00 00              	jmp	0x100003741 <_pcc_lr_answer__set_chunk+0x81>
10000373c: e9 00 00 00 00              	jmp	0x100003741 <_pcc_lr_answer__set_chunk+0x81>
100003741: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003745: 48 8b 48 18                 	movq	24(%rax), %rcx
100003749: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000374d: 48 89 48 18                 	movq	%rcx, 24(%rax)
100003751: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003755: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003759: 48 89 48 18                 	movq	%rcx, 24(%rax)
10000375d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003761: c7 00 01 00 00 00           	movl	$1, (%rax)
100003767: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
10000376b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000376f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003773: 48 83 c4 30                 	addq	$48, %rsp
100003777: 5d                          	popq	%rbp
100003778: c3                          	retq
100003779: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003780 <_pcc_lr_table__set_head>:
100003780: 55                          	pushq	%rbp
100003781: 48 89 e5                    	movq	%rsp, %rbp
100003784: 48 83 ec 20                 	subq	$32, %rsp
100003788: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000378c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003790: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003794: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100003798: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000379c: 48 8b 40 18                 	movq	24(%rax), %rax
1000037a0: 48 03 45 e8                 	addq	-24(%rbp), %rax
1000037a4: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000037a8: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000037ac: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000037b0: 48 3b 41 10                 	cmpq	16(%rcx), %rax
1000037b4: 0f 82 15 00 00 00           	jb	0x1000037cf <_pcc_lr_table__set_head+0x4f>
1000037ba: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000037be: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000037c2: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000037c6: 48 83 c2 01                 	addq	$1, %rdx
1000037ca: e8 e1 04 00 00              	callq	0x100003cb0 <_pcc_lr_table__resize>
1000037cf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000037d3: 48 8b 00                    	movq	(%rax), %rax
1000037d6: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000037da: 48 83 3c c8 00              	cmpq	$0, (%rax,%rcx,8)
1000037df: 0f 85 1b 00 00 00           	jne	0x100003800 <_pcc_lr_table__set_head+0x80>
1000037e5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000037e9: e8 22 06 00 00              	callq	0x100003e10 <_pcc_lr_table_entry__create>
1000037ee: 48 89 c2                    	movq	%rax, %rdx
1000037f1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000037f5: 48 8b 00                    	movq	(%rax), %rax
1000037f8: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000037fc: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
100003800: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003804: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003808: 48 8b 00                    	movq	(%rax), %rax
10000380b: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000380f: 48 8b 04 d0                 	movq	(%rax,%rdx,8), %rax
100003813: 48 89 08                    	movq	%rcx, (%rax)
100003816: 48 83 c4 20                 	addq	$32, %rsp
10000381a: 5d                          	popq	%rbp
10000381b: c3                          	retq
10000381c: 0f 1f 40 00                 	nopl	(%rax)

0000000100003820 <_pcc_rule_set__copy>:
100003820: 55                          	pushq	%rbp
100003821: 48 89 e5                    	movq	%rsp, %rbp
100003824: 48 83 ec 20                 	subq	$32, %rsp
100003828: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000382c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003830: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003834: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003838: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000383c: e8 5f 0b 00 00              	callq	0x1000043a0 <_pcc_rule_set__clear>
100003841: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
100003849: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000384d: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003851: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003855: 0f 83 2d 00 00 00           	jae	0x100003888 <_pcc_rule_set__copy+0x68>
10000385b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000385f: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003863: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003867: 48 8b 00                    	movq	(%rax), %rax
10000386a: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000386e: 48 8b 14 c8                 	movq	(%rax,%rcx,8), %rdx
100003872: e8 c9 fa ff ff              	callq	0x100003340 <_pcc_rule_set__add>
100003877: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000387b: 48 83 c0 01                 	addq	$1, %rax
10000387f: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003883: e9 c1 ff ff ff              	jmp	0x100003849 <_pcc_rule_set__copy+0x29>
100003888: 48 83 c4 20                 	addq	$32, %rsp
10000388c: 5d                          	popq	%rbp
10000388d: c3                          	retq
10000388e: 66 90                       	nop

0000000100003890 <_pcc_thunk_chunk__destroy>:
100003890: 55                          	pushq	%rbp
100003891: 48 89 e5                    	movq	%rsp, %rbp
100003894: 48 83 ec 10                 	subq	$16, %rsp
100003898: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000389c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000038a0: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
1000038a5: 0f 85 05 00 00 00           	jne	0x1000038b0 <_pcc_thunk_chunk__destroy+0x20>
1000038ab: e9 63 00 00 00              	jmp	0x100003913 <_pcc_thunk_chunk__destroy+0x83>
1000038b0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000038b4: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000038bb: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000038bf: 48 83 c6 30                 	addq	$48, %rsi
1000038c3: e8 f8 0a 00 00              	callq	0x1000043c0 <_pcc_thunk_array__term>
1000038c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000038cc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000038d3: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000038d7: 48 83 c6 18                 	addq	$24, %rsi
1000038db: e8 50 0b 00 00              	callq	0x100004430 <_pcc_capture_table__term>
1000038e0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000038e4: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000038eb: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000038ef: e8 ac 0b 00 00              	callq	0x1000044a0 <_pcc_value_table__term>
1000038f4: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000038f8: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000038ff: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100003903: 48 81 c6 88 00 00 00        	addq	$136, %rsi
10000390a: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000390e: e8 1d 08 00 00              	callq	0x100004130 <_pcc_memory_recycler__recycle>
100003913: 48 83 c4 10                 	addq	$16, %rsp
100003917: 5d                          	popq	%rbp
100003918: c3                          	retq
100003919: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003920 <_pcc_thunk_array__add>:
100003920: 55                          	pushq	%rbp
100003921: 48 89 e5                    	movq	%rsp, %rbp
100003924: 48 83 ec 30                 	subq	$48, %rsp
100003928: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000392c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003930: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003934: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003938: 48 8b 40 08                 	movq	8(%rax), %rax
10000393c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003940: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003944: 0f 87 b0 00 00 00           	ja	0x1000039fa <_pcc_thunk_array__add+0xda>
10000394a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000394e: 48 8b 40 10                 	movq	16(%rax), %rax
100003952: 48 83 c0 01                 	addq	$1, %rax
100003956: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000395a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000395e: 48 8b 40 08                 	movq	8(%rax), %rax
100003962: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003966: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000396b: 0f 85 08 00 00 00           	jne	0x100003979 <_pcc_thunk_array__add+0x59>
100003971: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
100003979: e9 00 00 00 00              	jmp	0x10000397e <_pcc_thunk_array__add+0x5e>
10000397e: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003982: 31 c0                       	xorl	%eax, %eax
100003984: 48 3b 4d e0                 	cmpq	-32(%rbp), %rcx
100003988: 88 45 d7                    	movb	%al, -41(%rbp)
10000398b: 0f 83 0b 00 00 00           	jae	0x10000399c <_pcc_thunk_array__add+0x7c>
100003991: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003996: 0f 95 c0                    	setne	%al
100003999: 88 45 d7                    	movb	%al, -41(%rbp)
10000399c: 8a 45 d7                    	movb	-41(%rbp), %al
10000399f: a8 01                       	testb	$1, %al
1000039a1: 0f 85 05 00 00 00           	jne	0x1000039ac <_pcc_thunk_array__add+0x8c>
1000039a7: e9 11 00 00 00              	jmp	0x1000039bd <_pcc_thunk_array__add+0x9d>
1000039ac: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000039b0: 48 c1 e0 01                 	shlq	$1, %rax
1000039b4: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000039b8: e9 c1 ff ff ff              	jmp	0x10000397e <_pcc_thunk_array__add+0x5e>
1000039bd: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
1000039c2: 0f 85 08 00 00 00           	jne	0x1000039d0 <_pcc_thunk_array__add+0xb0>
1000039c8: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000039cc: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000039d0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000039d4: 48 8b 38                    	movq	(%rax), %rdi
1000039d7: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
1000039db: 48 c1 e6 03                 	shlq	$3, %rsi
1000039df: e8 fc 04 00 00              	callq	0x100003ee0 <_pcc_realloc_e>
1000039e4: 48 89 c1                    	movq	%rax, %rcx
1000039e7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000039eb: 48 89 08                    	movq	%rcx, (%rax)
1000039ee: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000039f2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000039f6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000039fa: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000039fe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003a02: 48 8b 00                    	movq	(%rax), %rax
100003a05: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003a09: 48 8b 4e 10                 	movq	16(%rsi), %rcx
100003a0d: 48 89 cf                    	movq	%rcx, %rdi
100003a10: 48 83 c7 01                 	addq	$1, %rdi
100003a14: 48 89 7e 10                 	movq	%rdi, 16(%rsi)
100003a18: 48 89 14 c8                 	movq	%rdx, (%rax,%rcx,8)
100003a1c: 48 83 c4 30                 	addq	$48, %rsp
100003a20: 5d                          	popq	%rbp
100003a21: c3                          	retq
100003a22: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100003a30 <_pcc_thunk__create_node>:
100003a30: 55                          	pushq	%rbp
100003a31: 48 89 e5                    	movq	%rsp, %rbp
100003a34: 48 83 ec 20                 	subq	$32, %rsp
100003a38: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003a3c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003a40: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003a44: bf 58 00 00 00              	movl	$88, %edi
100003a49: e8 72 f2 ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
100003a4e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003a52: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003a56: c7 00 01 00 00 00           	movl	$1, (%rax)
100003a5c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003a60: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003a64: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003a68: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003a6c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003a70: 48 89 48 10                 	movq	%rcx, 16(%rax)
100003a74: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003a78: 48 83 c4 20                 	addq	$32, %rsp
100003a7c: 5d                          	popq	%rbp
100003a7d: c3                          	retq
100003a7e: 66 90                       	nop

0000000100003a80 <_pcc_lr_memo_map__get>:
100003a80: 55                          	pushq	%rbp
100003a81: 48 89 e5                    	movq	%rsp, %rbp
100003a84: 48 83 ec 30                 	subq	$48, %rsp
100003a88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003a8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003a90: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003a94: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003a98: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003a9c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100003aa0: e8 4b 00 00 00              	callq	0x100003af0 <_pcc_lr_memo_map__index>
100003aa5: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003aa9: 48 83 7d e0 ff              	cmpq	$-1, -32(%rbp)
100003aae: 0f 84 1f 00 00 00           	je	0x100003ad3 <_pcc_lr_memo_map__get+0x53>
100003ab4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003ab8: 48 8b 00                    	movq	(%rax), %rax
100003abb: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003abf: 48 c1 e1 04                 	shlq	$4, %rcx
100003ac3: 48 01 c8                    	addq	%rcx, %rax
100003ac6: 48 8b 40 08                 	movq	8(%rax), %rax
100003aca: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003ace: e9 0b 00 00 00              	jmp	0x100003ade <_pcc_lr_memo_map__get+0x5e>
100003ad3: 31 c0                       	xorl	%eax, %eax
100003ad5: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003ad9: e9 00 00 00 00              	jmp	0x100003ade <_pcc_lr_memo_map__get+0x5e>
100003ade: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003ae2: 48 83 c4 30                 	addq	$48, %rsp
100003ae6: 5d                          	popq	%rbp
100003ae7: c3                          	retq
100003ae8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003af0 <_pcc_lr_memo_map__index>:
100003af0: 55                          	pushq	%rbp
100003af1: 48 89 e5                    	movq	%rsp, %rbp
100003af4: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100003af8: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100003afc: 48 89 55 e0                 	movq	%rdx, -32(%rbp)
100003b00: 48 c7 45 d8 00 00 00 00     	movq	$0, -40(%rbp)
100003b08: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003b0c: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003b10: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003b14: 0f 83 42 00 00 00           	jae	0x100003b5c <_pcc_lr_memo_map__index+0x6c>
100003b1a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003b1e: 48 8b 00                    	movq	(%rax), %rax
100003b21: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003b25: 48 c1 e1 04                 	shlq	$4, %rcx
100003b29: 48 01 c8                    	addq	%rcx, %rax
100003b2c: 48 8b 00                    	movq	(%rax), %rax
100003b2f: 48 3b 45 e0                 	cmpq	-32(%rbp), %rax
100003b33: 0f 85 0d 00 00 00           	jne	0x100003b46 <_pcc_lr_memo_map__index+0x56>
100003b39: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003b3d: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100003b41: e9 1e 00 00 00              	jmp	0x100003b64 <_pcc_lr_memo_map__index+0x74>
100003b46: e9 00 00 00 00              	jmp	0x100003b4b <_pcc_lr_memo_map__index+0x5b>
100003b4b: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003b4f: 48 83 c0 01                 	addq	$1, %rax
100003b53: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003b57: e9 ac ff ff ff              	jmp	0x100003b08 <_pcc_lr_memo_map__index+0x18>
100003b5c: 48 c7 45 f8 ff ff ff ff     	movq	$-1, -8(%rbp)
100003b64: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003b68: 5d                          	popq	%rbp
100003b69: c3                          	retq
100003b6a: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

0000000100003b70 <_pcc_memory_recycler__supply>:
100003b70: 55                          	pushq	%rbp
100003b71: 48 89 e5                    	movq	%rsp, %rbp
100003b74: 48 83 ec 30                 	subq	$48, %rsp
100003b78: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100003b7c: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100003b80: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003b84: 48 83 78 08 00              	cmpq	$0, 8(%rax)
100003b89: 0f 84 28 00 00 00           	je	0x100003bb7 <_pcc_memory_recycler__supply+0x47>
100003b8f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003b93: 48 8b 40 08                 	movq	8(%rax), %rax
100003b97: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003b9b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003b9f: 48 8b 08                    	movq	(%rax), %rcx
100003ba2: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003ba6: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003baa: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003bae: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100003bb2: e9 ec 00 00 00              	jmp	0x100003ca3 <_pcc_memory_recycler__supply+0x133>
100003bb7: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003bbb: 48 83 38 00                 	cmpq	$0, (%rax)
100003bbf: 0f 84 12 00 00 00           	je	0x100003bd7 <_pcc_memory_recycler__supply+0x67>
100003bc5: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003bc9: 48 8b 00                    	movq	(%rax), %rax
100003bcc: 48 83 78 10 00              	cmpq	$0, 16(%rax)
100003bd1: 0f 85 93 00 00 00           	jne	0x100003c6a <_pcc_memory_recycler__supply+0xfa>
100003bd7: 48 c7 45 d8 00 00 01 00     	movq	$65536, -40(%rbp)       ## imm = 0x10000
100003bdf: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003be3: 48 83 38 00                 	cmpq	$0, (%rax)
100003be7: 0f 84 32 00 00 00           	je	0x100003c1f <_pcc_memory_recycler__supply+0xaf>
100003bed: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003bf1: 48 8b 00                    	movq	(%rax), %rax
100003bf4: 48 8b 40 08                 	movq	8(%rax), %rax
100003bf8: 48 c1 e0 01                 	shlq	$1, %rax
100003bfc: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003c00: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003c05: 0f 85 0f 00 00 00           	jne	0x100003c1a <_pcc_memory_recycler__supply+0xaa>
100003c0b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c0f: 48 8b 00                    	movq	(%rax), %rax
100003c12: 48 8b 40 08                 	movq	8(%rax), %rax
100003c16: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003c1a: e9 00 00 00 00              	jmp	0x100003c1f <_pcc_memory_recycler__supply+0xaf>
100003c1f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c23: 48 8b 78 10                 	movq	16(%rax), %rdi
100003c27: 48 0f af 7d d8              	imulq	-40(%rbp), %rdi
100003c2c: 48 83 c7 18                 	addq	$24, %rdi
100003c30: e8 8b f0 ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
100003c35: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100003c39: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003c3d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003c41: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003c45: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003c49: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003c4d: 48 89 48 10                 	movq	%rcx, 16(%rax)
100003c51: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c55: 48 8b 08                    	movq	(%rax), %rcx
100003c58: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100003c5c: 48 89 08                    	movq	%rcx, (%rax)
100003c5f: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100003c63: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c67: 48 89 08                    	movq	%rcx, (%rax)
100003c6a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c6e: 48 8b 00                    	movq	(%rax), %rax
100003c71: 48 8b 48 10                 	movq	16(%rax), %rcx
100003c75: 48 83 c1 ff                 	addq	$-1, %rcx
100003c79: 48 89 48 10                 	movq	%rcx, 16(%rax)
100003c7d: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003c81: 48 8b 00                    	movq	(%rax), %rax
100003c84: 48 83 c0 18                 	addq	$24, %rax
100003c88: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003c8c: 48 8b 49 10                 	movq	16(%rcx), %rcx
100003c90: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100003c94: 48 8b 12                    	movq	(%rdx), %rdx
100003c97: 48 0f af 4a 10              	imulq	16(%rdx), %rcx
100003c9c: 48 01 c8                    	addq	%rcx, %rax
100003c9f: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100003ca3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003ca7: 48 83 c4 30                 	addq	$48, %rsp
100003cab: 5d                          	popq	%rbp
100003cac: c3                          	retq
100003cad: 0f 1f 00                    	nopl	(%rax)

0000000100003cb0 <_pcc_lr_table__resize>:
100003cb0: 55                          	pushq	%rbp
100003cb1: 48 89 e5                    	movq	%rsp, %rbp
100003cb4: 48 83 ec 30                 	subq	$48, %rsp
100003cb8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003cbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003cc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100003cc4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003cc8: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003ccc: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003cd0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100003cd4: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100003cd8: 0f 83 29 00 00 00           	jae	0x100003d07 <_pcc_lr_table__resize+0x57>
100003cde: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003ce2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003ce6: 48 8b 00                    	movq	(%rax), %rax
100003ce9: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003ced: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100003cf1: e8 7a 01 00 00              	callq	0x100003e70 <_pcc_lr_table_entry__destroy>
100003cf6: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003cfa: 48 83 c0 01                 	addq	$1, %rax
100003cfe: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003d02: e9 c5 ff ff ff              	jmp	0x100003ccc <_pcc_lr_table__resize+0x1c>
100003d07: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003d0b: 48 8b 40 08                 	movq	8(%rax), %rax
100003d0f: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100003d13: 0f 83 a0 00 00 00           	jae	0x100003db9 <_pcc_lr_table__resize+0x109>
100003d19: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003d1d: 48 8b 40 08                 	movq	8(%rax), %rax
100003d21: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003d25: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003d2a: 0f 85 08 00 00 00           	jne	0x100003d38 <_pcc_lr_table__resize+0x88>
100003d30: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
100003d38: e9 00 00 00 00              	jmp	0x100003d3d <_pcc_lr_table__resize+0x8d>
100003d3d: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003d41: 31 c0                       	xorl	%eax, %eax
100003d43: 48 3b 4d e8                 	cmpq	-24(%rbp), %rcx
100003d47: 88 45 d7                    	movb	%al, -41(%rbp)
100003d4a: 0f 83 0b 00 00 00           	jae	0x100003d5b <_pcc_lr_table__resize+0xab>
100003d50: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003d55: 0f 95 c0                    	setne	%al
100003d58: 88 45 d7                    	movb	%al, -41(%rbp)
100003d5b: 8a 45 d7                    	movb	-41(%rbp), %al
100003d5e: a8 01                       	testb	$1, %al
100003d60: 0f 85 05 00 00 00           	jne	0x100003d6b <_pcc_lr_table__resize+0xbb>
100003d66: e9 11 00 00 00              	jmp	0x100003d7c <_pcc_lr_table__resize+0xcc>
100003d6b: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100003d6f: 48 c1 e0 01                 	shlq	$1, %rax
100003d73: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003d77: e9 c1 ff ff ff              	jmp	0x100003d3d <_pcc_lr_table__resize+0x8d>
100003d7c: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100003d81: 0f 85 08 00 00 00           	jne	0x100003d8f <_pcc_lr_table__resize+0xdf>
100003d87: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003d8b: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100003d8f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003d93: 48 8b 38                    	movq	(%rax), %rdi
100003d96: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100003d9a: 48 c1 e6 03                 	shlq	$3, %rsi
100003d9e: e8 3d 01 00 00              	callq	0x100003ee0 <_pcc_realloc_e>
100003da3: 48 89 c1                    	movq	%rax, %rcx
100003da6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003daa: 48 89 08                    	movq	%rcx, (%rax)
100003dad: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100003db1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003db5: 48 89 48 08                 	movq	%rcx, 8(%rax)
100003db9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003dbd: 48 8b 40 10                 	movq	16(%rax), %rax
100003dc1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003dc5: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003dc9: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100003dcd: 0f 83 24 00 00 00           	jae	0x100003df7 <_pcc_lr_table__resize+0x147>
100003dd3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003dd7: 48 8b 00                    	movq	(%rax), %rax
100003dda: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100003dde: 48 c7 04 c8 00 00 00 00     	movq	$0, (%rax,%rcx,8)
100003de6: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100003dea: 48 83 c0 01                 	addq	$1, %rax
100003dee: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100003df2: e9 ce ff ff ff              	jmp	0x100003dc5 <_pcc_lr_table__resize+0x115>
100003df7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100003dfb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003dff: 48 89 48 10                 	movq	%rcx, 16(%rax)
100003e03: 48 83 c4 30                 	addq	$48, %rsp
100003e07: 5d                          	popq	%rbp
100003e08: c3                          	retq
100003e09: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100003e10 <_pcc_lr_table_entry__create>:
100003e10: 55                          	pushq	%rbp
100003e11: 48 89 e5                    	movq	%rsp, %rbp
100003e14: 48 83 ec 10                 	subq	$16, %rsp
100003e18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003e1c: bf 30 00 00 00              	movl	$48, %edi
100003e21: e8 9a ee ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
100003e26: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100003e2a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e2e: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100003e35: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003e39: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003e40: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003e44: 48 83 c6 08                 	addq	$8, %rsi
100003e48: e8 43 03 00 00              	callq	0x100004190 <_pcc_lr_memo_map__init>
100003e4d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e51: 48 c7 40 20 00 00 00 00     	movq	$0, 32(%rax)
100003e59: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e5d: 48 c7 40 28 00 00 00 00     	movq	$0, 40(%rax)
100003e65: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e69: 48 83 c4 10                 	addq	$16, %rsp
100003e6d: 5d                          	popq	%rbp
100003e6e: c3                          	retq
100003e6f: 90                          	nop

0000000100003e70 <_pcc_lr_table_entry__destroy>:
100003e70: 55                          	pushq	%rbp
100003e71: 48 89 e5                    	movq	%rsp, %rbp
100003e74: 48 83 ec 10                 	subq	$16, %rsp
100003e78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003e7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003e80: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100003e85: 0f 85 05 00 00 00           	jne	0x100003e90 <_pcc_lr_table_entry__destroy+0x20>
100003e8b: e9 3c 00 00 00              	jmp	0x100003ecc <_pcc_lr_table_entry__destroy+0x5c>
100003e90: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003e94: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003e98: 48 8b 70 28                 	movq	40(%rax), %rsi
100003e9c: e8 9f 00 00 00              	callq	0x100003f40 <_pcc_lr_head__destroy>
100003ea1: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003ea5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003ea9: 48 8b 70 20                 	movq	32(%rax), %rsi
100003ead: e8 1e 01 00 00              	callq	0x100003fd0 <_pcc_lr_answer__destroy>
100003eb2: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003eb6: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003eba: 48 83 c6 08                 	addq	$8, %rsi
100003ebe: e8 cd 01 00 00              	callq	0x100004090 <_pcc_lr_memo_map__term>
100003ec3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100003ec7: e8 7b 7d 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100003ecc: 48 83 c4 10                 	addq	$16, %rsp
100003ed0: 5d                          	popq	%rbp
100003ed1: c3                          	retq
100003ed2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100003ee0 <_pcc_realloc_e>:
100003ee0: 55                          	pushq	%rbp
100003ee1: 48 89 e5                    	movq	%rsp, %rbp
100003ee4: 48 83 ec 20                 	subq	$32, %rsp
100003ee8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003eec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003ef0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003ef4: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003ef8: e8 74 7d 00 00              	callq	0x10000bc71 <_strnlen+0x10000bc71>
100003efd: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100003f01: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
100003f06: 0f 85 22 00 00 00           	jne	0x100003f2e <_pcc_realloc_e+0x4e>
100003f0c: 48 8b 05 1d 81 00 00        	movq	33053(%rip), %rax       ## 0x10000c030 <_strnlen+0x10000c030>
100003f13: 48 8b 38                    	movq	(%rax), %rdi
100003f16: 48 8d 35 0a 7f 00 00        	leaq	32522(%rip), %rsi       ## 0x10000be27 <_strnlen+0x10000be27>
100003f1d: 31 c0                       	xorl	%eax, %eax
100003f1f: e8 1d 7d 00 00              	callq	0x10000bc41 <_strnlen+0x10000bc41>
100003f24: bf 01 00 00 00              	movl	$1, %edi
100003f29: e8 07 7d 00 00              	callq	0x10000bc35 <_strnlen+0x10000bc35>
100003f2e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100003f32: 48 83 c4 20                 	addq	$32, %rsp
100003f36: 5d                          	popq	%rbp
100003f37: c3                          	retq
100003f38: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100003f40 <_pcc_lr_head__destroy>:
100003f40: 55                          	pushq	%rbp
100003f41: 48 89 e5                    	movq	%rsp, %rbp
100003f44: 48 83 ec 10                 	subq	$16, %rsp
100003f48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003f4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003f50: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100003f55: 0f 85 05 00 00 00           	jne	0x100003f60 <_pcc_lr_head__destroy+0x20>
100003f5b: e9 60 00 00 00              	jmp	0x100003fc0 <_pcc_lr_head__destroy+0x80>
100003f60: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100003f64: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003f68: 48 8b 70 38                 	movq	56(%rax), %rsi
100003f6c: e8 cf ff ff ff              	callq	0x100003f40 <_pcc_lr_head__destroy>
100003f71: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003f75: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003f7c: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003f80: 48 83 c6 20                 	addq	$32, %rsi
100003f84: e8 77 01 00 00              	callq	0x100004100 <_pcc_rule_set__term>
100003f89: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003f8d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003f94: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100003f98: 48 83 c6 08                 	addq	$8, %rsi
100003f9c: e8 5f 01 00 00              	callq	0x100004100 <_pcc_rule_set__term>
100003fa1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100003fa5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100003fac: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100003fb0: 48 81 c6 a0 00 00 00        	addq	$160, %rsi
100003fb7: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100003fbb: e8 70 01 00 00              	callq	0x100004130 <_pcc_memory_recycler__recycle>
100003fc0: 48 83 c4 10                 	addq	$16, %rsp
100003fc4: 5d                          	popq	%rbp
100003fc5: c3                          	retq
100003fc6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100003fd0 <_pcc_lr_answer__destroy>:
100003fd0: 55                          	pushq	%rbp
100003fd1: 48 89 e5                    	movq	%rsp, %rbp
100003fd4: 48 83 ec 20                 	subq	$32, %rsp
100003fd8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100003fdc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100003fe0: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
100003fe5: 0f 84 97 00 00 00           	je	0x100004082 <_pcc_lr_answer__destroy+0xb2>
100003feb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003fef: 48 8b 40 18                 	movq	24(%rax), %rax
100003ff3: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100003ff7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100003ffb: 8b 00                       	movl	(%rax), %eax
100003ffd: 89 45 e4                    	movl	%eax, -28(%rbp)
100004000: 85 c0                       	testl	%eax, %eax
100004002: 0f 84 16 00 00 00           	je	0x10000401e <_pcc_lr_answer__destroy+0x4e>
100004008: e9 00 00 00 00              	jmp	0x10000400d <_pcc_lr_answer__destroy+0x3d>
10000400d: 8b 45 e4                    	movl	-28(%rbp), %eax
100004010: 83 e8 01                    	subl	$1, %eax
100004013: 0f 84 22 00 00 00           	je	0x10000403b <_pcc_lr_answer__destroy+0x6b>
100004019: e9 33 00 00 00              	jmp	0x100004051 <_pcc_lr_answer__destroy+0x81>
10000401e: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004022: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004029: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000402d: 48 8b 70 08                 	movq	8(%rax), %rsi
100004031: e8 3a 01 00 00              	callq	0x100004170 <_pcc_lr_entry__destroy>
100004036: e9 1b 00 00 00              	jmp	0x100004056 <_pcc_lr_answer__destroy+0x86>
10000403b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000403f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004043: 48 8b 70 08                 	movq	8(%rax), %rsi
100004047: e8 44 f8 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
10000404c: e9 05 00 00 00              	jmp	0x100004056 <_pcc_lr_answer__destroy+0x86>
100004051: e9 00 00 00 00              	jmp	0x100004056 <_pcc_lr_answer__destroy+0x86>
100004056: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000405a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004061: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
100004065: 48 81 c6 b8 00 00 00        	addq	$184, %rsi
10000406c: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100004070: e8 bb 00 00 00              	callq	0x100004130 <_pcc_memory_recycler__recycle>
100004075: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004079: 48 89 45 f0                 	movq	%rax, -16(%rbp)
10000407d: e9 5e ff ff ff              	jmp	0x100003fe0 <_pcc_lr_answer__destroy+0x10>
100004082: 48 83 c4 20                 	addq	$32, %rsp
100004086: 5d                          	popq	%rbp
100004087: c3                          	retq
100004088: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004090 <_pcc_lr_memo_map__term>:
100004090: 55                          	pushq	%rbp
100004091: 48 89 e5                    	movq	%rsp, %rbp
100004094: 48 83 ec 10                 	subq	$16, %rsp
100004098: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000409c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000040a0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000040a4: 48 83 78 10 00              	cmpq	$0, 16(%rax)
1000040a9: 0f 86 38 00 00 00           	jbe	0x1000040e7 <_pcc_lr_memo_map__term+0x57>
1000040af: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000040b3: 48 8b 48 10                 	movq	16(%rax), %rcx
1000040b7: 48 83 c1 ff                 	addq	$-1, %rcx
1000040bb: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000040bf: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000040c3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000040c7: 48 8b 00                    	movq	(%rax), %rax
1000040ca: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000040ce: 48 8b 49 10                 	movq	16(%rcx), %rcx
1000040d2: 48 c1 e1 04                 	shlq	$4, %rcx
1000040d6: 48 01 c8                    	addq	%rcx, %rax
1000040d9: 48 8b 70 08                 	movq	8(%rax), %rsi
1000040dd: e8 ee fe ff ff              	callq	0x100003fd0 <_pcc_lr_answer__destroy>
1000040e2: e9 b9 ff ff ff              	jmp	0x1000040a0 <_pcc_lr_memo_map__term+0x10>
1000040e7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000040eb: 48 8b 38                    	movq	(%rax), %rdi
1000040ee: e8 54 7b 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
1000040f3: 48 83 c4 10                 	addq	$16, %rsp
1000040f7: 5d                          	popq	%rbp
1000040f8: c3                          	retq
1000040f9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100004100 <_pcc_rule_set__term>:
100004100: 55                          	pushq	%rbp
100004101: 48 89 e5                    	movq	%rsp, %rbp
100004104: 48 83 ec 10                 	subq	$16, %rsp
100004108: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000410c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004110: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004114: 48 8b 38                    	movq	(%rax), %rdi
100004117: e8 2b 7b 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000411c: 48 83 c4 10                 	addq	$16, %rsp
100004120: 5d                          	popq	%rbp
100004121: c3                          	retq
100004122: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100004130 <_pcc_memory_recycler__recycle>:
100004130: 55                          	pushq	%rbp
100004131: 48 89 e5                    	movq	%rsp, %rbp
100004134: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004138: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000413c: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004140: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004144: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004148: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000414c: 48 8b 48 08                 	movq	8(%rax), %rcx
100004150: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100004154: 48 89 08                    	movq	%rcx, (%rax)
100004157: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000415b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000415f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004163: 5d                          	popq	%rbp
100004164: c3                          	retq
100004165: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100004170 <_pcc_lr_entry__destroy>:
100004170: 55                          	pushq	%rbp
100004171: 48 89 e5                    	movq	%rsp, %rbp
100004174: 48 83 ec 10                 	subq	$16, %rsp
100004178: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000417c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004180: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004184: e8 be 7a 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100004189: 48 83 c4 10                 	addq	$16, %rsp
10000418d: 5d                          	popq	%rbp
10000418e: c3                          	retq
10000418f: 90                          	nop

0000000100004190 <_pcc_lr_memo_map__init>:
100004190: 55                          	pushq	%rbp
100004191: 48 89 e5                    	movq	%rsp, %rbp
100004194: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100004198: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000419c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041a0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000041a8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041ac: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000041b4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041b8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000041bf: 5d                          	popq	%rbp
1000041c0: c3                          	retq
1000041c1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000041d0 <_pcc_rule_set__init>:
1000041d0: 55                          	pushq	%rbp
1000041d1: 48 89 e5                    	movq	%rsp, %rbp
1000041d4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000041d8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000041dc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041e0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000041e8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041ec: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000041f4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000041f8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000041ff: 5d                          	popq	%rbp
100004200: c3                          	retq
100004201: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100004210 <_pcc_lr_memo_map__put>:
100004210: 55                          	pushq	%rbp
100004211: 48 89 e5                    	movq	%rsp, %rbp
100004214: 48 83 ec 40                 	subq	$64, %rsp
100004218: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000421c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004220: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100004224: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100004228: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000422c: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004230: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004234: e8 b7 f8 ff ff              	callq	0x100003af0 <_pcc_lr_memo_map__index>
100004239: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000423d: 48 83 7d d8 ff              	cmpq	$-1, -40(%rbp)
100004242: 0f 84 3e 00 00 00           	je	0x100004286 <_pcc_lr_memo_map__put+0x76>
100004248: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000424c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004250: 48 8b 00                    	movq	(%rax), %rax
100004253: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100004257: 48 c1 e1 04                 	shlq	$4, %rcx
10000425b: 48 01 c8                    	addq	%rcx, %rax
10000425e: 48 8b 70 08                 	movq	8(%rax), %rsi
100004262: e8 69 fd ff ff              	callq	0x100003fd0 <_pcc_lr_answer__destroy>
100004267: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000426b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000426f: 48 8b 00                    	movq	(%rax), %rax
100004272: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004276: 48 c1 e2 04                 	shlq	$4, %rdx
10000427a: 48 01 d0                    	addq	%rdx, %rax
10000427d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004281: e9 11 01 00 00              	jmp	0x100004397 <_pcc_lr_memo_map__put+0x187>
100004286: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000428a: 48 8b 40 08                 	movq	8(%rax), %rax
10000428e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004292: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100004296: 0f 87 b0 00 00 00           	ja	0x10000434c <_pcc_lr_memo_map__put+0x13c>
10000429c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000042a0: 48 8b 40 10                 	movq	16(%rax), %rax
1000042a4: 48 83 c0 01                 	addq	$1, %rax
1000042a8: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000042ac: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000042b0: 48 8b 40 08                 	movq	8(%rax), %rax
1000042b4: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000042b8: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
1000042bd: 0f 85 08 00 00 00           	jne	0x1000042cb <_pcc_lr_memo_map__put+0xbb>
1000042c3: 48 c7 45 c8 02 00 00 00     	movq	$2, -56(%rbp)
1000042cb: e9 00 00 00 00              	jmp	0x1000042d0 <_pcc_lr_memo_map__put+0xc0>
1000042d0: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000042d4: 31 c0                       	xorl	%eax, %eax
1000042d6: 48 3b 4d d0                 	cmpq	-48(%rbp), %rcx
1000042da: 88 45 c7                    	movb	%al, -57(%rbp)
1000042dd: 0f 83 0b 00 00 00           	jae	0x1000042ee <_pcc_lr_memo_map__put+0xde>
1000042e3: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
1000042e8: 0f 95 c0                    	setne	%al
1000042eb: 88 45 c7                    	movb	%al, -57(%rbp)
1000042ee: 8a 45 c7                    	movb	-57(%rbp), %al
1000042f1: a8 01                       	testb	$1, %al
1000042f3: 0f 85 05 00 00 00           	jne	0x1000042fe <_pcc_lr_memo_map__put+0xee>
1000042f9: e9 11 00 00 00              	jmp	0x10000430f <_pcc_lr_memo_map__put+0xff>
1000042fe: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100004302: 48 c1 e0 01                 	shlq	$1, %rax
100004306: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000430a: e9 c1 ff ff ff              	jmp	0x1000042d0 <_pcc_lr_memo_map__put+0xc0>
10000430f: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
100004314: 0f 85 08 00 00 00           	jne	0x100004322 <_pcc_lr_memo_map__put+0x112>
10000431a: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000431e: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100004322: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004326: 48 8b 38                    	movq	(%rax), %rdi
100004329: 48 8b 75 c8                 	movq	-56(%rbp), %rsi
10000432d: 48 c1 e6 04                 	shlq	$4, %rsi
100004331: e8 aa fb ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
100004336: 48 89 c1                    	movq	%rax, %rcx
100004339: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000433d: 48 89 08                    	movq	%rcx, (%rax)
100004340: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004344: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004348: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000434c: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100004350: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004354: 48 8b 00                    	movq	(%rax), %rax
100004357: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000435b: 48 8b 52 10                 	movq	16(%rdx), %rdx
10000435f: 48 c1 e2 04                 	shlq	$4, %rdx
100004363: 48 01 d0                    	addq	%rdx, %rax
100004366: 48 89 08                    	movq	%rcx, (%rax)
100004369: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000436d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004371: 48 8b 00                    	movq	(%rax), %rax
100004374: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
100004378: 48 8b 52 10                 	movq	16(%rdx), %rdx
10000437c: 48 c1 e2 04                 	shlq	$4, %rdx
100004380: 48 01 d0                    	addq	%rdx, %rax
100004383: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004387: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000438b: 48 8b 48 10                 	movq	16(%rax), %rcx
10000438f: 48 83 c1 01                 	addq	$1, %rcx
100004393: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004397: 48 83 c4 40                 	addq	$64, %rsp
10000439b: 5d                          	popq	%rbp
10000439c: c3                          	retq
10000439d: 0f 1f 00                    	nopl	(%rax)

00000001000043a0 <_pcc_rule_set__clear>:
1000043a0: 55                          	pushq	%rbp
1000043a1: 48 89 e5                    	movq	%rsp, %rbp
1000043a4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000043a8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000043ac: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000043b0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000043b8: 5d                          	popq	%rbp
1000043b9: c3                          	retq
1000043ba: 66 0f 1f 44 00 00           	nopw	(%rax,%rax)

00000001000043c0 <_pcc_thunk_array__term>:
1000043c0: 55                          	pushq	%rbp
1000043c1: 48 89 e5                    	movq	%rsp, %rbp
1000043c4: 48 83 ec 10                 	subq	$16, %rsp
1000043c8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000043cc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000043d0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000043d4: 48 83 78 10 00              	cmpq	$0, 16(%rax)
1000043d9: 0f 86 31 00 00 00           	jbe	0x100004410 <_pcc_thunk_array__term+0x50>
1000043df: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000043e3: 48 8b 48 10                 	movq	16(%rax), %rcx
1000043e7: 48 83 c1 ff                 	addq	$-1, %rcx
1000043eb: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000043ef: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000043f3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000043f7: 48 8b 00                    	movq	(%rax), %rax
1000043fa: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000043fe: 48 8b 49 10                 	movq	16(%rcx), %rcx
100004402: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
100004406: e8 c5 00 00 00              	callq	0x1000044d0 <_pcc_thunk__destroy>
10000440b: e9 c0 ff ff ff              	jmp	0x1000043d0 <_pcc_thunk_array__term+0x10>
100004410: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004414: 48 8b 38                    	movq	(%rax), %rdi
100004417: e8 2b 78 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000441c: 48 83 c4 10                 	addq	$16, %rsp
100004420: 5d                          	popq	%rbp
100004421: c3                          	retq
100004422: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

0000000100004430 <_pcc_capture_table__term>:
100004430: 55                          	pushq	%rbp
100004431: 48 89 e5                    	movq	%rsp, %rbp
100004434: 48 83 ec 10                 	subq	$16, %rsp
100004438: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000443c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004440: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004444: 48 83 78 10 00              	cmpq	$0, 16(%rax)
100004449: 0f 86 31 00 00 00           	jbe	0x100004480 <_pcc_capture_table__term+0x50>
10000444f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004453: 48 8b 48 10                 	movq	16(%rax), %rcx
100004457: 48 83 c1 ff                 	addq	$-1, %rcx
10000445b: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000445f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004463: 48 8b 00                    	movq	(%rax), %rax
100004466: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000446a: 48 6b 49 10 18              	imulq	$24, 16(%rcx), %rcx
10000446f: 48 01 c8                    	addq	%rcx, %rax
100004472: 48 8b 78 10                 	movq	16(%rax), %rdi
100004476: e8 cc 77 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000447b: e9 c0 ff ff ff              	jmp	0x100004440 <_pcc_capture_table__term+0x10>
100004480: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004484: 48 8b 38                    	movq	(%rax), %rdi
100004487: e8 bb 77 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000448c: 48 83 c4 10                 	addq	$16, %rsp
100004490: 5d                          	popq	%rbp
100004491: c3                          	retq
100004492: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000044a0 <_pcc_value_table__term>:
1000044a0: 55                          	pushq	%rbp
1000044a1: 48 89 e5                    	movq	%rsp, %rbp
1000044a4: 48 83 ec 10                 	subq	$16, %rsp
1000044a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000044ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000044b0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000044b4: 48 8b 38                    	movq	(%rax), %rdi
1000044b7: e8 8b 77 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
1000044bc: 48 83 c4 10                 	addq	$16, %rsp
1000044c0: 5d                          	popq	%rbp
1000044c1: c3                          	retq
1000044c2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000044d0 <_pcc_thunk__destroy>:
1000044d0: 55                          	pushq	%rbp
1000044d1: 48 89 e5                    	movq	%rsp, %rbp
1000044d4: 48 83 ec 20                 	subq	$32, %rsp
1000044d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000044dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000044e0: 48 83 7d f0 00              	cmpq	$0, -16(%rbp)
1000044e5: 0f 85 05 00 00 00           	jne	0x1000044f0 <_pcc_thunk__destroy+0x20>
1000044eb: e9 72 00 00 00              	jmp	0x100004562 <_pcc_thunk__destroy+0x92>
1000044f0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000044f4: 8b 00                       	movl	(%rax), %eax
1000044f6: 89 45 ec                    	movl	%eax, -20(%rbp)
1000044f9: 85 c0                       	testl	%eax, %eax
1000044fb: 0f 84 16 00 00 00           	je	0x100004517 <_pcc_thunk__destroy+0x47>
100004501: e9 00 00 00 00              	jmp	0x100004506 <_pcc_thunk__destroy+0x36>
100004506: 8b 45 ec                    	movl	-20(%rbp), %eax
100004509: 83 e8 01                    	subl	$1, %eax
10000450c: 0f 84 3d 00 00 00           	je	0x10000454f <_pcc_thunk__destroy+0x7f>
100004512: e9 3d 00 00 00              	jmp	0x100004554 <_pcc_thunk__destroy+0x84>
100004517: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000451b: 48 8b 78 48                 	movq	72(%rax), %rdi
10000451f: e8 23 77 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100004524: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004528: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000452c: 48 83 c6 08                 	addq	$8, %rsi
100004530: 48 83 c6 18                 	addq	$24, %rsi
100004534: e8 37 00 00 00              	callq	0x100004570 <_pcc_capture_const_table__term>
100004539: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000453d: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004541: 48 83 c6 08                 	addq	$8, %rsi
100004545: e8 56 00 00 00              	callq	0x1000045a0 <_pcc_value_refer_table__term>
10000454a: e9 0a 00 00 00              	jmp	0x100004559 <_pcc_thunk__destroy+0x89>
10000454f: e9 05 00 00 00              	jmp	0x100004559 <_pcc_thunk__destroy+0x89>
100004554: e9 00 00 00 00              	jmp	0x100004559 <_pcc_thunk__destroy+0x89>
100004559: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000455d: e8 e5 76 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100004562: 48 83 c4 20                 	addq	$32, %rsp
100004566: 5d                          	popq	%rbp
100004567: c3                          	retq
100004568: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100004570 <_pcc_capture_const_table__term>:
100004570: 55                          	pushq	%rbp
100004571: 48 89 e5                    	movq	%rsp, %rbp
100004574: 48 83 ec 10                 	subq	$16, %rsp
100004578: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000457c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100004580: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004584: 48 8b 38                    	movq	(%rax), %rdi
100004587: e8 bb 76 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000458c: 48 83 c4 10                 	addq	$16, %rsp
100004590: 5d                          	popq	%rbp
100004591: c3                          	retq
100004592: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000045a0 <_pcc_value_refer_table__term>:
1000045a0: 55                          	pushq	%rbp
1000045a1: 48 89 e5                    	movq	%rsp, %rbp
1000045a4: 48 83 ec 10                 	subq	$16, %rsp
1000045a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000045ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000045b0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000045b4: 48 8b 38                    	movq	(%rax), %rdi
1000045b7: e8 8b 76 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
1000045bc: 48 83 c4 10                 	addq	$16, %rsp
1000045c0: 5d                          	popq	%rbp
1000045c1: c3                          	retq
1000045c2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000045d0 <_pcc_thunk_chunk__create>:
1000045d0: 55                          	pushq	%rbp
1000045d1: 48 89 e5                    	movq	%rsp, %rbp
1000045d4: 48 83 ec 10                 	subq	$16, %rsp
1000045d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000045dc: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000045e0: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000045e7: 48 8b 75 f8                 	movq	-8(%rbp), %rsi
1000045eb: 48 81 c6 88 00 00 00        	addq	$136, %rsi
1000045f2: e8 79 f5 ff ff              	callq	0x100003b70 <_pcc_memory_recycler__supply>
1000045f7: 48 89 45 f0                 	movq	%rax, -16(%rbp)
1000045fb: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000045ff: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004606: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000460a: e8 61 3b 00 00              	callq	0x100008170 <_pcc_value_table__init>
10000460f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004613: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000461a: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000461e: 48 83 c6 18                 	addq	$24, %rsi
100004622: e8 89 3b 00 00              	callq	0x1000081b0 <_pcc_capture_table__init>
100004627: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000462b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004632: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004636: 48 83 c6 30                 	addq	$48, %rsi
10000463a: e8 91 e7 ff ff              	callq	0x100002dd0 <_pcc_thunk_array__init>
10000463f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004643: 48 c7 40 48 00 00 00 00     	movq	$0, 72(%rax)
10000464b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000464f: 48 83 c4 10                 	addq	$16, %rsp
100004653: 5d                          	popq	%rbp
100004654: c3                          	retq
100004655: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100004660 <_pcc_evaluate_rule__>:
100004660: 55                          	pushq	%rbp
100004661: 48 89 e5                    	movq	%rsp, %rbp
100004664: 48 83 ec 40                 	subq	$64, %rsp
100004668: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000466c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100004670: e8 5b ff ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100004675: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100004679: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000467d: 48 8b 48 08                 	movq	8(%rax), %rcx
100004681: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004685: 48 89 48 48                 	movq	%rcx, 72(%rax)
100004689: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000468d: 48 8b 48 10                 	movq	16(%rax), %rcx
100004691: 48 83 c1 01                 	addq	$1, %rcx
100004695: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004699: c7 45 ec 00 00 00 00        	movl	$0, -20(%rbp)
1000046a0: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000046a4: 48 8b 40 08                 	movq	8(%rax), %rax
1000046a8: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000046ac: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000046b0: 48 8b 40 40                 	movq	64(%rax), %rax
1000046b4: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000046b8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000046bc: 48 8b 40 08                 	movq	8(%rax), %rax
1000046c0: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000046c4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000046c8: 48 8b 40 40                 	movq	64(%rax), %rax
1000046cc: 48 89 45 c8                 	movq	%rax, -56(%rbp)
1000046d0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000046d4: be 01 00 00 00              	movl	$1, %esi
1000046d9: e8 b2 e3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000046de: 48 83 f8 01                 	cmpq	$1, %rax
1000046e2: 0f 82 1d 00 00 00           	jb	0x100004705 <_pcc_evaluate_rule__+0xa5>
1000046e8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000046ec: 48 8b 40 18                 	movq	24(%rax), %rax
1000046f0: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000046f4: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000046f8: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000046fc: 83 f8 0a                    	cmpl	$10, %eax
1000046ff: 0f 84 05 00 00 00           	je	0x10000470a <_pcc_evaluate_rule__+0xaa>
100004705: e9 15 00 00 00              	jmp	0x10000471f <_pcc_evaluate_rule__+0xbf>
10000470a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000470e: 48 8b 48 08                 	movq	8(%rax), %rcx
100004712: 48 83 c1 01                 	addq	$1, %rcx
100004716: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000471a: e9 1b 01 00 00              	jmp	0x10000483a <_pcc_evaluate_rule__+0x1da>
10000471f: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004723: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004727: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000472b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000472f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004736: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000473a: 48 83 c6 30                 	addq	$48, %rsi
10000473e: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004742: e8 e9 e2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004747: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000474b: be 01 00 00 00              	movl	$1, %esi
100004750: e8 3b e3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004755: 48 83 f8 01                 	cmpq	$1, %rax
100004759: 0f 82 1d 00 00 00           	jb	0x10000477c <_pcc_evaluate_rule__+0x11c>
10000475f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004763: 48 8b 40 18                 	movq	24(%rax), %rax
100004767: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
10000476b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000476f: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004773: 83 f8 20                    	cmpl	$32, %eax
100004776: 0f 84 05 00 00 00           	je	0x100004781 <_pcc_evaluate_rule__+0x121>
10000477c: e9 15 00 00 00              	jmp	0x100004796 <_pcc_evaluate_rule__+0x136>
100004781: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004785: 48 8b 48 08                 	movq	8(%rax), %rcx
100004789: 48 83 c1 01                 	addq	$1, %rcx
10000478d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004791: e9 a4 00 00 00              	jmp	0x10000483a <_pcc_evaluate_rule__+0x1da>
100004796: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
10000479a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000479e: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000047a2: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000047a6: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000047ad: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000047b1: 48 83 c6 30                 	addq	$48, %rsi
1000047b5: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000047b9: e8 72 e2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000047be: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000047c2: be 01 00 00 00              	movl	$1, %esi
1000047c7: e8 c4 e2 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000047cc: 48 83 f8 01                 	cmpq	$1, %rax
1000047d0: 0f 82 1d 00 00 00           	jb	0x1000047f3 <_pcc_evaluate_rule__+0x193>
1000047d6: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000047da: 48 8b 40 18                 	movq	24(%rax), %rax
1000047de: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
1000047e2: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000047e6: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000047ea: 83 f8 09                    	cmpl	$9, %eax
1000047ed: 0f 84 05 00 00 00           	je	0x1000047f8 <_pcc_evaluate_rule__+0x198>
1000047f3: e9 15 00 00 00              	jmp	0x10000480d <_pcc_evaluate_rule__+0x1ad>
1000047f8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000047fc: 48 8b 48 08                 	movq	8(%rax), %rcx
100004800: 48 83 c1 01                 	addq	$1, %rcx
100004804: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004808: e9 2d 00 00 00              	jmp	0x10000483a <_pcc_evaluate_rule__+0x1da>
10000480d: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100004811: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004815: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004819: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000481d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004824: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004828: 48 83 c6 30                 	addq	$48, %rsi
10000482c: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100004830: e8 fb e1 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004835: e9 1c 00 00 00              	jmp	0x100004856 <_pcc_evaluate_rule__+0x1f6>
10000483a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000483e: 48 8b 40 08                 	movq	8(%rax), %rax
100004842: 48 3b 45 e0                 	cmpq	-32(%rbp), %rax
100004846: 0f 85 05 00 00 00           	jne	0x100004851 <_pcc_evaluate_rule__+0x1f1>
10000484c: e9 40 00 00 00              	jmp	0x100004891 <_pcc_evaluate_rule__+0x231>
100004851: e9 2d 00 00 00              	jmp	0x100004883 <_pcc_evaluate_rule__+0x223>
100004856: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000485a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000485e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004862: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004866: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000486d: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100004871: 48 83 c6 30                 	addq	$48, %rsi
100004875: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004879: e8 b2 e1 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000487e: e9 0e 00 00 00              	jmp	0x100004891 <_pcc_evaluate_rule__+0x231>
100004883: 8b 45 ec                    	movl	-20(%rbp), %eax
100004886: 83 c0 01                    	addl	$1, %eax
100004889: 89 45 ec                    	movl	%eax, -20(%rbp)
10000488c: e9 0f fe ff ff              	jmp	0x1000046a0 <_pcc_evaluate_rule__+0x40>
100004891: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004895: 48 8b 48 10                 	movq	16(%rax), %rcx
100004899: 48 83 c1 ff                 	addq	$-1, %rcx
10000489d: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000048a1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000048a5: 48 83 c4 40                 	addq	$64, %rsp
1000048a9: 5d                          	popq	%rbp
1000048aa: c3                          	retq
1000048ab: 0f 1f 44 00 00              	nopl	(%rax,%rax)

00000001000048b0 <_pcc_evaluate_rule_data>:
1000048b0: 55                          	pushq	%rbp
1000048b1: 48 89 e5                    	movq	%rsp, %rbp
1000048b4: 48 83 ec 30                 	subq	$48, %rsp
1000048b8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000048bc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000048c0: e8 0b fd ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
1000048c5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000048c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000048cd: 48 8b 48 08                 	movq	8(%rax), %rcx
1000048d1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000048d5: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000048d9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000048dd: 48 8b 48 10                 	movq	16(%rax), %rcx
1000048e1: 48 83 c1 01                 	addq	$1, %rcx
1000048e5: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000048e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000048ed: 48 8b 40 08                 	movq	8(%rax), %rax
1000048f1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000048f5: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000048f9: 48 8b 40 40                 	movq	64(%rax), %rax
1000048fd: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100004901: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004905: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004909: 48 83 c2 30                 	addq	$48, %rdx
10000490d: 48 8d 35 dc 38 00 00        	leaq	14556(%rip), %rsi       ## 0x1000081f0 <_pcc_evaluate_rule_defcall>
100004914: 31 c0                       	xorl	%eax, %eax
100004916: 89 c1                       	movl	%eax, %ecx
100004918: e8 a3 d3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000491d: 83 f8 00                    	cmpl	$0, %eax
100004920: 0f 85 05 00 00 00           	jne	0x10000492b <_pcc_evaluate_rule_data+0x7b>
100004926: e9 05 00 00 00              	jmp	0x100004930 <_pcc_evaluate_rule_data+0x80>
10000492b: e9 db 00 00 00              	jmp	0x100004a0b <_pcc_evaluate_rule_data+0x15b>
100004930: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100004934: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004938: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000493c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004940: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004947: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000494b: 48 83 c6 30                 	addq	$48, %rsi
10000494f: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004953: e8 d8 e0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004958: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000495c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004960: 48 83 c2 30                 	addq	$48, %rdx
100004964: 48 8d 35 25 3a 00 00        	leaq	14885(%rip), %rsi       ## 0x100008390 <_pcc_evaluate_rule_addr>
10000496b: 31 c0                       	xorl	%eax, %eax
10000496d: 89 c1                       	movl	%eax, %ecx
10000496f: e8 4c d3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100004974: 83 f8 00                    	cmpl	$0, %eax
100004977: 0f 85 05 00 00 00           	jne	0x100004982 <_pcc_evaluate_rule_data+0xd2>
10000497d: e9 05 00 00 00              	jmp	0x100004987 <_pcc_evaluate_rule_data+0xd7>
100004982: e9 84 00 00 00              	jmp	0x100004a0b <_pcc_evaluate_rule_data+0x15b>
100004987: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000498b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000498f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004993: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004997: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000499e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000049a2: 48 83 c6 30                 	addq	$48, %rsi
1000049a6: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000049aa: e8 81 e0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000049af: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000049b3: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000049b7: 48 83 c2 30                 	addq	$48, %rdx
1000049bb: 48 8d 35 2e 3d 00 00        	leaq	15662(%rip), %rsi       ## 0x1000086f0 <_pcc_evaluate_rule_consts>
1000049c2: 31 c0                       	xorl	%eax, %eax
1000049c4: 89 c1                       	movl	%eax, %ecx
1000049c6: e8 f5 d2 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000049cb: 83 f8 00                    	cmpl	$0, %eax
1000049ce: 0f 85 05 00 00 00           	jne	0x1000049d9 <_pcc_evaluate_rule_data+0x129>
1000049d4: e9 05 00 00 00              	jmp	0x1000049de <_pcc_evaluate_rule_data+0x12e>
1000049d9: e9 2d 00 00 00              	jmp	0x100004a0b <_pcc_evaluate_rule_data+0x15b>
1000049de: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000049e2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000049e6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000049ea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000049ee: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000049f5: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000049f9: 48 83 c6 30                 	addq	$48, %rsi
1000049fd: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100004a01: e8 2a e0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004a06: e9 1d 00 00 00              	jmp	0x100004a28 <_pcc_evaluate_rule_data+0x178>
100004a0b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004a0f: 48 8b 48 10                 	movq	16(%rax), %rcx
100004a13: 48 83 c1 ff                 	addq	$-1, %rcx
100004a17: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004a1b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004a1f: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100004a23: e9 25 00 00 00              	jmp	0x100004a4d <_pcc_evaluate_rule_data+0x19d>
100004a28: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004a2c: 48 8b 48 10                 	movq	16(%rax), %rcx
100004a30: 48 83 c1 ff                 	addq	$-1, %rcx
100004a34: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004a38: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004a3c: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004a40: e8 4b ee ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100004a45: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100004a4d: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004a51: 48 83 c4 30                 	addq	$48, %rsp
100004a55: 5d                          	popq	%rbp
100004a56: c3                          	retq
100004a57: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100004a60 <_pcc_evaluate_rule_comment>:
100004a60: 55                          	pushq	%rbp
100004a61: 48 89 e5                    	movq	%rsp, %rbp
100004a64: 48 83 ec 60                 	subq	$96, %rsp
100004a68: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100004a6c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004a70: e8 5b fb ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100004a75: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100004a79: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004a7d: 48 8b 48 08                 	movq	8(%rax), %rcx
100004a81: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004a85: 48 89 48 48                 	movq	%rcx, 72(%rax)
100004a89: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004a8d: 48 8b 48 10                 	movq	16(%rax), %rcx
100004a91: 48 83 c1 01                 	addq	$1, %rcx
100004a95: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004a99: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004a9d: be 01 00 00 00              	movl	$1, %esi
100004aa2: e8 e9 df ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004aa7: 48 83 f8 01                 	cmpq	$1, %rax
100004aab: 0f 82 1d 00 00 00           	jb	0x100004ace <_pcc_evaluate_rule_comment+0x6e>
100004ab1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ab5: 48 8b 40 18                 	movq	24(%rax), %rax
100004ab9: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004abd: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004ac1: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004ac5: 83 f8 23                    	cmpl	$35, %eax
100004ac8: 0f 84 05 00 00 00           	je	0x100004ad3 <_pcc_evaluate_rule_comment+0x73>
100004ace: e9 31 02 00 00              	jmp	0x100004d04 <_pcc_evaluate_rule_comment+0x2a4>
100004ad3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ad7: 48 8b 48 08                 	movq	8(%rax), %rcx
100004adb: 48 83 c1 01                 	addq	$1, %rcx
100004adf: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004ae3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004ae7: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004aeb: 48 83 c2 30                 	addq	$48, %rdx
100004aef: 48 8d 35 6a fb ff ff        	leaq	-1174(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100004af6: 31 c0                       	xorl	%eax, %eax
100004af8: 89 c1                       	movl	%eax, %ecx
100004afa: e8 c1 d1 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100004aff: 83 f8 00                    	cmpl	$0, %eax
100004b02: 0f 85 05 00 00 00           	jne	0x100004b0d <_pcc_evaluate_rule_comment+0xad>
100004b08: e9 f7 01 00 00              	jmp	0x100004d04 <_pcc_evaluate_rule_comment+0x2a4>
100004b0d: c7 45 e4 00 00 00 00        	movl	$0, -28(%rbp)
100004b14: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b18: 48 8b 40 08                 	movq	8(%rax), %rax
100004b1c: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100004b20: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004b24: 48 8b 40 40                 	movq	64(%rax), %rax
100004b28: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100004b2c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b30: 48 8b 40 08                 	movq	8(%rax), %rax
100004b34: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100004b38: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004b3c: be 01 00 00 00              	movl	$1, %esi
100004b41: e8 4a df ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004b46: 48 83 f8 01                 	cmpq	$1, %rax
100004b4a: 0f 82 1d 00 00 00           	jb	0x100004b6d <_pcc_evaluate_rule_comment+0x10d>
100004b50: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b54: 48 8b 40 18                 	movq	24(%rax), %rax
100004b58: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004b5c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004b60: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004b64: 83 f8 0a                    	cmpl	$10, %eax
100004b67: 0f 84 05 00 00 00           	je	0x100004b72 <_pcc_evaluate_rule_comment+0x112>
100004b6d: e9 21 00 00 00              	jmp	0x100004b93 <_pcc_evaluate_rule_comment+0x133>
100004b72: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b76: 48 8b 48 08                 	movq	8(%rax), %rcx
100004b7a: 48 83 c1 01                 	addq	$1, %rcx
100004b7e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004b82: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004b86: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b8a: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004b8e: e9 59 00 00 00              	jmp	0x100004bec <_pcc_evaluate_rule_comment+0x18c>
100004b93: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004b97: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004b9b: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004b9f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004ba3: 48 8d 75 c4                 	leaq	-60(%rbp), %rsi
100004ba7: e8 f4 42 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100004bac: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100004bb0: 48 83 7d b8 00              	cmpq	$0, -72(%rbp)
100004bb5: 0f 85 05 00 00 00           	jne	0x100004bc0 <_pcc_evaluate_rule_comment+0x160>
100004bbb: e9 2c 00 00 00              	jmp	0x100004bec <_pcc_evaluate_rule_comment+0x18c>
100004bc0: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004bc4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004bc8: 48 03 48 08                 	addq	8(%rax), %rcx
100004bcc: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004bd0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004bd4: 48 8b 40 08                 	movq	8(%rax), %rax
100004bd8: 48 3b 45 d8                 	cmpq	-40(%rbp), %rax
100004bdc: 0f 85 05 00 00 00           	jne	0x100004be7 <_pcc_evaluate_rule_comment+0x187>
100004be2: e9 40 00 00 00              	jmp	0x100004c27 <_pcc_evaluate_rule_comment+0x1c7>
100004be7: e9 2d 00 00 00              	jmp	0x100004c19 <_pcc_evaluate_rule_comment+0x1b9>
100004bec: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100004bf0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004bf4: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004bf8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004bfc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004c03: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004c07: 48 83 c6 30                 	addq	$48, %rsi
100004c0b: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100004c0f: e8 1c de ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004c14: e9 0e 00 00 00              	jmp	0x100004c27 <_pcc_evaluate_rule_comment+0x1c7>
100004c19: 8b 45 e4                    	movl	-28(%rbp), %eax
100004c1c: 83 c0 01                    	addl	$1, %eax
100004c1f: 89 45 e4                    	movl	%eax, -28(%rbp)
100004c22: e9 ed fe ff ff              	jmp	0x100004b14 <_pcc_evaluate_rule_comment+0xb4>
100004c27: c7 45 b4 00 00 00 00        	movl	$0, -76(%rbp)
100004c2e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004c32: 48 8b 40 08                 	movq	8(%rax), %rax
100004c36: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100004c3a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004c3e: 48 8b 40 40                 	movq	64(%rax), %rax
100004c42: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100004c46: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004c4a: be 01 00 00 00              	movl	$1, %esi
100004c4f: e8 3c de ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004c54: 48 83 f8 01                 	cmpq	$1, %rax
100004c58: 0f 82 1d 00 00 00           	jb	0x100004c7b <_pcc_evaluate_rule_comment+0x21b>
100004c5e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004c62: 48 8b 40 18                 	movq	24(%rax), %rax
100004c66: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004c6a: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004c6e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004c72: 83 f8 0a                    	cmpl	$10, %eax
100004c75: 0f 84 05 00 00 00           	je	0x100004c80 <_pcc_evaluate_rule_comment+0x220>
100004c7b: e9 2c 00 00 00              	jmp	0x100004cac <_pcc_evaluate_rule_comment+0x24c>
100004c80: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004c84: 48 8b 48 08                 	movq	8(%rax), %rcx
100004c88: 48 83 c1 01                 	addq	$1, %rcx
100004c8c: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004c90: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004c94: 48 8b 40 08                 	movq	8(%rax), %rax
100004c98: 48 3b 45 a8                 	cmpq	-88(%rbp), %rax
100004c9c: 0f 85 05 00 00 00           	jne	0x100004ca7 <_pcc_evaluate_rule_comment+0x247>
100004ca2: e9 40 00 00 00              	jmp	0x100004ce7 <_pcc_evaluate_rule_comment+0x287>
100004ca7: e9 2d 00 00 00              	jmp	0x100004cd9 <_pcc_evaluate_rule_comment+0x279>
100004cac: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100004cb0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004cb4: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004cb8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004cbc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004cc3: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004cc7: 48 83 c6 30                 	addq	$48, %rsi
100004ccb: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100004ccf: e8 5c dd ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004cd4: e9 0e 00 00 00              	jmp	0x100004ce7 <_pcc_evaluate_rule_comment+0x287>
100004cd9: 8b 45 b4                    	movl	-76(%rbp), %eax
100004cdc: 83 c0 01                    	addl	$1, %eax
100004cdf: 89 45 b4                    	movl	%eax, -76(%rbp)
100004ce2: e9 47 ff ff ff              	jmp	0x100004c2e <_pcc_evaluate_rule_comment+0x1ce>
100004ce7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ceb: 48 8b 48 10                 	movq	16(%rax), %rcx
100004cef: 48 83 c1 ff                 	addq	$-1, %rcx
100004cf3: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004cf7: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004cfb: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100004cff: e9 25 00 00 00              	jmp	0x100004d29 <_pcc_evaluate_rule_comment+0x2c9>
100004d04: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d08: 48 8b 48 10                 	movq	16(%rax), %rcx
100004d0c: 48 83 c1 ff                 	addq	$-1, %rcx
100004d10: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004d14: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004d18: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004d1c: e8 6f eb ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100004d21: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100004d29: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100004d2d: 48 83 c4 60                 	addq	$96, %rsp
100004d31: 5d                          	popq	%rbp
100004d32: c3                          	retq
100004d33: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100004d40 <_pcc_evaluate_rule_macro_call>:
100004d40: 55                          	pushq	%rbp
100004d41: 48 89 e5                    	movq	%rsp, %rbp
100004d44: 48 83 ec 60                 	subq	$96, %rsp
100004d48: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100004d4c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004d50: e8 7b f8 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100004d55: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100004d59: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d5d: 48 8b 48 08                 	movq	8(%rax), %rcx
100004d61: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004d65: 48 89 48 48                 	movq	%rcx, 72(%rax)
100004d69: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d6d: 48 8b 48 10                 	movq	16(%rax), %rcx
100004d71: 48 83 c1 01                 	addq	$1, %rcx
100004d75: 48 89 48 10                 	movq	%rcx, 16(%rax)
100004d79: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d7d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004d84: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004d88: 48 83 c6 18                 	addq	$24, %rsi
100004d8c: ba 01 00 00 00              	movl	$1, %edx
100004d91: e8 7a 4d 00 00              	callq	0x100009b10 <_pcc_capture_table__resize>
100004d96: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004d9a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004da1: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004da5: ba 01 00 00 00              	movl	$1, %edx
100004daa: e8 b1 3c 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
100004daf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004db3: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004dba: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004dbe: e8 7d 3d 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
100004dc3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004dc7: be 01 00 00 00              	movl	$1, %esi
100004dcc: e8 bf dc ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004dd1: 48 83 f8 01                 	cmpq	$1, %rax
100004dd5: 0f 82 1d 00 00 00           	jb	0x100004df8 <_pcc_evaluate_rule_macro_call+0xb8>
100004ddb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ddf: 48 8b 40 18                 	movq	24(%rax), %rax
100004de3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004de7: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004deb: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004def: 83 f8 40                    	cmpl	$64, %eax
100004df2: 0f 84 05 00 00 00           	je	0x100004dfd <_pcc_evaluate_rule_macro_call+0xbd>
100004df8: e9 ed 02 00 00              	jmp	0x1000050ea <_pcc_evaluate_rule_macro_call+0x3aa>
100004dfd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004e01: 48 8b 48 08                 	movq	8(%rax), %rcx
100004e05: 48 83 c1 01                 	addq	$1, %rcx
100004e09: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004e0d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004e11: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004e15: 48 83 c2 30                 	addq	$48, %rdx
100004e19: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004e1d: 48 8b 08                    	movq	(%rax), %rcx
100004e20: 48 8d 35 59 3d 00 00        	leaq	15705(%rip), %rsi       ## 0x100008b80 <_pcc_evaluate_rule_name>
100004e27: e8 94 ce ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100004e2c: 83 f8 00                    	cmpl	$0, %eax
100004e2f: 0f 85 05 00 00 00           	jne	0x100004e3a <_pcc_evaluate_rule_macro_call+0xfa>
100004e35: e9 b0 02 00 00              	jmp	0x1000050ea <_pcc_evaluate_rule_macro_call+0x3aa>
100004e3a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004e3e: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100004e42: 48 83 c2 30                 	addq	$48, %rdx
100004e46: 48 8d 35 13 f8 ff ff        	leaq	-2029(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100004e4d: 31 c0                       	xorl	%eax, %eax
100004e4f: 89 c1                       	movl	%eax, %ecx
100004e51: e8 6a ce ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100004e56: 83 f8 00                    	cmpl	$0, %eax
100004e59: 0f 85 05 00 00 00           	jne	0x100004e64 <_pcc_evaluate_rule_macro_call+0x124>
100004e5f: e9 86 02 00 00              	jmp	0x1000050ea <_pcc_evaluate_rule_macro_call+0x3aa>
100004e64: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004e68: be 01 00 00 00              	movl	$1, %esi
100004e6d: e8 1e dc ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004e72: 48 83 f8 01                 	cmpq	$1, %rax
100004e76: 0f 82 1d 00 00 00           	jb	0x100004e99 <_pcc_evaluate_rule_macro_call+0x159>
100004e7c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004e80: 48 8b 40 18                 	movq	24(%rax), %rax
100004e84: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004e88: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004e8c: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004e90: 83 f8 28                    	cmpl	$40, %eax
100004e93: 0f 84 05 00 00 00           	je	0x100004e9e <_pcc_evaluate_rule_macro_call+0x15e>
100004e99: e9 4c 02 00 00              	jmp	0x1000050ea <_pcc_evaluate_rule_macro_call+0x3aa>
100004e9e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ea2: 48 8b 48 08                 	movq	8(%rax), %rcx
100004ea6: 48 83 c1 01                 	addq	$1, %rcx
100004eaa: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004eae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004eb2: 48 8b 40 08                 	movq	8(%rax), %rax
100004eb6: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100004eba: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100004ec1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004ec5: 48 8b 40 08                 	movq	8(%rax), %rax
100004ec9: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100004ecd: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004ed1: 48 8b 40 40                 	movq	64(%rax), %rax
100004ed5: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100004ed9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004edd: 48 8b 40 08                 	movq	8(%rax), %rax
100004ee1: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100004ee5: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004ee9: be 01 00 00 00              	movl	$1, %esi
100004eee: e8 9d db ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100004ef3: 48 83 f8 01                 	cmpq	$1, %rax
100004ef7: 0f 82 1d 00 00 00           	jb	0x100004f1a <_pcc_evaluate_rule_macro_call+0x1da>
100004efd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f01: 48 8b 40 18                 	movq	24(%rax), %rax
100004f05: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100004f09: 48 8b 49 08                 	movq	8(%rcx), %rcx
100004f0d: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100004f11: 83 f8 29                    	cmpl	$41, %eax
100004f14: 0f 84 05 00 00 00           	je	0x100004f1f <_pcc_evaluate_rule_macro_call+0x1df>
100004f1a: e9 21 00 00 00              	jmp	0x100004f40 <_pcc_evaluate_rule_macro_call+0x200>
100004f1f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f23: 48 8b 48 08                 	movq	8(%rax), %rcx
100004f27: 48 83 c1 01                 	addq	$1, %rcx
100004f2b: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004f2f: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004f33: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f37: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004f3b: e9 59 00 00 00              	jmp	0x100004f99 <_pcc_evaluate_rule_macro_call+0x259>
100004f40: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100004f44: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f48: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004f4c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100004f50: 48 8d 75 b4                 	leaq	-76(%rbp), %rsi
100004f54: e8 47 3f 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100004f59: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100004f5d: 48 83 7d a8 00              	cmpq	$0, -88(%rbp)
100004f62: 0f 85 05 00 00 00           	jne	0x100004f6d <_pcc_evaluate_rule_macro_call+0x22d>
100004f68: e9 2c 00 00 00              	jmp	0x100004f99 <_pcc_evaluate_rule_macro_call+0x259>
100004f6d: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100004f71: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f75: 48 03 48 08                 	addq	8(%rax), %rcx
100004f79: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004f7d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004f81: 48 8b 40 08                 	movq	8(%rax), %rax
100004f85: 48 3b 45 c8                 	cmpq	-56(%rbp), %rax
100004f89: 0f 85 05 00 00 00           	jne	0x100004f94 <_pcc_evaluate_rule_macro_call+0x254>
100004f8f: e9 40 00 00 00              	jmp	0x100004fd4 <_pcc_evaluate_rule_macro_call+0x294>
100004f94: e9 2d 00 00 00              	jmp	0x100004fc6 <_pcc_evaluate_rule_macro_call+0x286>
100004f99: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100004f9d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004fa1: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004fa5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004fa9: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100004fb0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100004fb4: 48 83 c6 30                 	addq	$48, %rsi
100004fb8: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100004fbc: e8 6f da ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100004fc1: e9 0e 00 00 00              	jmp	0x100004fd4 <_pcc_evaluate_rule_macro_call+0x294>
100004fc6: 8b 45 d4                    	movl	-44(%rbp), %eax
100004fc9: 83 c0 01                    	addl	$1, %eax
100004fcc: 89 45 d4                    	movl	%eax, -44(%rbp)
100004fcf: e9 ed fe ff ff              	jmp	0x100004ec1 <_pcc_evaluate_rule_macro_call+0x181>
100004fd4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100004fd8: 48 8b 40 08                 	movq	8(%rax), %rax
100004fdc: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100004fe0: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100004fe4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004fe8: 48 8b 40 18                 	movq	24(%rax), %rax
100004fec: 48 89 08                    	movq	%rcx, (%rax)
100004fef: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100004ff3: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100004ff7: 48 8b 40 18                 	movq	24(%rax), %rax
100004ffb: 48 89 48 08                 	movq	%rcx, 8(%rax)
100004fff: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005003: be 01 00 00 00              	movl	$1, %esi
100005008: e8 83 da ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000500d: 48 83 f8 01                 	cmpq	$1, %rax
100005011: 0f 82 1d 00 00 00           	jb	0x100005034 <_pcc_evaluate_rule_macro_call+0x2f4>
100005017: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000501b: 48 8b 40 18                 	movq	24(%rax), %rax
10000501f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005023: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005027: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000502b: 83 f8 29                    	cmpl	$41, %eax
10000502e: 0f 84 05 00 00 00           	je	0x100005039 <_pcc_evaluate_rule_macro_call+0x2f9>
100005034: e9 b1 00 00 00              	jmp	0x1000050ea <_pcc_evaluate_rule_macro_call+0x3aa>
100005039: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000503d: 48 8b 48 08                 	movq	8(%rax), %rcx
100005041: 48 83 c1 01                 	addq	$1, %rcx
100005045: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005049: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000504d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005054: 48 8d 35 45 4c 00 00        	leaq	19525(%rip), %rsi       ## 0x100009ca0 <_pcc_action_macro_call_0>
10000505b: b9 01 00 00 00              	movl	$1, %ecx
100005060: 48 89 ca                    	movq	%rcx, %rdx
100005063: e8 48 3d 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100005068: 48 89 45 a0                 	movq	%rax, -96(%rbp)
10000506c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005070: 48 8b 08                    	movq	(%rax), %rcx
100005073: 48 8b 45 a0                 	movq	-96(%rbp), %rax
100005077: 48 8b 40 08                 	movq	8(%rax), %rax
10000507b: 48 89 08                    	movq	%rcx, (%rax)
10000507e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005082: 48 8b 48 18                 	movq	24(%rax), %rcx
100005086: 48 8b 45 a0                 	movq	-96(%rbp), %rax
10000508a: 48 8b 40 20                 	movq	32(%rax), %rax
10000508e: 48 89 08                    	movq	%rcx, (%rax)
100005091: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005095: 48 8b 48 48                 	movq	72(%rax), %rcx
100005099: 48 8b 45 a0                 	movq	-96(%rbp), %rax
10000509d: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000050a1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000050a5: 48 8b 48 08                 	movq	8(%rax), %rcx
1000050a9: 48 8b 45 a0                 	movq	-96(%rbp), %rax
1000050ad: 48 89 48 40                 	movq	%rcx, 64(%rax)
1000050b1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000050b5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000050bc: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000050c0: 48 83 c6 30                 	addq	$48, %rsi
1000050c4: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
1000050c8: e8 53 e8 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
1000050cd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000050d1: 48 8b 48 10                 	movq	16(%rax), %rcx
1000050d5: 48 83 c1 ff                 	addq	$-1, %rcx
1000050d9: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000050dd: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000050e1: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000050e5: e9 25 00 00 00              	jmp	0x10000510f <_pcc_evaluate_rule_macro_call+0x3cf>
1000050ea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000050ee: 48 8b 48 10                 	movq	16(%rax), %rcx
1000050f2: 48 83 c1 ff                 	addq	$-1, %rcx
1000050f6: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000050fa: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000050fe: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005102: e8 89 e7 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100005107: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000510f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100005113: 48 83 c4 60                 	addq	$96, %rsp
100005117: 5d                          	popq	%rbp
100005118: c3                          	retq
100005119: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100005120 <_pcc_evaluate_rule_instruction>:
100005120: 55                          	pushq	%rbp
100005121: 48 89 e5                    	movq	%rsp, %rbp
100005124: 48 81 ec 50 01 00 00        	subq	$336, %rsp              ## imm = 0x150
10000512b: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000512f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005133: e8 98 f4 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100005138: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000513c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005140: 48 8b 48 08                 	movq	8(%rax), %rcx
100005144: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005148: 48 89 48 48                 	movq	%rcx, 72(%rax)
10000514c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005150: 48 8b 48 10                 	movq	16(%rax), %rcx
100005154: 48 83 c1 01                 	addq	$1, %rcx
100005158: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000515c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005160: 48 8b 40 08                 	movq	8(%rax), %rax
100005164: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100005168: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000516c: 48 8b 40 40                 	movq	64(%rax), %rax
100005170: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100005174: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005178: 48 8b 40 08                 	movq	8(%rax), %rax
10000517c: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100005180: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005184: 48 8b 40 40                 	movq	64(%rax), %rax
100005188: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000518c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005190: be 04 00 00 00              	movl	$4, %esi
100005195: e8 f6 d8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000519a: 48 83 f8 04                 	cmpq	$4, %rax
10000519e: 0f 82 77 00 00 00           	jb	0x10000521b <_pcc_evaluate_rule_instruction+0xfb>
1000051a4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000051a8: 48 8b 40 18                 	movq	24(%rax), %rax
1000051ac: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000051b0: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000051b4: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000051b8: 83 f8 68                    	cmpl	$104, %eax
1000051bb: 0f 85 5a 00 00 00           	jne	0x10000521b <_pcc_evaluate_rule_instruction+0xfb>
1000051c1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000051c5: 48 8b 40 18                 	movq	24(%rax), %rax
1000051c9: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000051cd: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000051d1: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000051d6: 83 f8 61                    	cmpl	$97, %eax
1000051d9: 0f 85 3c 00 00 00           	jne	0x10000521b <_pcc_evaluate_rule_instruction+0xfb>
1000051df: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000051e3: 48 8b 40 18                 	movq	24(%rax), %rax
1000051e7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000051eb: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000051ef: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000051f4: 83 f8 6c                    	cmpl	$108, %eax
1000051f7: 0f 85 1e 00 00 00           	jne	0x10000521b <_pcc_evaluate_rule_instruction+0xfb>
1000051fd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005201: 48 8b 40 18                 	movq	24(%rax), %rax
100005205: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005209: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000520d: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100005212: 83 f8 74                    	cmpl	$116, %eax
100005215: 0f 84 05 00 00 00           	je	0x100005220 <_pcc_evaluate_rule_instruction+0x100>
10000521b: e9 15 00 00 00              	jmp	0x100005235 <_pcc_evaluate_rule_instruction+0x115>
100005220: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005224: 48 8b 48 08                 	movq	8(%rax), %rcx
100005228: 48 83 c1 04                 	addq	$4, %rcx
10000522c: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005230: e9 64 02 00 00              	jmp	0x100005499 <_pcc_evaluate_rule_instruction+0x379>
100005235: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005239: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000523d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005241: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005245: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000524c: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005250: 48 83 c6 30                 	addq	$48, %rsi
100005254: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
100005258: e8 d3 d7 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000525d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005261: be 03 00 00 00              	movl	$3, %esi
100005266: e8 25 d8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000526b: 48 83 f8 03                 	cmpq	$3, %rax
10000526f: 0f 82 59 00 00 00           	jb	0x1000052ce <_pcc_evaluate_rule_instruction+0x1ae>
100005275: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005279: 48 8b 40 18                 	movq	24(%rax), %rax
10000527d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005281: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005285: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005289: 83 f8 68                    	cmpl	$104, %eax
10000528c: 0f 85 3c 00 00 00           	jne	0x1000052ce <_pcc_evaluate_rule_instruction+0x1ae>
100005292: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005296: 48 8b 40 18                 	movq	24(%rax), %rax
10000529a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000529e: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000052a2: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000052a7: 83 f8 6c                    	cmpl	$108, %eax
1000052aa: 0f 85 1e 00 00 00           	jne	0x1000052ce <_pcc_evaluate_rule_instruction+0x1ae>
1000052b0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000052b4: 48 8b 40 18                 	movq	24(%rax), %rax
1000052b8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000052bc: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000052c0: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000052c5: 83 f8 74                    	cmpl	$116, %eax
1000052c8: 0f 84 05 00 00 00           	je	0x1000052d3 <_pcc_evaluate_rule_instruction+0x1b3>
1000052ce: e9 15 00 00 00              	jmp	0x1000052e8 <_pcc_evaluate_rule_instruction+0x1c8>
1000052d3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000052d7: 48 8b 48 08                 	movq	8(%rax), %rcx
1000052db: 48 83 c1 03                 	addq	$3, %rcx
1000052df: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000052e3: e9 b1 01 00 00              	jmp	0x100005499 <_pcc_evaluate_rule_instruction+0x379>
1000052e8: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000052ec: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000052f0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000052f4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000052f8: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000052ff: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005303: 48 83 c6 30                 	addq	$48, %rsi
100005307: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000530b: e8 20 d7 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005310: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005314: be 04 00 00 00              	movl	$4, %esi
100005319: e8 72 d7 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000531e: 48 83 f8 04                 	cmpq	$4, %rax
100005322: 0f 82 77 00 00 00           	jb	0x10000539f <_pcc_evaluate_rule_instruction+0x27f>
100005328: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000532c: 48 8b 40 18                 	movq	24(%rax), %rax
100005330: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005334: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005338: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000533c: 83 f8 48                    	cmpl	$72, %eax
10000533f: 0f 85 5a 00 00 00           	jne	0x10000539f <_pcc_evaluate_rule_instruction+0x27f>
100005345: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005349: 48 8b 40 18                 	movq	24(%rax), %rax
10000534d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005351: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005355: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000535a: 83 f8 41                    	cmpl	$65, %eax
10000535d: 0f 85 3c 00 00 00           	jne	0x10000539f <_pcc_evaluate_rule_instruction+0x27f>
100005363: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005367: 48 8b 40 18                 	movq	24(%rax), %rax
10000536b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000536f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005373: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005378: 83 f8 4c                    	cmpl	$76, %eax
10000537b: 0f 85 1e 00 00 00           	jne	0x10000539f <_pcc_evaluate_rule_instruction+0x27f>
100005381: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005385: 48 8b 40 18                 	movq	24(%rax), %rax
100005389: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000538d: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005391: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100005396: 83 f8 54                    	cmpl	$84, %eax
100005399: 0f 84 05 00 00 00           	je	0x1000053a4 <_pcc_evaluate_rule_instruction+0x284>
10000539f: e9 15 00 00 00              	jmp	0x1000053b9 <_pcc_evaluate_rule_instruction+0x299>
1000053a4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000053a8: 48 8b 48 08                 	movq	8(%rax), %rcx
1000053ac: 48 83 c1 04                 	addq	$4, %rcx
1000053b0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000053b4: e9 e0 00 00 00              	jmp	0x100005499 <_pcc_evaluate_rule_instruction+0x379>
1000053b9: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000053bd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000053c1: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000053c5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000053c9: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000053d0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000053d4: 48 83 c6 30                 	addq	$48, %rsi
1000053d8: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
1000053dc: e8 4f d6 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000053e1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000053e5: be 03 00 00 00              	movl	$3, %esi
1000053ea: e8 a1 d6 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000053ef: 48 83 f8 03                 	cmpq	$3, %rax
1000053f3: 0f 82 59 00 00 00           	jb	0x100005452 <_pcc_evaluate_rule_instruction+0x332>
1000053f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000053fd: 48 8b 40 18                 	movq	24(%rax), %rax
100005401: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005405: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005409: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000540d: 83 f8 48                    	cmpl	$72, %eax
100005410: 0f 85 3c 00 00 00           	jne	0x100005452 <_pcc_evaluate_rule_instruction+0x332>
100005416: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000541a: 48 8b 40 18                 	movq	24(%rax), %rax
10000541e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005422: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005426: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000542b: 83 f8 4c                    	cmpl	$76, %eax
10000542e: 0f 85 1e 00 00 00           	jne	0x100005452 <_pcc_evaluate_rule_instruction+0x332>
100005434: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005438: 48 8b 40 18                 	movq	24(%rax), %rax
10000543c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005440: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005444: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005449: 83 f8 54                    	cmpl	$84, %eax
10000544c: 0f 84 05 00 00 00           	je	0x100005457 <_pcc_evaluate_rule_instruction+0x337>
100005452: e9 15 00 00 00              	jmp	0x10000546c <_pcc_evaluate_rule_instruction+0x34c>
100005457: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000545b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000545f: 48 83 c1 03                 	addq	$3, %rcx
100005463: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005467: e9 2d 00 00 00              	jmp	0x100005499 <_pcc_evaluate_rule_instruction+0x379>
10000546c: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100005470: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005474: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005478: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000547c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005483: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005487: 48 83 c6 30                 	addq	$48, %rsi
10000548b: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000548f: e8 9c d5 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005494: e9 63 00 00 00              	jmp	0x1000054fc <_pcc_evaluate_rule_instruction+0x3dc>
100005499: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000549d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000054a4: 48 8d 35 75 48 00 00        	leaq	18549(%rip), %rsi       ## 0x100009d20 <_pcc_action_instruction_0>
1000054ab: 31 c0                       	xorl	%eax, %eax
1000054ad: 89 c1                       	movl	%eax, %ecx
1000054af: 48 89 ca                    	movq	%rcx, %rdx
1000054b2: e8 f9 38 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000054b7: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000054bb: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000054bf: 48 8b 48 48                 	movq	72(%rax), %rcx
1000054c3: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000054c7: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000054cb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000054cf: 48 8b 48 08                 	movq	8(%rax), %rcx
1000054d3: 48 8b 45 c0                 	movq	-64(%rbp), %rax
1000054d7: 48 89 48 40                 	movq	%rcx, 64(%rax)
1000054db: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000054df: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000054e6: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000054ea: 48 83 c6 30                 	addq	$48, %rsi
1000054ee: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
1000054f2: e8 29 e4 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
1000054f7: e9 6e 1b 00 00              	jmp	0x10000706a <_pcc_evaluate_rule_instruction+0x1f4a>
1000054fc: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100005500: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005504: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005508: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000550c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005513: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005517: 48 83 c6 30                 	addq	$48, %rsi
10000551b: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000551f: e8 0c d5 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005524: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005528: 48 8b 40 08                 	movq	8(%rax), %rax
10000552c: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100005530: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005534: 48 8b 40 40                 	movq	64(%rax), %rax
100005538: 48 89 45 b0                 	movq	%rax, -80(%rbp)
10000553c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005540: be 03 00 00 00              	movl	$3, %esi
100005545: e8 46 d5 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000554a: 48 83 f8 03                 	cmpq	$3, %rax
10000554e: 0f 82 59 00 00 00           	jb	0x1000055ad <_pcc_evaluate_rule_instruction+0x48d>
100005554: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005558: 48 8b 40 18                 	movq	24(%rax), %rax
10000555c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005560: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005564: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005568: 83 f8 6d                    	cmpl	$109, %eax
10000556b: 0f 85 3c 00 00 00           	jne	0x1000055ad <_pcc_evaluate_rule_instruction+0x48d>
100005571: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005575: 48 8b 40 18                 	movq	24(%rax), %rax
100005579: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000557d: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005581: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005586: 83 f8 6f                    	cmpl	$111, %eax
100005589: 0f 85 1e 00 00 00           	jne	0x1000055ad <_pcc_evaluate_rule_instruction+0x48d>
10000558f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005593: 48 8b 40 18                 	movq	24(%rax), %rax
100005597: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000559b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000559f: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000055a4: 83 f8 76                    	cmpl	$118, %eax
1000055a7: 0f 84 05 00 00 00           	je	0x1000055b2 <_pcc_evaluate_rule_instruction+0x492>
1000055ad: e9 15 00 00 00              	jmp	0x1000055c7 <_pcc_evaluate_rule_instruction+0x4a7>
1000055b2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000055b6: 48 8b 48 08                 	movq	8(%rax), %rcx
1000055ba: 48 83 c1 03                 	addq	$3, %rcx
1000055be: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000055c2: e9 82 02 00 00              	jmp	0x100005849 <_pcc_evaluate_rule_instruction+0x729>
1000055c7: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
1000055cb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000055cf: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000055d3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000055d7: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000055de: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000055e2: 48 83 c6 30                 	addq	$48, %rsi
1000055e6: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
1000055ea: e8 41 d4 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000055ef: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000055f3: be 04 00 00 00              	movl	$4, %esi
1000055f8: e8 93 d4 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000055fd: 48 83 f8 04                 	cmpq	$4, %rax
100005601: 0f 82 77 00 00 00           	jb	0x10000567e <_pcc_evaluate_rule_instruction+0x55e>
100005607: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000560b: 48 8b 40 18                 	movq	24(%rax), %rax
10000560f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005613: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005617: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000561b: 83 f8 6d                    	cmpl	$109, %eax
10000561e: 0f 85 5a 00 00 00           	jne	0x10000567e <_pcc_evaluate_rule_instruction+0x55e>
100005624: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005628: 48 8b 40 18                 	movq	24(%rax), %rax
10000562c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005630: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005634: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005639: 83 f8 6f                    	cmpl	$111, %eax
10000563c: 0f 85 3c 00 00 00           	jne	0x10000567e <_pcc_evaluate_rule_instruction+0x55e>
100005642: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005646: 48 8b 40 18                 	movq	24(%rax), %rax
10000564a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000564e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005652: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005657: 83 f8 76                    	cmpl	$118, %eax
10000565a: 0f 85 1e 00 00 00           	jne	0x10000567e <_pcc_evaluate_rule_instruction+0x55e>
100005660: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005664: 48 8b 40 18                 	movq	24(%rax), %rax
100005668: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000566c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005670: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100005675: 83 f8 65                    	cmpl	$101, %eax
100005678: 0f 84 05 00 00 00           	je	0x100005683 <_pcc_evaluate_rule_instruction+0x563>
10000567e: e9 15 00 00 00              	jmp	0x100005698 <_pcc_evaluate_rule_instruction+0x578>
100005683: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005687: 48 8b 48 08                 	movq	8(%rax), %rcx
10000568b: 48 83 c1 04                 	addq	$4, %rcx
10000568f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005693: e9 b1 01 00 00              	jmp	0x100005849 <_pcc_evaluate_rule_instruction+0x729>
100005698: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000569c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000056a0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000056a4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000056a8: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000056af: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000056b3: 48 83 c6 30                 	addq	$48, %rsi
1000056b7: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
1000056bb: e8 70 d3 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000056c0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000056c4: be 03 00 00 00              	movl	$3, %esi
1000056c9: e8 c2 d3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000056ce: 48 83 f8 03                 	cmpq	$3, %rax
1000056d2: 0f 82 59 00 00 00           	jb	0x100005731 <_pcc_evaluate_rule_instruction+0x611>
1000056d8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000056dc: 48 8b 40 18                 	movq	24(%rax), %rax
1000056e0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000056e4: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000056e8: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000056ec: 83 f8 4d                    	cmpl	$77, %eax
1000056ef: 0f 85 3c 00 00 00           	jne	0x100005731 <_pcc_evaluate_rule_instruction+0x611>
1000056f5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000056f9: 48 8b 40 18                 	movq	24(%rax), %rax
1000056fd: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005701: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005705: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000570a: 83 f8 4f                    	cmpl	$79, %eax
10000570d: 0f 85 1e 00 00 00           	jne	0x100005731 <_pcc_evaluate_rule_instruction+0x611>
100005713: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005717: 48 8b 40 18                 	movq	24(%rax), %rax
10000571b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000571f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005723: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005728: 83 f8 56                    	cmpl	$86, %eax
10000572b: 0f 84 05 00 00 00           	je	0x100005736 <_pcc_evaluate_rule_instruction+0x616>
100005731: e9 15 00 00 00              	jmp	0x10000574b <_pcc_evaluate_rule_instruction+0x62b>
100005736: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000573a: 48 8b 48 08                 	movq	8(%rax), %rcx
10000573e: 48 83 c1 03                 	addq	$3, %rcx
100005742: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005746: e9 fe 00 00 00              	jmp	0x100005849 <_pcc_evaluate_rule_instruction+0x729>
10000574b: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
10000574f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005753: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005757: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000575b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005762: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005766: 48 83 c6 30                 	addq	$48, %rsi
10000576a: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
10000576e: e8 bd d2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005773: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005777: be 04 00 00 00              	movl	$4, %esi
10000577c: e8 0f d3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005781: 48 83 f8 04                 	cmpq	$4, %rax
100005785: 0f 82 77 00 00 00           	jb	0x100005802 <_pcc_evaluate_rule_instruction+0x6e2>
10000578b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000578f: 48 8b 40 18                 	movq	24(%rax), %rax
100005793: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005797: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000579b: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000579f: 83 f8 4d                    	cmpl	$77, %eax
1000057a2: 0f 85 5a 00 00 00           	jne	0x100005802 <_pcc_evaluate_rule_instruction+0x6e2>
1000057a8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000057ac: 48 8b 40 18                 	movq	24(%rax), %rax
1000057b0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000057b4: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000057b8: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000057bd: 83 f8 4f                    	cmpl	$79, %eax
1000057c0: 0f 85 3c 00 00 00           	jne	0x100005802 <_pcc_evaluate_rule_instruction+0x6e2>
1000057c6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000057ca: 48 8b 40 18                 	movq	24(%rax), %rax
1000057ce: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000057d2: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000057d6: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000057db: 83 f8 56                    	cmpl	$86, %eax
1000057de: 0f 85 1e 00 00 00           	jne	0x100005802 <_pcc_evaluate_rule_instruction+0x6e2>
1000057e4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000057e8: 48 8b 40 18                 	movq	24(%rax), %rax
1000057ec: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000057f0: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000057f4: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
1000057f9: 83 f8 45                    	cmpl	$69, %eax
1000057fc: 0f 84 05 00 00 00           	je	0x100005807 <_pcc_evaluate_rule_instruction+0x6e7>
100005802: e9 15 00 00 00              	jmp	0x10000581c <_pcc_evaluate_rule_instruction+0x6fc>
100005807: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000580b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000580f: 48 83 c1 04                 	addq	$4, %rcx
100005813: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005817: e9 2d 00 00 00              	jmp	0x100005849 <_pcc_evaluate_rule_instruction+0x729>
10000581c: 48 8b 4d b8                 	movq	-72(%rbp), %rcx
100005820: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005824: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005828: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000582c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005833: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005837: 48 83 c6 30                 	addq	$48, %rsi
10000583b: 48 8b 55 b0                 	movq	-80(%rbp), %rdx
10000583f: e8 ec d1 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005844: e9 22 02 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
100005849: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000584d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005854: 48 8d 35 f5 44 00 00        	leaq	17653(%rip), %rsi       ## 0x100009d50 <_pcc_action_instruction_1>
10000585b: 31 c0                       	xorl	%eax, %eax
10000585d: 89 c1                       	movl	%eax, %ecx
10000585f: 48 89 ca                    	movq	%rcx, %rdx
100005862: e8 49 35 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100005867: 48 89 45 a8                 	movq	%rax, -88(%rbp)
10000586b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000586f: 48 8b 48 48                 	movq	72(%rax), %rcx
100005873: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100005877: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000587b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000587f: 48 8b 48 08                 	movq	8(%rax), %rcx
100005883: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100005887: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000588b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000588f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005896: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000589a: 48 83 c6 30                 	addq	$48, %rsi
10000589e: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
1000058a2: e8 79 e0 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
1000058a7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058ab: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000058af: 48 83 c2 30                 	addq	$48, %rdx
1000058b3: 48 8d 35 a6 ed ff ff        	leaq	-4698(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
1000058ba: 31 c0                       	xorl	%eax, %eax
1000058bc: 89 c1                       	movl	%eax, %ecx
1000058be: e8 fd c3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000058c3: 83 f8 00                    	cmpl	$0, %eax
1000058c6: 0f 85 05 00 00 00           	jne	0x1000058d1 <_pcc_evaluate_rule_instruction+0x7b1>
1000058cc: e9 9a 01 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
1000058d1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058d5: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000058d9: 48 83 c2 30                 	addq	$48, %rdx
1000058dd: 48 8d 35 cc ef ff ff        	leaq	-4148(%rip), %rsi       ## 0x1000048b0 <_pcc_evaluate_rule_data>
1000058e4: 31 c0                       	xorl	%eax, %eax
1000058e6: 89 c1                       	movl	%eax, %ecx
1000058e8: e8 d3 c3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000058ed: 83 f8 00                    	cmpl	$0, %eax
1000058f0: 0f 85 05 00 00 00           	jne	0x1000058fb <_pcc_evaluate_rule_instruction+0x7db>
1000058f6: e9 70 01 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
1000058fb: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000058ff: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005903: 48 83 c2 30                 	addq	$48, %rdx
100005907: 48 8d 35 52 ed ff ff        	leaq	-4782(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
10000590e: 31 c0                       	xorl	%eax, %eax
100005910: 89 c1                       	movl	%eax, %ecx
100005912: e8 a9 c3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005917: 83 f8 00                    	cmpl	$0, %eax
10000591a: 0f 85 05 00 00 00           	jne	0x100005925 <_pcc_evaluate_rule_instruction+0x805>
100005920: e9 46 01 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
100005925: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005929: 48 8b 40 08                 	movq	8(%rax), %rax
10000592d: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100005931: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005935: 48 8b 40 40                 	movq	64(%rax), %rax
100005939: 48 89 45 98                 	movq	%rax, -104(%rbp)
10000593d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005941: be 01 00 00 00              	movl	$1, %esi
100005946: e8 45 d1 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000594b: 48 83 f8 01                 	cmpq	$1, %rax
10000594f: 0f 82 1d 00 00 00           	jb	0x100005972 <_pcc_evaluate_rule_instruction+0x852>
100005955: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005959: 48 8b 40 18                 	movq	24(%rax), %rax
10000595d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005961: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005965: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005969: 83 f8 2c                    	cmpl	$44, %eax
10000596c: 0f 84 05 00 00 00           	je	0x100005977 <_pcc_evaluate_rule_instruction+0x857>
100005972: e9 15 00 00 00              	jmp	0x10000598c <_pcc_evaluate_rule_instruction+0x86c>
100005977: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000597b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000597f: 48 83 c1 01                 	addq	$1, %rcx
100005983: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005987: e9 28 00 00 00              	jmp	0x1000059b4 <_pcc_evaluate_rule_instruction+0x894>
10000598c: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100005990: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005994: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005998: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000599c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000059a3: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000059a7: 48 83 c6 30                 	addq	$48, %rsi
1000059ab: 48 8b 55 98                 	movq	-104(%rbp), %rdx
1000059af: e8 7c d0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000059b4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000059b8: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000059bc: 48 83 c2 30                 	addq	$48, %rdx
1000059c0: 48 8d 35 99 ec ff ff        	leaq	-4967(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
1000059c7: 31 c0                       	xorl	%eax, %eax
1000059c9: 89 c1                       	movl	%eax, %ecx
1000059cb: e8 f0 c2 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000059d0: 83 f8 00                    	cmpl	$0, %eax
1000059d3: 0f 85 05 00 00 00           	jne	0x1000059de <_pcc_evaluate_rule_instruction+0x8be>
1000059d9: e9 8d 00 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
1000059de: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000059e2: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000059e6: 48 83 c2 30                 	addq	$48, %rdx
1000059ea: 48 8d 35 9f 29 00 00        	leaq	10655(%rip), %rsi       ## 0x100008390 <_pcc_evaluate_rule_addr>
1000059f1: 31 c0                       	xorl	%eax, %eax
1000059f3: 89 c1                       	movl	%eax, %ecx
1000059f5: e8 c6 c2 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000059fa: 83 f8 00                    	cmpl	$0, %eax
1000059fd: 0f 85 05 00 00 00           	jne	0x100005a08 <_pcc_evaluate_rule_instruction+0x8e8>
100005a03: e9 63 00 00 00              	jmp	0x100005a6b <_pcc_evaluate_rule_instruction+0x94b>
100005a08: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a0c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005a13: 48 8d 35 66 43 00 00        	leaq	17254(%rip), %rsi       ## 0x100009d80 <_pcc_action_instruction_2>
100005a1a: 31 c0                       	xorl	%eax, %eax
100005a1c: 89 c1                       	movl	%eax, %ecx
100005a1e: 48 89 ca                    	movq	%rcx, %rdx
100005a21: e8 8a 33 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100005a26: 48 89 45 90                 	movq	%rax, -112(%rbp)
100005a2a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005a2e: 48 8b 48 48                 	movq	72(%rax), %rcx
100005a32: 48 8b 45 90                 	movq	-112(%rbp), %rax
100005a36: 48 89 48 38                 	movq	%rcx, 56(%rax)
100005a3a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a3e: 48 8b 48 08                 	movq	8(%rax), %rcx
100005a42: 48 8b 45 90                 	movq	-112(%rbp), %rax
100005a46: 48 89 48 40                 	movq	%rcx, 64(%rax)
100005a4a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a4e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005a55: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005a59: 48 83 c6 30                 	addq	$48, %rsi
100005a5d: 48 8b 55 90                 	movq	-112(%rbp), %rdx
100005a61: e8 ba de ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100005a66: e9 ff 15 00 00              	jmp	0x10000706a <_pcc_evaluate_rule_instruction+0x1f4a>
100005a6b: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100005a6f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a73: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005a77: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a7b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005a82: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005a86: 48 83 c6 30                 	addq	$48, %rsi
100005a8a: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100005a8e: e8 9d cf ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005a93: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005a97: 48 8b 40 08                 	movq	8(%rax), %rax
100005a9b: 48 89 45 88                 	movq	%rax, -120(%rbp)
100005a9f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005aa3: 48 8b 40 40                 	movq	64(%rax), %rax
100005aa7: 48 89 45 80                 	movq	%rax, -128(%rbp)
100005aab: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005aaf: be 03 00 00 00              	movl	$3, %esi
100005ab4: e8 d7 cf ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005ab9: 48 83 f8 03                 	cmpq	$3, %rax
100005abd: 0f 82 59 00 00 00           	jb	0x100005b1c <_pcc_evaluate_rule_instruction+0x9fc>
100005ac3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005ac7: 48 8b 40 18                 	movq	24(%rax), %rax
100005acb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005acf: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005ad3: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005ad7: 83 f8 6a                    	cmpl	$106, %eax
100005ada: 0f 85 3c 00 00 00           	jne	0x100005b1c <_pcc_evaluate_rule_instruction+0x9fc>
100005ae0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005ae4: 48 8b 40 18                 	movq	24(%rax), %rax
100005ae8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005aec: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005af0: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005af5: 83 f8 6d                    	cmpl	$109, %eax
100005af8: 0f 85 1e 00 00 00           	jne	0x100005b1c <_pcc_evaluate_rule_instruction+0x9fc>
100005afe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b02: 48 8b 40 18                 	movq	24(%rax), %rax
100005b06: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005b0a: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005b0e: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005b13: 83 f8 70                    	cmpl	$112, %eax
100005b16: 0f 84 05 00 00 00           	je	0x100005b21 <_pcc_evaluate_rule_instruction+0xa01>
100005b1c: e9 15 00 00 00              	jmp	0x100005b36 <_pcc_evaluate_rule_instruction+0xa16>
100005b21: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b25: 48 8b 48 08                 	movq	8(%rax), %rcx
100005b29: 48 83 c1 03                 	addq	$3, %rcx
100005b2d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005b31: e9 82 02 00 00              	jmp	0x100005db8 <_pcc_evaluate_rule_instruction+0xc98>
100005b36: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100005b3a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b3e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005b42: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b46: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005b4d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005b51: 48 83 c6 30                 	addq	$48, %rsi
100005b55: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100005b59: e8 d2 ce ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005b5e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005b62: be 04 00 00 00              	movl	$4, %esi
100005b67: e8 24 cf ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005b6c: 48 83 f8 04                 	cmpq	$4, %rax
100005b70: 0f 82 77 00 00 00           	jb	0x100005bed <_pcc_evaluate_rule_instruction+0xacd>
100005b76: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b7a: 48 8b 40 18                 	movq	24(%rax), %rax
100005b7e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005b82: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005b86: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005b8a: 83 f8 6a                    	cmpl	$106, %eax
100005b8d: 0f 85 5a 00 00 00           	jne	0x100005bed <_pcc_evaluate_rule_instruction+0xacd>
100005b93: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005b97: 48 8b 40 18                 	movq	24(%rax), %rax
100005b9b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005b9f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005ba3: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005ba8: 83 f8 75                    	cmpl	$117, %eax
100005bab: 0f 85 3c 00 00 00           	jne	0x100005bed <_pcc_evaluate_rule_instruction+0xacd>
100005bb1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005bb5: 48 8b 40 18                 	movq	24(%rax), %rax
100005bb9: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005bbd: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005bc1: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005bc6: 83 f8 6d                    	cmpl	$109, %eax
100005bc9: 0f 85 1e 00 00 00           	jne	0x100005bed <_pcc_evaluate_rule_instruction+0xacd>
100005bcf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005bd3: 48 8b 40 18                 	movq	24(%rax), %rax
100005bd7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005bdb: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005bdf: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100005be4: 83 f8 70                    	cmpl	$112, %eax
100005be7: 0f 84 05 00 00 00           	je	0x100005bf2 <_pcc_evaluate_rule_instruction+0xad2>
100005bed: e9 15 00 00 00              	jmp	0x100005c07 <_pcc_evaluate_rule_instruction+0xae7>
100005bf2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005bf6: 48 8b 48 08                 	movq	8(%rax), %rcx
100005bfa: 48 83 c1 04                 	addq	$4, %rcx
100005bfe: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005c02: e9 b1 01 00 00              	jmp	0x100005db8 <_pcc_evaluate_rule_instruction+0xc98>
100005c07: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100005c0b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005c0f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005c13: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005c17: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005c1e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005c22: 48 83 c6 30                 	addq	$48, %rsi
100005c26: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100005c2a: e8 01 ce ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005c2f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005c33: be 03 00 00 00              	movl	$3, %esi
100005c38: e8 53 ce ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005c3d: 48 83 f8 03                 	cmpq	$3, %rax
100005c41: 0f 82 59 00 00 00           	jb	0x100005ca0 <_pcc_evaluate_rule_instruction+0xb80>
100005c47: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005c4b: 48 8b 40 18                 	movq	24(%rax), %rax
100005c4f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005c53: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005c57: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005c5b: 83 f8 4a                    	cmpl	$74, %eax
100005c5e: 0f 85 3c 00 00 00           	jne	0x100005ca0 <_pcc_evaluate_rule_instruction+0xb80>
100005c64: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005c68: 48 8b 40 18                 	movq	24(%rax), %rax
100005c6c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005c70: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005c74: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005c79: 83 f8 4d                    	cmpl	$77, %eax
100005c7c: 0f 85 1e 00 00 00           	jne	0x100005ca0 <_pcc_evaluate_rule_instruction+0xb80>
100005c82: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005c86: 48 8b 40 18                 	movq	24(%rax), %rax
100005c8a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005c8e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005c92: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005c97: 83 f8 50                    	cmpl	$80, %eax
100005c9a: 0f 84 05 00 00 00           	je	0x100005ca5 <_pcc_evaluate_rule_instruction+0xb85>
100005ca0: e9 15 00 00 00              	jmp	0x100005cba <_pcc_evaluate_rule_instruction+0xb9a>
100005ca5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005ca9: 48 8b 48 08                 	movq	8(%rax), %rcx
100005cad: 48 83 c1 03                 	addq	$3, %rcx
100005cb1: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005cb5: e9 fe 00 00 00              	jmp	0x100005db8 <_pcc_evaluate_rule_instruction+0xc98>
100005cba: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100005cbe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005cc2: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005cc6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005cca: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005cd1: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005cd5: 48 83 c6 30                 	addq	$48, %rsi
100005cd9: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100005cdd: e8 4e cd ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005ce2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005ce6: be 04 00 00 00              	movl	$4, %esi
100005ceb: e8 a0 cd ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005cf0: 48 83 f8 04                 	cmpq	$4, %rax
100005cf4: 0f 82 77 00 00 00           	jb	0x100005d71 <_pcc_evaluate_rule_instruction+0xc51>
100005cfa: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005cfe: 48 8b 40 18                 	movq	24(%rax), %rax
100005d02: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005d06: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005d0a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005d0e: 83 f8 4a                    	cmpl	$74, %eax
100005d11: 0f 85 5a 00 00 00           	jne	0x100005d71 <_pcc_evaluate_rule_instruction+0xc51>
100005d17: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d1b: 48 8b 40 18                 	movq	24(%rax), %rax
100005d1f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005d23: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005d27: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100005d2c: 83 f8 55                    	cmpl	$85, %eax
100005d2f: 0f 85 3c 00 00 00           	jne	0x100005d71 <_pcc_evaluate_rule_instruction+0xc51>
100005d35: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d39: 48 8b 40 18                 	movq	24(%rax), %rax
100005d3d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005d41: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005d45: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100005d4a: 83 f8 4d                    	cmpl	$77, %eax
100005d4d: 0f 85 1e 00 00 00           	jne	0x100005d71 <_pcc_evaluate_rule_instruction+0xc51>
100005d53: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d57: 48 8b 40 18                 	movq	24(%rax), %rax
100005d5b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005d5f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005d63: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100005d68: 83 f8 50                    	cmpl	$80, %eax
100005d6b: 0f 84 05 00 00 00           	je	0x100005d76 <_pcc_evaluate_rule_instruction+0xc56>
100005d71: e9 15 00 00 00              	jmp	0x100005d8b <_pcc_evaluate_rule_instruction+0xc6b>
100005d76: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d7a: 48 8b 48 08                 	movq	8(%rax), %rcx
100005d7e: 48 83 c1 04                 	addq	$4, %rcx
100005d82: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005d86: e9 2d 00 00 00              	jmp	0x100005db8 <_pcc_evaluate_rule_instruction+0xc98>
100005d8b: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100005d8f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d93: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005d97: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005d9b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005da2: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005da6: 48 83 c6 30                 	addq	$48, %rsi
100005daa: 48 8b 55 80                 	movq	-128(%rbp), %rdx
100005dae: e8 7d cc ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100005db3: e9 98 03 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005db8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005dbc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005dc3: 48 8d 35 e6 3f 00 00        	leaq	16358(%rip), %rsi       ## 0x100009db0 <_pcc_action_instruction_3>
100005dca: 31 c0                       	xorl	%eax, %eax
100005dcc: 89 c1                       	movl	%eax, %ecx
100005dce: 48 89 ca                    	movq	%rcx, %rdx
100005dd1: e8 da 2f 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100005dd6: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
100005ddd: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005de1: 48 8b 48 48                 	movq	72(%rax), %rcx
100005de5: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005dec: 48 89 48 38                 	movq	%rcx, 56(%rax)
100005df0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005df4: 48 8b 48 08                 	movq	8(%rax), %rcx
100005df8: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100005dff: 48 89 48 40                 	movq	%rcx, 64(%rax)
100005e03: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005e07: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005e0e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005e12: 48 83 c6 30                 	addq	$48, %rsi
100005e16: 48 8b 95 78 ff ff ff        	movq	-136(%rbp), %rdx
100005e1d: e8 fe da ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100005e22: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005e26: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005e2a: 48 83 c2 30                 	addq	$48, %rdx
100005e2e: 48 8d 35 2b e8 ff ff        	leaq	-6101(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100005e35: 31 c0                       	xorl	%eax, %eax
100005e37: 89 c1                       	movl	%eax, %ecx
100005e39: e8 82 be ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005e3e: 83 f8 00                    	cmpl	$0, %eax
100005e41: 0f 85 05 00 00 00           	jne	0x100005e4c <_pcc_evaluate_rule_instruction+0xd2c>
100005e47: e9 04 03 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005e4c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005e50: be 01 00 00 00              	movl	$1, %esi
100005e55: e8 36 cc ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005e5a: 48 83 f8 01                 	cmpq	$1, %rax
100005e5e: 0f 82 1d 00 00 00           	jb	0x100005e81 <_pcc_evaluate_rule_instruction+0xd61>
100005e64: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005e68: 48 8b 40 18                 	movq	24(%rax), %rax
100005e6c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005e70: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005e74: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005e78: 83 f8 28                    	cmpl	$40, %eax
100005e7b: 0f 84 05 00 00 00           	je	0x100005e86 <_pcc_evaluate_rule_instruction+0xd66>
100005e81: e9 ca 02 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005e86: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005e8a: 48 8b 48 08                 	movq	8(%rax), %rcx
100005e8e: 48 83 c1 01                 	addq	$1, %rcx
100005e92: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005e96: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005e9a: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005e9e: 48 83 c2 30                 	addq	$48, %rdx
100005ea2: 48 8d 35 b7 e7 ff ff        	leaq	-6217(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100005ea9: 31 c0                       	xorl	%eax, %eax
100005eab: 89 c1                       	movl	%eax, %ecx
100005ead: e8 0e be ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005eb2: 83 f8 00                    	cmpl	$0, %eax
100005eb5: 0f 85 05 00 00 00           	jne	0x100005ec0 <_pcc_evaluate_rule_instruction+0xda0>
100005ebb: e9 90 02 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005ec0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005ec4: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005ec8: 48 83 c2 30                 	addq	$48, %rdx
100005ecc: 48 8d 35 0d 3f 00 00        	leaq	16141(%rip), %rsi       ## 0x100009de0 <_pcc_evaluate_rule_jmpcond>
100005ed3: 31 c0                       	xorl	%eax, %eax
100005ed5: 89 c1                       	movl	%eax, %ecx
100005ed7: e8 e4 bd ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005edc: 83 f8 00                    	cmpl	$0, %eax
100005edf: 0f 85 05 00 00 00           	jne	0x100005eea <_pcc_evaluate_rule_instruction+0xdca>
100005ee5: e9 66 02 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005eea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005eee: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005ef5: 48 8d 35 84 44 00 00        	leaq	17540(%rip), %rsi       ## 0x10000a380 <_pcc_action_instruction_4>
100005efc: 31 c0                       	xorl	%eax, %eax
100005efe: 89 c1                       	movl	%eax, %ecx
100005f00: 48 89 ca                    	movq	%rcx, %rdx
100005f03: e8 a8 2e 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100005f08: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100005f0f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100005f13: 48 8b 48 48                 	movq	72(%rax), %rcx
100005f17: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100005f1e: 48 89 48 38                 	movq	%rcx, 56(%rax)
100005f22: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005f26: 48 8b 48 08                 	movq	8(%rax), %rcx
100005f2a: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
100005f31: 48 89 48 40                 	movq	%rcx, 64(%rax)
100005f35: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005f39: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100005f40: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100005f44: 48 83 c6 30                 	addq	$48, %rsi
100005f48: 48 8b 95 70 ff ff ff        	movq	-144(%rbp), %rdx
100005f4f: e8 cc d9 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100005f54: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005f58: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005f5c: 48 83 c2 30                 	addq	$48, %rdx
100005f60: 48 8d 35 f9 e6 ff ff        	leaq	-6407(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100005f67: 31 c0                       	xorl	%eax, %eax
100005f69: 89 c1                       	movl	%eax, %ecx
100005f6b: e8 50 bd ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005f70: 83 f8 00                    	cmpl	$0, %eax
100005f73: 0f 85 05 00 00 00           	jne	0x100005f7e <_pcc_evaluate_rule_instruction+0xe5e>
100005f79: e9 d2 01 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005f7e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005f82: be 01 00 00 00              	movl	$1, %esi
100005f87: e8 04 cb ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100005f8c: 48 83 f8 01                 	cmpq	$1, %rax
100005f90: 0f 82 1d 00 00 00           	jb	0x100005fb3 <_pcc_evaluate_rule_instruction+0xe93>
100005f96: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005f9a: 48 8b 40 18                 	movq	24(%rax), %rax
100005f9e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100005fa2: 48 8b 49 08                 	movq	8(%rcx), %rcx
100005fa6: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100005faa: 83 f8 29                    	cmpl	$41, %eax
100005fad: 0f 84 05 00 00 00           	je	0x100005fb8 <_pcc_evaluate_rule_instruction+0xe98>
100005fb3: e9 98 01 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005fb8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005fbc: 48 8b 48 08                 	movq	8(%rax), %rcx
100005fc0: 48 83 c1 01                 	addq	$1, %rcx
100005fc4: 48 89 48 08                 	movq	%rcx, 8(%rax)
100005fc8: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100005fcc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100005fd0: 48 83 c2 30                 	addq	$48, %rdx
100005fd4: 48 8d 35 85 e6 ff ff        	leaq	-6523(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100005fdb: 31 c0                       	xorl	%eax, %eax
100005fdd: 89 c1                       	movl	%eax, %ecx
100005fdf: e8 dc bc ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100005fe4: 83 f8 00                    	cmpl	$0, %eax
100005fe7: 0f 85 05 00 00 00           	jne	0x100005ff2 <_pcc_evaluate_rule_instruction+0xed2>
100005fed: e9 5e 01 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
100005ff2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100005ff6: 48 8b 40 08                 	movq	8(%rax), %rax
100005ffa: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100006001: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006005: 48 8b 40 40                 	movq	64(%rax), %rax
100006009: 48 89 85 60 ff ff ff        	movq	%rax, -160(%rbp)
100006010: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006014: be 01 00 00 00              	movl	$1, %esi
100006019: e8 72 ca ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000601e: 48 83 f8 01                 	cmpq	$1, %rax
100006022: 0f 82 1d 00 00 00           	jb	0x100006045 <_pcc_evaluate_rule_instruction+0xf25>
100006028: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000602c: 48 8b 40 18                 	movq	24(%rax), %rax
100006030: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006034: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006038: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000603c: 83 f8 2c                    	cmpl	$44, %eax
10000603f: 0f 84 05 00 00 00           	je	0x10000604a <_pcc_evaluate_rule_instruction+0xf2a>
100006045: e9 15 00 00 00              	jmp	0x10000605f <_pcc_evaluate_rule_instruction+0xf3f>
10000604a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000604e: 48 8b 48 08                 	movq	8(%rax), %rcx
100006052: 48 83 c1 01                 	addq	$1, %rcx
100006056: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000605a: e9 2e 00 00 00              	jmp	0x10000608d <_pcc_evaluate_rule_instruction+0xf6d>
10000605f: 48 8b 8d 68 ff ff ff        	movq	-152(%rbp), %rcx
100006066: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000606a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000606e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006072: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006079: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000607d: 48 83 c6 30                 	addq	$48, %rsi
100006081: 48 8b 95 60 ff ff ff        	movq	-160(%rbp), %rdx
100006088: e8 a3 c9 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000608d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006091: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006095: 48 83 c2 30                 	addq	$48, %rdx
100006099: 48 8d 35 c0 e5 ff ff        	leaq	-6720(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
1000060a0: 31 c0                       	xorl	%eax, %eax
1000060a2: 89 c1                       	movl	%eax, %ecx
1000060a4: e8 17 bc ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000060a9: 83 f8 00                    	cmpl	$0, %eax
1000060ac: 0f 85 05 00 00 00           	jne	0x1000060b7 <_pcc_evaluate_rule_instruction+0xf97>
1000060b2: e9 99 00 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
1000060b7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000060bb: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000060bf: 48 83 c2 30                 	addq	$48, %rdx
1000060c3: 48 8d 35 c6 22 00 00        	leaq	8902(%rip), %rsi        ## 0x100008390 <_pcc_evaluate_rule_addr>
1000060ca: 31 c0                       	xorl	%eax, %eax
1000060cc: 89 c1                       	movl	%eax, %ecx
1000060ce: e8 ed bb ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000060d3: 83 f8 00                    	cmpl	$0, %eax
1000060d6: 0f 85 05 00 00 00           	jne	0x1000060e1 <_pcc_evaluate_rule_instruction+0xfc1>
1000060dc: e9 6f 00 00 00              	jmp	0x100006150 <_pcc_evaluate_rule_instruction+0x1030>
1000060e1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000060e5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000060ec: 48 8d 35 bd 42 00 00        	leaq	17085(%rip), %rsi       ## 0x10000a3b0 <_pcc_action_instruction_5>
1000060f3: 31 c0                       	xorl	%eax, %eax
1000060f5: 89 c1                       	movl	%eax, %ecx
1000060f7: 48 89 ca                    	movq	%rcx, %rdx
1000060fa: e8 b1 2c 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000060ff: 48 89 85 58 ff ff ff        	movq	%rax, -168(%rbp)
100006106: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000610a: 48 8b 48 48                 	movq	72(%rax), %rcx
10000610e: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100006115: 48 89 48 38                 	movq	%rcx, 56(%rax)
100006119: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000611d: 48 8b 48 08                 	movq	8(%rax), %rcx
100006121: 48 8b 85 58 ff ff ff        	movq	-168(%rbp), %rax
100006128: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000612c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006130: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006137: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000613b: 48 83 c6 30                 	addq	$48, %rsi
10000613f: 48 8b 95 58 ff ff ff        	movq	-168(%rbp), %rdx
100006146: e8 d5 d7 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000614b: e9 1a 0f 00 00              	jmp	0x10000706a <_pcc_evaluate_rule_instruction+0x1f4a>
100006150: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100006154: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006158: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000615c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006160: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006167: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000616b: 48 83 c6 30                 	addq	$48, %rsi
10000616f: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100006173: e8 b8 c8 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006178: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000617c: 48 8b 40 08                 	movq	8(%rax), %rax
100006180: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100006187: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000618b: 48 8b 40 40                 	movq	64(%rax), %rax
10000618f: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
100006196: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000619a: be 04 00 00 00              	movl	$4, %esi
10000619f: e8 ec c8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000061a4: 48 83 f8 04                 	cmpq	$4, %rax
1000061a8: 0f 82 77 00 00 00           	jb	0x100006225 <_pcc_evaluate_rule_instruction+0x1105>
1000061ae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000061b2: 48 8b 40 18                 	movq	24(%rax), %rax
1000061b6: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000061ba: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000061be: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000061c2: 83 f8 6d                    	cmpl	$109, %eax
1000061c5: 0f 85 5a 00 00 00           	jne	0x100006225 <_pcc_evaluate_rule_instruction+0x1105>
1000061cb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000061cf: 48 8b 40 18                 	movq	24(%rax), %rax
1000061d3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000061d7: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000061db: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000061e0: 83 f8 61                    	cmpl	$97, %eax
1000061e3: 0f 85 3c 00 00 00           	jne	0x100006225 <_pcc_evaluate_rule_instruction+0x1105>
1000061e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000061ed: 48 8b 40 18                 	movq	24(%rax), %rax
1000061f1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000061f5: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000061f9: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000061fe: 83 f8 74                    	cmpl	$116, %eax
100006201: 0f 85 1e 00 00 00           	jne	0x100006225 <_pcc_evaluate_rule_instruction+0x1105>
100006207: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000620b: 48 8b 40 18                 	movq	24(%rax), %rax
10000620f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006213: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006217: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000621c: 83 f8 68                    	cmpl	$104, %eax
10000621f: 0f 84 05 00 00 00           	je	0x10000622a <_pcc_evaluate_rule_instruction+0x110a>
100006225: e9 15 00 00 00              	jmp	0x10000623f <_pcc_evaluate_rule_instruction+0x111f>
10000622a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000622e: 48 8b 48 08                 	movq	8(%rax), %rcx
100006232: 48 83 c1 04                 	addq	$4, %rcx
100006236: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000623a: e9 7c 02 00 00              	jmp	0x1000064bb <_pcc_evaluate_rule_instruction+0x139b>
10000623f: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
100006246: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000624a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000624e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006252: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006259: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000625d: 48 83 c6 30                 	addq	$48, %rsi
100006261: 48 8b 95 48 ff ff ff        	movq	-184(%rbp), %rdx
100006268: e8 c3 c7 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000626d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006271: be 03 00 00 00              	movl	$3, %esi
100006276: e8 15 c8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000627b: 48 83 f8 03                 	cmpq	$3, %rax
10000627f: 0f 82 59 00 00 00           	jb	0x1000062de <_pcc_evaluate_rule_instruction+0x11be>
100006285: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006289: 48 8b 40 18                 	movq	24(%rax), %rax
10000628d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006291: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006295: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006299: 83 f8 6d                    	cmpl	$109, %eax
10000629c: 0f 85 3c 00 00 00           	jne	0x1000062de <_pcc_evaluate_rule_instruction+0x11be>
1000062a2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000062a6: 48 8b 40 18                 	movq	24(%rax), %rax
1000062aa: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000062ae: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000062b2: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000062b7: 83 f8 74                    	cmpl	$116, %eax
1000062ba: 0f 85 1e 00 00 00           	jne	0x1000062de <_pcc_evaluate_rule_instruction+0x11be>
1000062c0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000062c4: 48 8b 40 18                 	movq	24(%rax), %rax
1000062c8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000062cc: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000062d0: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000062d5: 83 f8 68                    	cmpl	$104, %eax
1000062d8: 0f 84 05 00 00 00           	je	0x1000062e3 <_pcc_evaluate_rule_instruction+0x11c3>
1000062de: e9 15 00 00 00              	jmp	0x1000062f8 <_pcc_evaluate_rule_instruction+0x11d8>
1000062e3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000062e7: 48 8b 48 08                 	movq	8(%rax), %rcx
1000062eb: 48 83 c1 03                 	addq	$3, %rcx
1000062ef: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000062f3: e9 c3 01 00 00              	jmp	0x1000064bb <_pcc_evaluate_rule_instruction+0x139b>
1000062f8: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
1000062ff: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006303: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006307: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000630b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006312: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006316: 48 83 c6 30                 	addq	$48, %rsi
10000631a: 48 8b 95 48 ff ff ff        	movq	-184(%rbp), %rdx
100006321: e8 0a c7 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006326: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000632a: be 04 00 00 00              	movl	$4, %esi
10000632f: e8 5c c7 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006334: 48 83 f8 04                 	cmpq	$4, %rax
100006338: 0f 82 77 00 00 00           	jb	0x1000063b5 <_pcc_evaluate_rule_instruction+0x1295>
10000633e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006342: 48 8b 40 18                 	movq	24(%rax), %rax
100006346: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000634a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000634e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006352: 83 f8 4d                    	cmpl	$77, %eax
100006355: 0f 85 5a 00 00 00           	jne	0x1000063b5 <_pcc_evaluate_rule_instruction+0x1295>
10000635b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000635f: 48 8b 40 18                 	movq	24(%rax), %rax
100006363: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006367: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000636b: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100006370: 83 f8 41                    	cmpl	$65, %eax
100006373: 0f 85 3c 00 00 00           	jne	0x1000063b5 <_pcc_evaluate_rule_instruction+0x1295>
100006379: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000637d: 48 8b 40 18                 	movq	24(%rax), %rax
100006381: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006385: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006389: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000638e: 83 f8 54                    	cmpl	$84, %eax
100006391: 0f 85 1e 00 00 00           	jne	0x1000063b5 <_pcc_evaluate_rule_instruction+0x1295>
100006397: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000639b: 48 8b 40 18                 	movq	24(%rax), %rax
10000639f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000063a3: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000063a7: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
1000063ac: 83 f8 48                    	cmpl	$72, %eax
1000063af: 0f 84 05 00 00 00           	je	0x1000063ba <_pcc_evaluate_rule_instruction+0x129a>
1000063b5: e9 15 00 00 00              	jmp	0x1000063cf <_pcc_evaluate_rule_instruction+0x12af>
1000063ba: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000063be: 48 8b 48 08                 	movq	8(%rax), %rcx
1000063c2: 48 83 c1 04                 	addq	$4, %rcx
1000063c6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000063ca: e9 ec 00 00 00              	jmp	0x1000064bb <_pcc_evaluate_rule_instruction+0x139b>
1000063cf: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
1000063d6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000063da: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000063de: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000063e2: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000063e9: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000063ed: 48 83 c6 30                 	addq	$48, %rsi
1000063f1: 48 8b 95 48 ff ff ff        	movq	-184(%rbp), %rdx
1000063f8: e8 33 c6 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000063fd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006401: be 03 00 00 00              	movl	$3, %esi
100006406: e8 85 c6 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000640b: 48 83 f8 03                 	cmpq	$3, %rax
10000640f: 0f 82 59 00 00 00           	jb	0x10000646e <_pcc_evaluate_rule_instruction+0x134e>
100006415: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006419: 48 8b 40 18                 	movq	24(%rax), %rax
10000641d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006421: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006425: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006429: 83 f8 4d                    	cmpl	$77, %eax
10000642c: 0f 85 3c 00 00 00           	jne	0x10000646e <_pcc_evaluate_rule_instruction+0x134e>
100006432: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006436: 48 8b 40 18                 	movq	24(%rax), %rax
10000643a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000643e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006442: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100006447: 83 f8 54                    	cmpl	$84, %eax
10000644a: 0f 85 1e 00 00 00           	jne	0x10000646e <_pcc_evaluate_rule_instruction+0x134e>
100006450: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006454: 48 8b 40 18                 	movq	24(%rax), %rax
100006458: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000645c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006460: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100006465: 83 f8 48                    	cmpl	$72, %eax
100006468: 0f 84 05 00 00 00           	je	0x100006473 <_pcc_evaluate_rule_instruction+0x1353>
10000646e: e9 15 00 00 00              	jmp	0x100006488 <_pcc_evaluate_rule_instruction+0x1368>
100006473: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006477: 48 8b 48 08                 	movq	8(%rax), %rcx
10000647b: 48 83 c1 03                 	addq	$3, %rcx
10000647f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006483: e9 33 00 00 00              	jmp	0x1000064bb <_pcc_evaluate_rule_instruction+0x139b>
100006488: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
10000648f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006493: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006497: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000649b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000064a2: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000064a6: 48 83 c6 30                 	addq	$48, %rsi
1000064aa: 48 8b 95 48 ff ff ff        	movq	-184(%rbp), %rdx
1000064b1: e8 7a c5 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000064b6: e9 82 0b 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
1000064bb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000064bf: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000064c6: 48 8d 35 13 3f 00 00        	leaq	16147(%rip), %rsi       ## 0x10000a3e0 <_pcc_action_instruction_6>
1000064cd: 31 c0                       	xorl	%eax, %eax
1000064cf: 89 c1                       	movl	%eax, %ecx
1000064d1: 48 89 ca                    	movq	%rcx, %rdx
1000064d4: e8 d7 28 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000064d9: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
1000064e0: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000064e4: 48 8b 48 48                 	movq	72(%rax), %rcx
1000064e8: 48 8b 85 40 ff ff ff        	movq	-192(%rbp), %rax
1000064ef: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000064f3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000064f7: 48 8b 48 08                 	movq	8(%rax), %rcx
1000064fb: 48 8b 85 40 ff ff ff        	movq	-192(%rbp), %rax
100006502: 48 89 48 40                 	movq	%rcx, 64(%rax)
100006506: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000650a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006511: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006515: 48 83 c6 30                 	addq	$48, %rsi
100006519: 48 8b 95 40 ff ff ff        	movq	-192(%rbp), %rdx
100006520: e8 fb d3 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100006525: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006529: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000652d: 48 83 c2 30                 	addq	$48, %rdx
100006531: 48 8d 35 28 e1 ff ff        	leaq	-7896(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100006538: 31 c0                       	xorl	%eax, %eax
10000653a: 89 c1                       	movl	%eax, %ecx
10000653c: e8 7f b7 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006541: 83 f8 00                    	cmpl	$0, %eax
100006544: 0f 85 05 00 00 00           	jne	0x10000654f <_pcc_evaluate_rule_instruction+0x142f>
10000654a: e9 ee 0a 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
10000654f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006553: 48 8b 40 08                 	movq	8(%rax), %rax
100006557: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
10000655e: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006562: 48 8b 40 40                 	movq	64(%rax), %rax
100006566: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
10000656d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006571: 48 8b 40 08                 	movq	8(%rax), %rax
100006575: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
10000657c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006580: 48 8b 40 40                 	movq	64(%rax), %rax
100006584: 48 89 85 20 ff ff ff        	movq	%rax, -224(%rbp)
10000658b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000658f: be 01 00 00 00              	movl	$1, %esi
100006594: e8 f7 c4 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006599: 48 83 f8 01                 	cmpq	$1, %rax
10000659d: 0f 82 1d 00 00 00           	jb	0x1000065c0 <_pcc_evaluate_rule_instruction+0x14a0>
1000065a3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000065a7: 48 8b 40 18                 	movq	24(%rax), %rax
1000065ab: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000065af: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000065b3: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000065b7: 83 f8 2b                    	cmpl	$43, %eax
1000065ba: 0f 84 05 00 00 00           	je	0x1000065c5 <_pcc_evaluate_rule_instruction+0x14a5>
1000065c0: e9 15 00 00 00              	jmp	0x1000065da <_pcc_evaluate_rule_instruction+0x14ba>
1000065c5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000065c9: 48 8b 48 08                 	movq	8(%rax), %rcx
1000065cd: 48 83 c1 01                 	addq	$1, %rcx
1000065d1: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000065d5: e9 22 02 00 00              	jmp	0x1000067fc <_pcc_evaluate_rule_instruction+0x16dc>
1000065da: 48 8b 8d 28 ff ff ff        	movq	-216(%rbp), %rcx
1000065e1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000065e5: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000065e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000065ed: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000065f4: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000065f8: 48 83 c6 30                 	addq	$48, %rsi
1000065fc: 48 8b 95 20 ff ff ff        	movq	-224(%rbp), %rdx
100006603: e8 28 c4 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006608: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000660c: be 03 00 00 00              	movl	$3, %esi
100006611: e8 7a c4 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006616: 48 83 f8 03                 	cmpq	$3, %rax
10000661a: 0f 82 59 00 00 00           	jb	0x100006679 <_pcc_evaluate_rule_instruction+0x1559>
100006620: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006624: 48 8b 40 18                 	movq	24(%rax), %rax
100006628: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000662c: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006630: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006634: 83 f8 61                    	cmpl	$97, %eax
100006637: 0f 85 3c 00 00 00           	jne	0x100006679 <_pcc_evaluate_rule_instruction+0x1559>
10000663d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006641: 48 8b 40 18                 	movq	24(%rax), %rax
100006645: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006649: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000664d: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100006652: 83 f8 64                    	cmpl	$100, %eax
100006655: 0f 85 1e 00 00 00           	jne	0x100006679 <_pcc_evaluate_rule_instruction+0x1559>
10000665b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000665f: 48 8b 40 18                 	movq	24(%rax), %rax
100006663: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006667: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000666b: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100006670: 83 f8 64                    	cmpl	$100, %eax
100006673: 0f 84 05 00 00 00           	je	0x10000667e <_pcc_evaluate_rule_instruction+0x155e>
100006679: e9 15 00 00 00              	jmp	0x100006693 <_pcc_evaluate_rule_instruction+0x1573>
10000667e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006682: 48 8b 48 08                 	movq	8(%rax), %rcx
100006686: 48 83 c1 03                 	addq	$3, %rcx
10000668a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000668e: e9 69 01 00 00              	jmp	0x1000067fc <_pcc_evaluate_rule_instruction+0x16dc>
100006693: 48 8b 8d 28 ff ff ff        	movq	-216(%rbp), %rcx
10000669a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000669e: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000066a2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000066a6: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000066ad: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000066b1: 48 83 c6 30                 	addq	$48, %rsi
1000066b5: 48 8b 95 20 ff ff ff        	movq	-224(%rbp), %rdx
1000066bc: e8 6f c3 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000066c1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000066c5: be 03 00 00 00              	movl	$3, %esi
1000066ca: e8 c1 c3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000066cf: 48 83 f8 03                 	cmpq	$3, %rax
1000066d3: 0f 82 59 00 00 00           	jb	0x100006732 <_pcc_evaluate_rule_instruction+0x1612>
1000066d9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000066dd: 48 8b 40 18                 	movq	24(%rax), %rax
1000066e1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000066e5: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000066e9: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000066ed: 83 f8 41                    	cmpl	$65, %eax
1000066f0: 0f 85 3c 00 00 00           	jne	0x100006732 <_pcc_evaluate_rule_instruction+0x1612>
1000066f6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000066fa: 48 8b 40 18                 	movq	24(%rax), %rax
1000066fe: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006702: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006706: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000670b: 83 f8 44                    	cmpl	$68, %eax
10000670e: 0f 85 1e 00 00 00           	jne	0x100006732 <_pcc_evaluate_rule_instruction+0x1612>
100006714: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006718: 48 8b 40 18                 	movq	24(%rax), %rax
10000671c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006720: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006724: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100006729: 83 f8 44                    	cmpl	$68, %eax
10000672c: 0f 84 05 00 00 00           	je	0x100006737 <_pcc_evaluate_rule_instruction+0x1617>
100006732: e9 15 00 00 00              	jmp	0x10000674c <_pcc_evaluate_rule_instruction+0x162c>
100006737: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000673b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000673f: 48 83 c1 03                 	addq	$3, %rcx
100006743: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006747: e9 b0 00 00 00              	jmp	0x1000067fc <_pcc_evaluate_rule_instruction+0x16dc>
10000674c: 48 8b 8d 28 ff ff ff        	movq	-216(%rbp), %rcx
100006753: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006757: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000675b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000675f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006766: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000676a: 48 83 c6 30                 	addq	$48, %rsi
10000676e: 48 8b 95 20 ff ff ff        	movq	-224(%rbp), %rdx
100006775: e8 b6 c2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000677a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000677e: be 01 00 00 00              	movl	$1, %esi
100006783: e8 08 c3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006788: 48 83 f8 01                 	cmpq	$1, %rax
10000678c: 0f 82 1d 00 00 00           	jb	0x1000067af <_pcc_evaluate_rule_instruction+0x168f>
100006792: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006796: 48 8b 40 18                 	movq	24(%rax), %rax
10000679a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000679e: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000067a2: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000067a6: 83 f8 30                    	cmpl	$48, %eax
1000067a9: 0f 84 05 00 00 00           	je	0x1000067b4 <_pcc_evaluate_rule_instruction+0x1694>
1000067af: e9 15 00 00 00              	jmp	0x1000067c9 <_pcc_evaluate_rule_instruction+0x16a9>
1000067b4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000067b8: 48 8b 48 08                 	movq	8(%rax), %rcx
1000067bc: 48 83 c1 01                 	addq	$1, %rcx
1000067c0: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000067c4: e9 33 00 00 00              	jmp	0x1000067fc <_pcc_evaluate_rule_instruction+0x16dc>
1000067c9: 48 8b 8d 28 ff ff ff        	movq	-216(%rbp), %rcx
1000067d0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000067d4: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000067d8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000067dc: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000067e3: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000067e7: 48 83 c6 30                 	addq	$48, %rsi
1000067eb: 48 8b 95 20 ff ff ff        	movq	-224(%rbp), %rdx
1000067f2: e8 39 c2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000067f7: e9 6f 00 00 00              	jmp	0x10000686b <_pcc_evaluate_rule_instruction+0x174b>
1000067fc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006800: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006807: 48 8d 35 02 3c 00 00        	leaq	15362(%rip), %rsi       ## 0x10000a410 <_pcc_action_instruction_7>
10000680e: 31 c0                       	xorl	%eax, %eax
100006810: 89 c1                       	movl	%eax, %ecx
100006812: 48 89 ca                    	movq	%rcx, %rdx
100006815: e8 96 25 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000681a: 48 89 85 18 ff ff ff        	movq	%rax, -232(%rbp)
100006821: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006825: 48 8b 48 48                 	movq	72(%rax), %rcx
100006829: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100006830: 48 89 48 38                 	movq	%rcx, 56(%rax)
100006834: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006838: 48 8b 48 08                 	movq	8(%rax), %rcx
10000683c: 48 8b 85 18 ff ff ff        	movq	-232(%rbp), %rax
100006843: 48 89 48 40                 	movq	%rcx, 64(%rax)
100006847: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000684b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006852: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006856: 48 83 c6 30                 	addq	$48, %rsi
10000685a: 48 8b 95 18 ff ff ff        	movq	-232(%rbp), %rdx
100006861: e8 ba d0 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100006866: e9 18 04 00 00              	jmp	0x100006c83 <_pcc_evaluate_rule_instruction+0x1b63>
10000686b: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
100006872: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006876: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000687a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000687e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006885: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006889: 48 83 c6 30                 	addq	$48, %rsi
10000688d: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100006894: e8 97 c1 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006899: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000689d: 48 8b 40 08                 	movq	8(%rax), %rax
1000068a1: 48 89 85 10 ff ff ff        	movq	%rax, -240(%rbp)
1000068a8: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000068ac: 48 8b 40 40                 	movq	64(%rax), %rax
1000068b0: 48 89 85 08 ff ff ff        	movq	%rax, -248(%rbp)
1000068b7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000068bb: be 01 00 00 00              	movl	$1, %esi
1000068c0: e8 cb c1 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000068c5: 48 83 f8 01                 	cmpq	$1, %rax
1000068c9: 0f 82 1d 00 00 00           	jb	0x1000068ec <_pcc_evaluate_rule_instruction+0x17cc>
1000068cf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000068d3: 48 8b 40 18                 	movq	24(%rax), %rax
1000068d7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000068db: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000068df: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000068e3: 83 f8 7e                    	cmpl	$126, %eax
1000068e6: 0f 84 05 00 00 00           	je	0x1000068f1 <_pcc_evaluate_rule_instruction+0x17d1>
1000068ec: e9 15 00 00 00              	jmp	0x100006906 <_pcc_evaluate_rule_instruction+0x17e6>
1000068f1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000068f5: 48 8b 48 08                 	movq	8(%rax), %rcx
1000068f9: 48 83 c1 01                 	addq	$1, %rcx
1000068fd: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006901: e9 db 02 00 00              	jmp	0x100006be1 <_pcc_evaluate_rule_instruction+0x1ac1>
100006906: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
10000690d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006911: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006915: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006919: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006920: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006924: 48 83 c6 30                 	addq	$48, %rsi
100006928: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
10000692f: e8 fc c0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006934: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006938: be 01 00 00 00              	movl	$1, %esi
10000693d: e8 4e c1 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006942: 48 83 f8 01                 	cmpq	$1, %rax
100006946: 0f 82 1d 00 00 00           	jb	0x100006969 <_pcc_evaluate_rule_instruction+0x1849>
10000694c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006950: 48 8b 40 18                 	movq	24(%rax), %rax
100006954: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006958: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000695c: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006960: 83 f8 21                    	cmpl	$33, %eax
100006963: 0f 84 05 00 00 00           	je	0x10000696e <_pcc_evaluate_rule_instruction+0x184e>
100006969: e9 15 00 00 00              	jmp	0x100006983 <_pcc_evaluate_rule_instruction+0x1863>
10000696e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006972: 48 8b 48 08                 	movq	8(%rax), %rcx
100006976: 48 83 c1 01                 	addq	$1, %rcx
10000697a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000697e: e9 5e 02 00 00              	jmp	0x100006be1 <_pcc_evaluate_rule_instruction+0x1ac1>
100006983: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
10000698a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000698e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006992: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006996: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000699d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000069a1: 48 83 c6 30                 	addq	$48, %rsi
1000069a5: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
1000069ac: e8 7f c0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000069b1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000069b5: be 04 00 00 00              	movl	$4, %esi
1000069ba: e8 d1 c0 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000069bf: 48 83 f8 04                 	cmpq	$4, %rax
1000069c3: 0f 82 77 00 00 00           	jb	0x100006a40 <_pcc_evaluate_rule_instruction+0x1920>
1000069c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000069cd: 48 8b 40 18                 	movq	24(%rax), %rax
1000069d1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000069d5: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000069d9: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000069dd: 83 f8 6e                    	cmpl	$110, %eax
1000069e0: 0f 85 5a 00 00 00           	jne	0x100006a40 <_pcc_evaluate_rule_instruction+0x1920>
1000069e6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000069ea: 48 8b 40 18                 	movq	24(%rax), %rax
1000069ee: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000069f2: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000069f6: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
1000069fb: 83 f8 61                    	cmpl	$97, %eax
1000069fe: 0f 85 3c 00 00 00           	jne	0x100006a40 <_pcc_evaluate_rule_instruction+0x1920>
100006a04: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006a08: 48 8b 40 18                 	movq	24(%rax), %rax
100006a0c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006a10: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006a14: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100006a19: 83 f8 6e                    	cmpl	$110, %eax
100006a1c: 0f 85 1e 00 00 00           	jne	0x100006a40 <_pcc_evaluate_rule_instruction+0x1920>
100006a22: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006a26: 48 8b 40 18                 	movq	24(%rax), %rax
100006a2a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006a2e: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006a32: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100006a37: 83 f8 64                    	cmpl	$100, %eax
100006a3a: 0f 84 05 00 00 00           	je	0x100006a45 <_pcc_evaluate_rule_instruction+0x1925>
100006a40: e9 15 00 00 00              	jmp	0x100006a5a <_pcc_evaluate_rule_instruction+0x193a>
100006a45: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006a49: 48 8b 48 08                 	movq	8(%rax), %rcx
100006a4d: 48 83 c1 04                 	addq	$4, %rcx
100006a51: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006a55: e9 87 01 00 00              	jmp	0x100006be1 <_pcc_evaluate_rule_instruction+0x1ac1>
100006a5a: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
100006a61: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006a65: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006a69: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006a6d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006a74: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006a78: 48 83 c6 30                 	addq	$48, %rsi
100006a7c: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
100006a83: e8 a8 bf ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006a88: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006a8c: be 04 00 00 00              	movl	$4, %esi
100006a91: e8 fa bf ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006a96: 48 83 f8 04                 	cmpq	$4, %rax
100006a9a: 0f 82 77 00 00 00           	jb	0x100006b17 <_pcc_evaluate_rule_instruction+0x19f7>
100006aa0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006aa4: 48 8b 40 18                 	movq	24(%rax), %rax
100006aa8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006aac: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006ab0: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006ab4: 83 f8 4e                    	cmpl	$78, %eax
100006ab7: 0f 85 5a 00 00 00           	jne	0x100006b17 <_pcc_evaluate_rule_instruction+0x19f7>
100006abd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006ac1: 48 8b 40 18                 	movq	24(%rax), %rax
100006ac5: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006ac9: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006acd: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100006ad2: 83 f8 41                    	cmpl	$65, %eax
100006ad5: 0f 85 3c 00 00 00           	jne	0x100006b17 <_pcc_evaluate_rule_instruction+0x19f7>
100006adb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006adf: 48 8b 40 18                 	movq	24(%rax), %rax
100006ae3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006ae7: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006aeb: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100006af0: 83 f8 4e                    	cmpl	$78, %eax
100006af3: 0f 85 1e 00 00 00           	jne	0x100006b17 <_pcc_evaluate_rule_instruction+0x19f7>
100006af9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006afd: 48 8b 40 18                 	movq	24(%rax), %rax
100006b01: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006b05: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006b09: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100006b0e: 83 f8 44                    	cmpl	$68, %eax
100006b11: 0f 84 05 00 00 00           	je	0x100006b1c <_pcc_evaluate_rule_instruction+0x19fc>
100006b17: e9 15 00 00 00              	jmp	0x100006b31 <_pcc_evaluate_rule_instruction+0x1a11>
100006b1c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006b20: 48 8b 48 08                 	movq	8(%rax), %rcx
100006b24: 48 83 c1 04                 	addq	$4, %rcx
100006b28: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006b2c: e9 b0 00 00 00              	jmp	0x100006be1 <_pcc_evaluate_rule_instruction+0x1ac1>
100006b31: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
100006b38: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006b3c: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006b40: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006b44: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006b4b: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006b4f: 48 83 c6 30                 	addq	$48, %rsi
100006b53: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
100006b5a: e8 d1 be ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006b5f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006b63: be 01 00 00 00              	movl	$1, %esi
100006b68: e8 23 bf ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006b6d: 48 83 f8 01                 	cmpq	$1, %rax
100006b71: 0f 82 1d 00 00 00           	jb	0x100006b94 <_pcc_evaluate_rule_instruction+0x1a74>
100006b77: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006b7b: 48 8b 40 18                 	movq	24(%rax), %rax
100006b7f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006b83: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006b87: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006b8b: 83 f8 31                    	cmpl	$49, %eax
100006b8e: 0f 84 05 00 00 00           	je	0x100006b99 <_pcc_evaluate_rule_instruction+0x1a79>
100006b94: e9 15 00 00 00              	jmp	0x100006bae <_pcc_evaluate_rule_instruction+0x1a8e>
100006b99: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006b9d: 48 8b 48 08                 	movq	8(%rax), %rcx
100006ba1: 48 83 c1 01                 	addq	$1, %rcx
100006ba5: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006ba9: e9 33 00 00 00              	jmp	0x100006be1 <_pcc_evaluate_rule_instruction+0x1ac1>
100006bae: 48 8b 8d 10 ff ff ff        	movq	-240(%rbp), %rcx
100006bb5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006bb9: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006bbd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006bc1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006bc8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006bcc: 48 83 c6 30                 	addq	$48, %rsi
100006bd0: 48 8b 95 08 ff ff ff        	movq	-248(%rbp), %rdx
100006bd7: e8 54 be ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006bdc: e9 6f 00 00 00              	jmp	0x100006c50 <_pcc_evaluate_rule_instruction+0x1b30>
100006be1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006be5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006bec: 48 8d 35 4d 38 00 00        	leaq	14413(%rip), %rsi       ## 0x10000a440 <_pcc_action_instruction_8>
100006bf3: 31 c0                       	xorl	%eax, %eax
100006bf5: 89 c1                       	movl	%eax, %ecx
100006bf7: 48 89 ca                    	movq	%rcx, %rdx
100006bfa: e8 b1 21 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100006bff: 48 89 85 00 ff ff ff        	movq	%rax, -256(%rbp)
100006c06: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006c0a: 48 8b 48 48                 	movq	72(%rax), %rcx
100006c0e: 48 8b 85 00 ff ff ff        	movq	-256(%rbp), %rax
100006c15: 48 89 48 38                 	movq	%rcx, 56(%rax)
100006c19: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006c1d: 48 8b 48 08                 	movq	8(%rax), %rcx
100006c21: 48 8b 85 00 ff ff ff        	movq	-256(%rbp), %rax
100006c28: 48 89 48 40                 	movq	%rcx, 64(%rax)
100006c2c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006c30: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006c37: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006c3b: 48 83 c6 30                 	addq	$48, %rsi
100006c3f: 48 8b 95 00 ff ff ff        	movq	-256(%rbp), %rdx
100006c46: e8 d5 cc ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100006c4b: e9 33 00 00 00              	jmp	0x100006c83 <_pcc_evaluate_rule_instruction+0x1b63>
100006c50: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
100006c57: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006c5b: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006c5f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006c63: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006c6a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006c6e: 48 83 c6 30                 	addq	$48, %rsi
100006c72: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100006c79: e8 b2 bd ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006c7e: e9 ba 03 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006c83: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006c87: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006c8b: 48 83 c2 30                 	addq	$48, %rdx
100006c8f: 48 8d 35 ca d9 ff ff        	leaq	-9782(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100006c96: 31 c0                       	xorl	%eax, %eax
100006c98: 89 c1                       	movl	%eax, %ecx
100006c9a: e8 21 b0 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006c9f: 83 f8 00                    	cmpl	$0, %eax
100006ca2: 0f 85 05 00 00 00           	jne	0x100006cad <_pcc_evaluate_rule_instruction+0x1b8d>
100006ca8: e9 90 03 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006cad: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006cb1: 48 8b 40 08                 	movq	8(%rax), %rax
100006cb5: 48 89 85 f8 fe ff ff        	movq	%rax, -264(%rbp)
100006cbc: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006cc0: 48 8b 40 40                 	movq	64(%rax), %rax
100006cc4: 48 89 85 f0 fe ff ff        	movq	%rax, -272(%rbp)
100006ccb: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006ccf: be 01 00 00 00              	movl	$1, %esi
100006cd4: e8 b7 bd ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006cd9: 48 83 f8 01                 	cmpq	$1, %rax
100006cdd: 0f 82 1d 00 00 00           	jb	0x100006d00 <_pcc_evaluate_rule_instruction+0x1be0>
100006ce3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006ce7: 48 8b 40 18                 	movq	24(%rax), %rax
100006ceb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006cef: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006cf3: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006cf7: 83 f8 2c                    	cmpl	$44, %eax
100006cfa: 0f 84 05 00 00 00           	je	0x100006d05 <_pcc_evaluate_rule_instruction+0x1be5>
100006d00: e9 15 00 00 00              	jmp	0x100006d1a <_pcc_evaluate_rule_instruction+0x1bfa>
100006d05: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006d09: 48 8b 48 08                 	movq	8(%rax), %rcx
100006d0d: 48 83 c1 01                 	addq	$1, %rcx
100006d11: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006d15: e9 2e 00 00 00              	jmp	0x100006d48 <_pcc_evaluate_rule_instruction+0x1c28>
100006d1a: 48 8b 8d f8 fe ff ff        	movq	-264(%rbp), %rcx
100006d21: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006d25: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006d29: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006d2d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006d34: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006d38: 48 83 c6 30                 	addq	$48, %rsi
100006d3c: 48 8b 95 f0 fe ff ff        	movq	-272(%rbp), %rdx
100006d43: e8 e8 bc ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006d48: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006d4c: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006d50: 48 83 c2 30                 	addq	$48, %rdx
100006d54: 48 8d 35 05 d9 ff ff        	leaq	-9979(%rip), %rsi       ## 0x100004660 <_pcc_evaluate_rule__>
100006d5b: 31 c0                       	xorl	%eax, %eax
100006d5d: 89 c1                       	movl	%eax, %ecx
100006d5f: e8 5c af ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006d64: 83 f8 00                    	cmpl	$0, %eax
100006d67: 0f 85 05 00 00 00           	jne	0x100006d72 <_pcc_evaluate_rule_instruction+0x1c52>
100006d6d: e9 cb 02 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006d72: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006d76: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006d7a: 48 83 c2 30                 	addq	$48, %rdx
100006d7e: 48 8d 35 2b db ff ff        	leaq	-9429(%rip), %rsi       ## 0x1000048b0 <_pcc_evaluate_rule_data>
100006d85: 31 c0                       	xorl	%eax, %eax
100006d87: 89 c1                       	movl	%eax, %ecx
100006d89: e8 32 af ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006d8e: 83 f8 00                    	cmpl	$0, %eax
100006d91: 0f 85 05 00 00 00           	jne	0x100006d9c <_pcc_evaluate_rule_instruction+0x1c7c>
100006d97: e9 a1 02 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006d9c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006da0: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006da4: 48 83 c2 30                 	addq	$48, %rdx
100006da8: 48 8d 35 b1 d8 ff ff        	leaq	-10063(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100006daf: 31 c0                       	xorl	%eax, %eax
100006db1: 89 c1                       	movl	%eax, %ecx
100006db3: e8 08 af ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006db8: 83 f8 00                    	cmpl	$0, %eax
100006dbb: 0f 85 05 00 00 00           	jne	0x100006dc6 <_pcc_evaluate_rule_instruction+0x1ca6>
100006dc1: e9 77 02 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006dc6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006dca: 48 8b 40 08                 	movq	8(%rax), %rax
100006dce: 48 89 85 e8 fe ff ff        	movq	%rax, -280(%rbp)
100006dd5: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006dd9: 48 8b 40 40                 	movq	64(%rax), %rax
100006ddd: 48 89 85 e0 fe ff ff        	movq	%rax, -288(%rbp)
100006de4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006de8: be 01 00 00 00              	movl	$1, %esi
100006ded: e8 9e bc ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006df2: 48 83 f8 01                 	cmpq	$1, %rax
100006df6: 0f 82 1d 00 00 00           	jb	0x100006e19 <_pcc_evaluate_rule_instruction+0x1cf9>
100006dfc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006e00: 48 8b 40 18                 	movq	24(%rax), %rax
100006e04: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006e08: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006e0c: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006e10: 83 f8 2c                    	cmpl	$44, %eax
100006e13: 0f 84 05 00 00 00           	je	0x100006e1e <_pcc_evaluate_rule_instruction+0x1cfe>
100006e19: e9 15 00 00 00              	jmp	0x100006e33 <_pcc_evaluate_rule_instruction+0x1d13>
100006e1e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006e22: 48 8b 48 08                 	movq	8(%rax), %rcx
100006e26: 48 83 c1 01                 	addq	$1, %rcx
100006e2a: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006e2e: e9 2e 00 00 00              	jmp	0x100006e61 <_pcc_evaluate_rule_instruction+0x1d41>
100006e33: 48 8b 8d e8 fe ff ff        	movq	-280(%rbp), %rcx
100006e3a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006e3e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006e42: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006e46: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006e4d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006e51: 48 83 c6 30                 	addq	$48, %rsi
100006e55: 48 8b 95 e0 fe ff ff        	movq	-288(%rbp), %rdx
100006e5c: e8 cf bb ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006e61: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006e65: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006e69: 48 83 c2 30                 	addq	$48, %rdx
100006e6d: 48 8d 35 ec d7 ff ff        	leaq	-10260(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100006e74: 31 c0                       	xorl	%eax, %eax
100006e76: 89 c1                       	movl	%eax, %ecx
100006e78: e8 43 ae ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006e7d: 83 f8 00                    	cmpl	$0, %eax
100006e80: 0f 85 05 00 00 00           	jne	0x100006e8b <_pcc_evaluate_rule_instruction+0x1d6b>
100006e86: e9 b2 01 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006e8b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006e8f: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006e93: 48 83 c2 30                 	addq	$48, %rdx
100006e97: 48 8d 35 12 da ff ff        	leaq	-9710(%rip), %rsi       ## 0x1000048b0 <_pcc_evaluate_rule_data>
100006e9e: 31 c0                       	xorl	%eax, %eax
100006ea0: 89 c1                       	movl	%eax, %ecx
100006ea2: e8 19 ae ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006ea7: 83 f8 00                    	cmpl	$0, %eax
100006eaa: 0f 85 05 00 00 00           	jne	0x100006eb5 <_pcc_evaluate_rule_instruction+0x1d95>
100006eb0: e9 88 01 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006eb5: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006eb9: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006ebd: 48 83 c2 30                 	addq	$48, %rdx
100006ec1: 48 8d 35 98 d7 ff ff        	leaq	-10344(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100006ec8: 31 c0                       	xorl	%eax, %eax
100006eca: 89 c1                       	movl	%eax, %ecx
100006ecc: e8 ef ad ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006ed1: 83 f8 00                    	cmpl	$0, %eax
100006ed4: 0f 85 05 00 00 00           	jne	0x100006edf <_pcc_evaluate_rule_instruction+0x1dbf>
100006eda: e9 5e 01 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006edf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006ee3: 48 8b 40 08                 	movq	8(%rax), %rax
100006ee7: 48 89 85 d8 fe ff ff        	movq	%rax, -296(%rbp)
100006eee: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006ef2: 48 8b 40 40                 	movq	64(%rax), %rax
100006ef6: 48 89 85 d0 fe ff ff        	movq	%rax, -304(%rbp)
100006efd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006f01: be 01 00 00 00              	movl	$1, %esi
100006f06: e8 85 bb ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100006f0b: 48 83 f8 01                 	cmpq	$1, %rax
100006f0f: 0f 82 1d 00 00 00           	jb	0x100006f32 <_pcc_evaluate_rule_instruction+0x1e12>
100006f15: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f19: 48 8b 40 18                 	movq	24(%rax), %rax
100006f1d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100006f21: 48 8b 49 08                 	movq	8(%rcx), %rcx
100006f25: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100006f29: 83 f8 2c                    	cmpl	$44, %eax
100006f2c: 0f 84 05 00 00 00           	je	0x100006f37 <_pcc_evaluate_rule_instruction+0x1e17>
100006f32: e9 15 00 00 00              	jmp	0x100006f4c <_pcc_evaluate_rule_instruction+0x1e2c>
100006f37: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f3b: 48 8b 48 08                 	movq	8(%rax), %rcx
100006f3f: 48 83 c1 01                 	addq	$1, %rcx
100006f43: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006f47: e9 2e 00 00 00              	jmp	0x100006f7a <_pcc_evaluate_rule_instruction+0x1e5a>
100006f4c: 48 8b 8d d8 fe ff ff        	movq	-296(%rbp), %rcx
100006f53: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f57: 48 89 48 08                 	movq	%rcx, 8(%rax)
100006f5b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006f5f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006f66: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100006f6a: 48 83 c6 30                 	addq	$48, %rsi
100006f6e: 48 8b 95 d0 fe ff ff        	movq	-304(%rbp), %rdx
100006f75: e8 b6 ba ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100006f7a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006f7e: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006f82: 48 83 c2 30                 	addq	$48, %rdx
100006f86: 48 8d 35 d3 d6 ff ff        	leaq	-10541(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100006f8d: 31 c0                       	xorl	%eax, %eax
100006f8f: 89 c1                       	movl	%eax, %ecx
100006f91: e8 2a ad ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006f96: 83 f8 00                    	cmpl	$0, %eax
100006f99: 0f 85 05 00 00 00           	jne	0x100006fa4 <_pcc_evaluate_rule_instruction+0x1e84>
100006f9f: e9 99 00 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006fa4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100006fa8: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100006fac: 48 83 c2 30                 	addq	$48, %rdx
100006fb0: 48 8d 35 d9 13 00 00        	leaq	5081(%rip), %rsi        ## 0x100008390 <_pcc_evaluate_rule_addr>
100006fb7: 31 c0                       	xorl	%eax, %eax
100006fb9: 89 c1                       	movl	%eax, %ecx
100006fbb: e8 00 ad ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100006fc0: 83 f8 00                    	cmpl	$0, %eax
100006fc3: 0f 85 05 00 00 00           	jne	0x100006fce <_pcc_evaluate_rule_instruction+0x1eae>
100006fc9: e9 6f 00 00 00              	jmp	0x10000703d <_pcc_evaluate_rule_instruction+0x1f1d>
100006fce: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100006fd2: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100006fd9: 48 8d 35 90 34 00 00        	leaq	13456(%rip), %rsi       ## 0x10000a470 <_pcc_action_instruction_9>
100006fe0: 31 c0                       	xorl	%eax, %eax
100006fe2: 89 c1                       	movl	%eax, %ecx
100006fe4: 48 89 ca                    	movq	%rcx, %rdx
100006fe7: e8 c4 1d 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100006fec: 48 89 85 c8 fe ff ff        	movq	%rax, -312(%rbp)
100006ff3: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100006ff7: 48 8b 48 48                 	movq	72(%rax), %rcx
100006ffb: 48 8b 85 c8 fe ff ff        	movq	-312(%rbp), %rax
100007002: 48 89 48 38                 	movq	%rcx, 56(%rax)
100007006: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000700a: 48 8b 48 08                 	movq	8(%rax), %rcx
10000700e: 48 8b 85 c8 fe ff ff        	movq	-312(%rbp), %rax
100007015: 48 89 48 40                 	movq	%rcx, 64(%rax)
100007019: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000701d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007024: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007028: 48 83 c6 30                 	addq	$48, %rsi
10000702c: 48 8b 95 c8 fe ff ff        	movq	-312(%rbp), %rdx
100007033: e8 e8 c8 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100007038: e9 2d 00 00 00              	jmp	0x10000706a <_pcc_evaluate_rule_instruction+0x1f4a>
10000703d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100007041: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007045: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007049: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000704d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007054: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007058: 48 83 c6 30                 	addq	$48, %rsi
10000705c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100007060: e8 cb b9 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007065: e9 22 01 00 00              	jmp	0x10000718c <_pcc_evaluate_rule_instruction+0x206c>
10000706a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000706e: 48 8b 40 08                 	movq	8(%rax), %rax
100007072: 48 89 85 c0 fe ff ff        	movq	%rax, -320(%rbp)
100007079: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000707d: 48 8b 40 40                 	movq	64(%rax), %rax
100007081: 48 89 85 b8 fe ff ff        	movq	%rax, -328(%rbp)
100007088: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000708c: be 01 00 00 00              	movl	$1, %esi
100007091: e8 fa b9 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007096: 48 83 f8 01                 	cmpq	$1, %rax
10000709a: 0f 82 1d 00 00 00           	jb	0x1000070bd <_pcc_evaluate_rule_instruction+0x1f9d>
1000070a0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000070a4: 48 8b 40 18                 	movq	24(%rax), %rax
1000070a8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000070ac: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000070b0: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000070b4: 83 f8 3b                    	cmpl	$59, %eax
1000070b7: 0f 84 05 00 00 00           	je	0x1000070c2 <_pcc_evaluate_rule_instruction+0x1fa2>
1000070bd: e9 15 00 00 00              	jmp	0x1000070d7 <_pcc_evaluate_rule_instruction+0x1fb7>
1000070c2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000070c6: 48 8b 48 08                 	movq	8(%rax), %rcx
1000070ca: 48 83 c1 01                 	addq	$1, %rcx
1000070ce: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000070d2: e9 2e 00 00 00              	jmp	0x100007105 <_pcc_evaluate_rule_instruction+0x1fe5>
1000070d7: 48 8b 8d c0 fe ff ff        	movq	-320(%rbp), %rcx
1000070de: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000070e2: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000070e6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000070ea: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000070f1: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000070f5: 48 83 c6 30                 	addq	$48, %rsi
1000070f9: 48 8b 95 b8 fe ff ff        	movq	-328(%rbp), %rdx
100007100: e8 2b b9 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007105: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007109: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007110: 48 8d 35 89 33 00 00        	leaq	13193(%rip), %rsi       ## 0x10000a4a0 <_pcc_action_instruction_10>
100007117: 31 c0                       	xorl	%eax, %eax
100007119: 89 c1                       	movl	%eax, %ecx
10000711b: 48 89 ca                    	movq	%rcx, %rdx
10000711e: e8 8d 1c 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100007123: 48 89 85 b0 fe ff ff        	movq	%rax, -336(%rbp)
10000712a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000712e: 48 8b 48 48                 	movq	72(%rax), %rcx
100007132: 48 8b 85 b0 fe ff ff        	movq	-336(%rbp), %rax
100007139: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000713d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007141: 48 8b 48 08                 	movq	8(%rax), %rcx
100007145: 48 8b 85 b0 fe ff ff        	movq	-336(%rbp), %rax
10000714c: 48 89 48 40                 	movq	%rcx, 64(%rax)
100007150: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007154: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000715b: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000715f: 48 83 c6 30                 	addq	$48, %rsi
100007163: 48 8b 95 b0 fe ff ff        	movq	-336(%rbp), %rdx
10000716a: e8 b1 c7 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000716f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007173: 48 8b 48 10                 	movq	16(%rax), %rcx
100007177: 48 83 c1 ff                 	addq	$-1, %rcx
10000717b: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000717f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007183: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100007187: e9 25 00 00 00              	jmp	0x1000071b1 <_pcc_evaluate_rule_instruction+0x2091>
10000718c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007190: 48 8b 48 10                 	movq	16(%rax), %rcx
100007194: 48 83 c1 ff                 	addq	$-1, %rcx
100007198: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000719c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000071a0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000071a4: e8 e7 c6 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
1000071a9: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000071b1: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000071b5: 48 81 c4 50 01 00 00        	addq	$336, %rsp              ## imm = 0x150
1000071bc: 5d                          	popq	%rbp
1000071bd: c3                          	retq
1000071be: 66 90                       	nop

00000001000071c0 <_pcc_evaluate_rule_define>:
1000071c0: 55                          	pushq	%rbp
1000071c1: 48 89 e5                    	movq	%rsp, %rbp
1000071c4: 48 81 ec 90 00 00 00        	subq	$144, %rsp
1000071cb: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000071cf: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000071d3: e8 f8 d3 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
1000071d8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000071dc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000071e0: 48 8b 48 08                 	movq	8(%rax), %rcx
1000071e4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000071e8: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000071ec: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000071f0: 48 8b 48 10                 	movq	16(%rax), %rcx
1000071f4: 48 83 c1 01                 	addq	$1, %rcx
1000071f8: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000071fc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007200: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007207: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000720b: 48 83 c6 18                 	addq	$24, %rsi
10000720f: ba 01 00 00 00              	movl	$1, %edx
100007214: e8 f7 28 00 00              	callq	0x100009b10 <_pcc_capture_table__resize>
100007219: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000721d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007224: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007228: ba 01 00 00 00              	movl	$1, %edx
10000722d: e8 2e 18 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
100007232: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007236: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000723d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007241: e8 fa 18 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
100007246: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000724a: be 06 00 00 00              	movl	$6, %esi
10000724f: e8 3c b8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007254: 48 83 f8 06                 	cmpq	$6, %rax
100007258: 0f 82 b3 00 00 00           	jb	0x100007311 <_pcc_evaluate_rule_define+0x151>
10000725e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007262: 48 8b 40 18                 	movq	24(%rax), %rax
100007266: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000726a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000726e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007272: 83 f8 64                    	cmpl	$100, %eax
100007275: 0f 85 96 00 00 00           	jne	0x100007311 <_pcc_evaluate_rule_define+0x151>
10000727b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000727f: 48 8b 40 18                 	movq	24(%rax), %rax
100007283: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007287: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000728b: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100007290: 83 f8 65                    	cmpl	$101, %eax
100007293: 0f 85 78 00 00 00           	jne	0x100007311 <_pcc_evaluate_rule_define+0x151>
100007299: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000729d: 48 8b 40 18                 	movq	24(%rax), %rax
1000072a1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072a5: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000072a9: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
1000072ae: 83 f8 66                    	cmpl	$102, %eax
1000072b1: 0f 85 5a 00 00 00           	jne	0x100007311 <_pcc_evaluate_rule_define+0x151>
1000072b7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000072bb: 48 8b 40 18                 	movq	24(%rax), %rax
1000072bf: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072c3: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000072c7: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
1000072cc: 83 f8 69                    	cmpl	$105, %eax
1000072cf: 0f 85 3c 00 00 00           	jne	0x100007311 <_pcc_evaluate_rule_define+0x151>
1000072d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000072d9: 48 8b 40 18                 	movq	24(%rax), %rax
1000072dd: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072e1: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000072e5: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
1000072ea: 83 f8 6e                    	cmpl	$110, %eax
1000072ed: 0f 85 1e 00 00 00           	jne	0x100007311 <_pcc_evaluate_rule_define+0x151>
1000072f3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000072f7: 48 8b 40 18                 	movq	24(%rax), %rax
1000072fb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000072ff: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007303: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
100007308: 83 f8 65                    	cmpl	$101, %eax
10000730b: 0f 84 05 00 00 00           	je	0x100007316 <_pcc_evaluate_rule_define+0x156>
100007311: e9 a4 04 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
100007316: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000731a: 48 8b 48 08                 	movq	8(%rax), %rcx
10000731e: 48 83 c1 06                 	addq	$6, %rcx
100007322: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007326: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000732a: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000732e: 48 83 c2 30                 	addq	$48, %rdx
100007332: 48 8d 35 27 d3 ff ff        	leaq	-11481(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007339: 31 c0                       	xorl	%eax, %eax
10000733b: 89 c1                       	movl	%eax, %ecx
10000733d: e8 7e a9 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007342: 83 f8 00                    	cmpl	$0, %eax
100007345: 0f 85 05 00 00 00           	jne	0x100007350 <_pcc_evaluate_rule_define+0x190>
10000734b: e9 6a 04 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
100007350: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007354: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007358: 48 83 c2 30                 	addq	$48, %rdx
10000735c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007360: 48 8b 08                    	movq	(%rax), %rcx
100007363: 48 8d 35 16 18 00 00        	leaq	6166(%rip), %rsi        ## 0x100008b80 <_pcc_evaluate_rule_name>
10000736a: e8 51 a9 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000736f: 83 f8 00                    	cmpl	$0, %eax
100007372: 0f 85 05 00 00 00           	jne	0x10000737d <_pcc_evaluate_rule_define+0x1bd>
100007378: e9 3d 04 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
10000737d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007381: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007385: 48 83 c2 30                 	addq	$48, %rdx
100007389: 48 8d 35 d0 d2 ff ff        	leaq	-11568(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007390: 31 c0                       	xorl	%eax, %eax
100007392: 89 c1                       	movl	%eax, %ecx
100007394: e8 27 a9 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007399: 83 f8 00                    	cmpl	$0, %eax
10000739c: 0f 85 05 00 00 00           	jne	0x1000073a7 <_pcc_evaluate_rule_define+0x1e7>
1000073a2: e9 13 04 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
1000073a7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000073ab: 48 8b 40 08                 	movq	8(%rax), %rax
1000073af: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000073b3: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000073b7: 48 8b 40 40                 	movq	64(%rax), %rax
1000073bb: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000073bf: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000073c3: be 01 00 00 00              	movl	$1, %esi
1000073c8: e8 c3 b6 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000073cd: 48 83 f8 01                 	cmpq	$1, %rax
1000073d1: 0f 82 1d 00 00 00           	jb	0x1000073f4 <_pcc_evaluate_rule_define+0x234>
1000073d7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000073db: 48 8b 40 18                 	movq	24(%rax), %rax
1000073df: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000073e3: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000073e7: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000073eb: 83 f8 2c                    	cmpl	$44, %eax
1000073ee: 0f 84 05 00 00 00           	je	0x1000073f9 <_pcc_evaluate_rule_define+0x239>
1000073f4: e9 15 00 00 00              	jmp	0x10000740e <_pcc_evaluate_rule_define+0x24e>
1000073f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000073fd: 48 8b 48 08                 	movq	8(%rax), %rcx
100007401: 48 83 c1 01                 	addq	$1, %rcx
100007405: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007409: e9 28 00 00 00              	jmp	0x100007436 <_pcc_evaluate_rule_define+0x276>
10000740e: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100007412: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007416: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000741a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000741e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007425: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007429: 48 83 c6 30                 	addq	$48, %rsi
10000742d: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100007431: e8 fa b5 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007436: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000743a: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000743e: 48 83 c2 30                 	addq	$48, %rdx
100007442: 48 8d 35 17 d2 ff ff        	leaq	-11753(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007449: 31 c0                       	xorl	%eax, %eax
10000744b: 89 c1                       	movl	%eax, %ecx
10000744d: e8 6e a8 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007452: 83 f8 00                    	cmpl	$0, %eax
100007455: 0f 85 05 00 00 00           	jne	0x100007460 <_pcc_evaluate_rule_define+0x2a0>
10000745b: e9 5a 03 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
100007460: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007464: be 01 00 00 00              	movl	$1, %esi
100007469: e8 22 b6 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000746e: 48 83 f8 01                 	cmpq	$1, %rax
100007472: 0f 82 1d 00 00 00           	jb	0x100007495 <_pcc_evaluate_rule_define+0x2d5>
100007478: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000747c: 48 8b 40 18                 	movq	24(%rax), %rax
100007480: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007484: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007488: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000748c: 83 f8 7b                    	cmpl	$123, %eax
10000748f: 0f 84 05 00 00 00           	je	0x10000749a <_pcc_evaluate_rule_define+0x2da>
100007495: e9 20 03 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
10000749a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000749e: 48 8b 48 08                 	movq	8(%rax), %rcx
1000074a2: 48 83 c1 01                 	addq	$1, %rcx
1000074a6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000074aa: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000074ae: 48 8b 40 08                 	movq	8(%rax), %rax
1000074b2: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000074b6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000074ba: 48 8b 40 08                 	movq	8(%rax), %rax
1000074be: 48 89 45 c0                 	movq	%rax, -64(%rbp)
1000074c2: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000074c6: 48 8b 40 40                 	movq	64(%rax), %rax
1000074ca: 48 89 45 b8                 	movq	%rax, -72(%rbp)
1000074ce: c7 45 b4 00 00 00 00        	movl	$0, -76(%rbp)
1000074d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000074d9: 48 8b 40 08                 	movq	8(%rax), %rax
1000074dd: 48 89 45 a8                 	movq	%rax, -88(%rbp)
1000074e1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000074e5: 48 8b 40 40                 	movq	64(%rax), %rax
1000074e9: 48 89 45 a0                 	movq	%rax, -96(%rbp)
1000074ed: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000074f1: 48 8b 40 08                 	movq	8(%rax), %rax
1000074f5: 48 89 45 98                 	movq	%rax, -104(%rbp)
1000074f9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000074fd: be 01 00 00 00              	movl	$1, %esi
100007502: e8 89 b5 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007507: 48 83 f8 01                 	cmpq	$1, %rax
10000750b: 0f 82 1d 00 00 00           	jb	0x10000752e <_pcc_evaluate_rule_define+0x36e>
100007511: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007515: 48 8b 40 18                 	movq	24(%rax), %rax
100007519: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000751d: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007521: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007525: 83 f8 7d                    	cmpl	$125, %eax
100007528: 0f 84 05 00 00 00           	je	0x100007533 <_pcc_evaluate_rule_define+0x373>
10000752e: e9 21 00 00 00              	jmp	0x100007554 <_pcc_evaluate_rule_define+0x394>
100007533: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007537: 48 8b 48 08                 	movq	8(%rax), %rcx
10000753b: 48 83 c1 01                 	addq	$1, %rcx
10000753f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007543: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100007547: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000754b: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000754f: e9 cc 00 00 00              	jmp	0x100007620 <_pcc_evaluate_rule_define+0x460>
100007554: 48 8b 4d 98                 	movq	-104(%rbp), %rcx
100007558: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000755c: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007560: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007564: 48 8b 40 08                 	movq	8(%rax), %rax
100007568: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000756c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007570: be 01 00 00 00              	movl	$1, %esi
100007575: e8 16 b5 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000757a: 48 83 f8 01                 	cmpq	$1, %rax
10000757e: 0f 82 1d 00 00 00           	jb	0x1000075a1 <_pcc_evaluate_rule_define+0x3e1>
100007584: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007588: 48 8b 40 18                 	movq	24(%rax), %rax
10000758c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007590: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007594: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007598: 83 f8 7b                    	cmpl	$123, %eax
10000759b: 0f 84 05 00 00 00           	je	0x1000075a6 <_pcc_evaluate_rule_define+0x3e6>
1000075a1: e9 21 00 00 00              	jmp	0x1000075c7 <_pcc_evaluate_rule_define+0x407>
1000075a6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000075aa: 48 8b 48 08                 	movq	8(%rax), %rcx
1000075ae: 48 83 c1 01                 	addq	$1, %rcx
1000075b2: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000075b6: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
1000075ba: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000075be: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000075c2: e9 59 00 00 00              	jmp	0x100007620 <_pcc_evaluate_rule_define+0x460>
1000075c7: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
1000075cb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000075cf: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000075d3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000075d7: 48 8d 75 8c                 	leaq	-116(%rbp), %rsi
1000075db: e8 c0 18 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
1000075e0: 48 89 45 80                 	movq	%rax, -128(%rbp)
1000075e4: 48 83 7d 80 00              	cmpq	$0, -128(%rbp)
1000075e9: 0f 85 05 00 00 00           	jne	0x1000075f4 <_pcc_evaluate_rule_define+0x434>
1000075ef: e9 2c 00 00 00              	jmp	0x100007620 <_pcc_evaluate_rule_define+0x460>
1000075f4: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
1000075f8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000075fc: 48 03 48 08                 	addq	8(%rax), %rcx
100007600: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007604: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007608: 48 8b 40 08                 	movq	8(%rax), %rax
10000760c: 48 3b 45 a8                 	cmpq	-88(%rbp), %rax
100007610: 0f 85 05 00 00 00           	jne	0x10000761b <_pcc_evaluate_rule_define+0x45b>
100007616: e9 40 00 00 00              	jmp	0x10000765b <_pcc_evaluate_rule_define+0x49b>
10000761b: e9 2d 00 00 00              	jmp	0x10000764d <_pcc_evaluate_rule_define+0x48d>
100007620: 48 8b 4d a8                 	movq	-88(%rbp), %rcx
100007624: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007628: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000762c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007630: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007637: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000763b: 48 83 c6 30                 	addq	$48, %rsi
10000763f: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
100007643: e8 e8 b3 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007648: e9 0e 00 00 00              	jmp	0x10000765b <_pcc_evaluate_rule_define+0x49b>
10000764d: 8b 45 b4                    	movl	-76(%rbp), %eax
100007650: 83 c0 01                    	addl	$1, %eax
100007653: 89 45 b4                    	movl	%eax, -76(%rbp)
100007656: e9 7a fe ff ff              	jmp	0x1000074d5 <_pcc_evaluate_rule_define+0x315>
10000765b: 83 7d b4 01                 	cmpl	$1, -76(%rbp)
10000765f: 0f 8d 2d 00 00 00           	jge	0x100007692 <_pcc_evaluate_rule_define+0x4d2>
100007665: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100007669: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000766d: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007671: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007675: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000767c: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007680: 48 83 c6 30                 	addq	$48, %rsi
100007684: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100007688: e8 a3 b3 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000768d: e9 28 01 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
100007692: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007696: 48 8b 40 08                 	movq	8(%rax), %rax
10000769a: 48 89 45 c8                 	movq	%rax, -56(%rbp)
10000769e: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
1000076a2: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000076a6: 48 8b 40 18                 	movq	24(%rax), %rax
1000076aa: 48 89 08                    	movq	%rcx, (%rax)
1000076ad: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
1000076b1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000076b5: 48 8b 40 18                 	movq	24(%rax), %rax
1000076b9: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000076bd: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000076c1: be 01 00 00 00              	movl	$1, %esi
1000076c6: e8 c5 b3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000076cb: 48 83 f8 01                 	cmpq	$1, %rax
1000076cf: 0f 82 1d 00 00 00           	jb	0x1000076f2 <_pcc_evaluate_rule_define+0x532>
1000076d5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000076d9: 48 8b 40 18                 	movq	24(%rax), %rax
1000076dd: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000076e1: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000076e5: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000076e9: 83 f8 7d                    	cmpl	$125, %eax
1000076ec: 0f 84 05 00 00 00           	je	0x1000076f7 <_pcc_evaluate_rule_define+0x537>
1000076f2: e9 c3 00 00 00              	jmp	0x1000077ba <_pcc_evaluate_rule_define+0x5fa>
1000076f7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000076fb: 48 8b 48 08                 	movq	8(%rax), %rcx
1000076ff: 48 83 c1 01                 	addq	$1, %rcx
100007703: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007707: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000770b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007712: 48 8d 35 87 40 00 00        	leaq	16519(%rip), %rsi       ## 0x10000b7a0 <_pcc_action_define_0>
100007719: b9 01 00 00 00              	movl	$1, %ecx
10000771e: 48 89 ca                    	movq	%rcx, %rdx
100007721: e8 8a 16 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100007726: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
10000772d: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007731: 48 8b 08                    	movq	(%rax), %rcx
100007734: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
10000773b: 48 8b 40 08                 	movq	8(%rax), %rax
10000773f: 48 89 08                    	movq	%rcx, (%rax)
100007742: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007746: 48 8b 48 18                 	movq	24(%rax), %rcx
10000774a: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100007751: 48 8b 40 20                 	movq	32(%rax), %rax
100007755: 48 89 08                    	movq	%rcx, (%rax)
100007758: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000775c: 48 8b 48 48                 	movq	72(%rax), %rcx
100007760: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
100007767: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000776b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000776f: 48 8b 48 08                 	movq	8(%rax), %rcx
100007773: 48 8b 85 78 ff ff ff        	movq	-136(%rbp), %rax
10000777a: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000777e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007782: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007789: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000778d: 48 83 c6 30                 	addq	$48, %rsi
100007791: 48 8b 95 78 ff ff ff        	movq	-136(%rbp), %rdx
100007798: e8 83 c1 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000779d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000077a1: 48 8b 48 10                 	movq	16(%rax), %rcx
1000077a5: 48 83 c1 ff                 	addq	$-1, %rcx
1000077a9: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000077ad: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000077b1: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000077b5: e9 25 00 00 00              	jmp	0x1000077df <_pcc_evaluate_rule_define+0x61f>
1000077ba: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000077be: 48 8b 48 10                 	movq	16(%rax), %rcx
1000077c2: 48 83 c1 ff                 	addq	$-1, %rcx
1000077c6: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000077ca: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000077ce: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000077d2: e8 b9 c0 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
1000077d7: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000077df: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000077e3: 48 81 c4 90 00 00 00        	addq	$144, %rsp
1000077ea: 5d                          	popq	%rbp
1000077eb: c3                          	retq
1000077ec: 0f 1f 40 00                 	nopl	(%rax)

00000001000077f0 <_pcc_evaluate_rule_macro>:
1000077f0: 55                          	pushq	%rbp
1000077f1: 48 89 e5                    	movq	%rsp, %rbp
1000077f4: 48 81 ec e0 00 00 00        	subq	$224, %rsp
1000077fb: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000077ff: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007803: e8 c8 cd ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100007808: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000780c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007810: 48 8b 48 08                 	movq	8(%rax), %rcx
100007814: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007818: 48 89 48 48                 	movq	%rcx, 72(%rax)
10000781c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007820: 48 8b 48 10                 	movq	16(%rax), %rcx
100007824: 48 83 c1 01                 	addq	$1, %rcx
100007828: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000782c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007830: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007837: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000783b: 48 83 c6 18                 	addq	$24, %rsi
10000783f: ba 03 00 00 00              	movl	$3, %edx
100007844: e8 c7 22 00 00              	callq	0x100009b10 <_pcc_capture_table__resize>
100007849: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000784d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007854: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007858: ba 01 00 00 00              	movl	$1, %edx
10000785d: e8 fe 11 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
100007862: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007866: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000786d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007871: e8 ca 12 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
100007876: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000787a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007881: 48 8d 35 78 3f 00 00        	leaq	16248(%rip), %rsi       ## 0x10000b800 <_pcc_action_macro_0>
100007888: ba 01 00 00 00              	movl	$1, %edx
10000788d: b9 03 00 00 00              	movl	$3, %ecx
100007892: e8 19 15 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100007897: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000789b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000789f: 48 8b 48 48                 	movq	72(%rax), %rcx
1000078a3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000078a7: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000078ab: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000078af: 48 8b 48 08                 	movq	8(%rax), %rcx
1000078b3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000078b7: 48 89 48 40                 	movq	%rcx, 64(%rax)
1000078bb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000078bf: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000078c6: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000078ca: 48 83 c6 30                 	addq	$48, %rsi
1000078ce: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
1000078d2: e8 49 c0 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
1000078d7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000078db: be 05 00 00 00              	movl	$5, %esi
1000078e0: e8 ab b1 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
1000078e5: 48 83 f8 05                 	cmpq	$5, %rax
1000078e9: 0f 82 95 00 00 00           	jb	0x100007984 <_pcc_evaluate_rule_macro+0x194>
1000078ef: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000078f3: 48 8b 40 18                 	movq	24(%rax), %rax
1000078f7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000078fb: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000078ff: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007903: 83 f8 6d                    	cmpl	$109, %eax
100007906: 0f 85 78 00 00 00           	jne	0x100007984 <_pcc_evaluate_rule_macro+0x194>
10000790c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007910: 48 8b 40 18                 	movq	24(%rax), %rax
100007914: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007918: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000791c: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100007921: 83 f8 61                    	cmpl	$97, %eax
100007924: 0f 85 5a 00 00 00           	jne	0x100007984 <_pcc_evaluate_rule_macro+0x194>
10000792a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000792e: 48 8b 40 18                 	movq	24(%rax), %rax
100007932: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007936: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000793a: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000793f: 83 f8 63                    	cmpl	$99, %eax
100007942: 0f 85 3c 00 00 00           	jne	0x100007984 <_pcc_evaluate_rule_macro+0x194>
100007948: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000794c: 48 8b 40 18                 	movq	24(%rax), %rax
100007950: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007954: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007958: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000795d: 83 f8 72                    	cmpl	$114, %eax
100007960: 0f 85 1e 00 00 00           	jne	0x100007984 <_pcc_evaluate_rule_macro+0x194>
100007966: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000796a: 48 8b 40 18                 	movq	24(%rax), %rax
10000796e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007972: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007976: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000797b: 83 f8 6f                    	cmpl	$111, %eax
10000797e: 0f 84 05 00 00 00           	je	0x100007989 <_pcc_evaluate_rule_macro+0x199>
100007984: e9 aa 07 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007989: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000798d: 48 8b 48 08                 	movq	8(%rax), %rcx
100007991: 48 83 c1 05                 	addq	$5, %rcx
100007995: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007999: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000799d: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000079a1: 48 83 c2 30                 	addq	$48, %rdx
1000079a5: 48 8d 35 b4 cc ff ff        	leaq	-13132(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
1000079ac: 31 c0                       	xorl	%eax, %eax
1000079ae: 89 c1                       	movl	%eax, %ecx
1000079b0: e8 0b a3 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000079b5: 83 f8 00                    	cmpl	$0, %eax
1000079b8: 0f 85 05 00 00 00           	jne	0x1000079c3 <_pcc_evaluate_rule_macro+0x1d3>
1000079be: e9 70 07 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
1000079c3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000079c7: 48 8b 40 08                 	movq	8(%rax), %rax
1000079cb: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000079cf: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000079d3: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000079d7: 48 83 c2 30                 	addq	$48, %rdx
1000079db: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000079df: 48 8b 08                    	movq	(%rax), %rcx
1000079e2: 48 8d 35 97 11 00 00        	leaq	4503(%rip), %rsi        ## 0x100008b80 <_pcc_evaluate_rule_name>
1000079e9: e8 d2 a2 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000079ee: 83 f8 00                    	cmpl	$0, %eax
1000079f1: 0f 85 05 00 00 00           	jne	0x1000079fc <_pcc_evaluate_rule_macro+0x20c>
1000079f7: e9 37 07 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
1000079fc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007a00: 48 8b 40 08                 	movq	8(%rax), %rax
100007a04: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100007a08: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100007a0c: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007a10: 48 8b 40 18                 	movq	24(%rax), %rax
100007a14: 48 89 08                    	movq	%rcx, (%rax)
100007a17: 48 8b 4d d0                 	movq	-48(%rbp), %rcx
100007a1b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007a1f: 48 8b 40 18                 	movq	24(%rax), %rax
100007a23: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007a27: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007a2b: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007a2f: 48 83 c2 30                 	addq	$48, %rdx
100007a33: 48 8d 35 26 cc ff ff        	leaq	-13274(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007a3a: 31 c0                       	xorl	%eax, %eax
100007a3c: 89 c1                       	movl	%eax, %ecx
100007a3e: e8 7d a2 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007a43: 83 f8 00                    	cmpl	$0, %eax
100007a46: 0f 85 05 00 00 00           	jne	0x100007a51 <_pcc_evaluate_rule_macro+0x261>
100007a4c: e9 e2 06 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007a51: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007a55: be 01 00 00 00              	movl	$1, %esi
100007a5a: e8 31 b0 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007a5f: 48 83 f8 01                 	cmpq	$1, %rax
100007a63: 0f 82 1d 00 00 00           	jb	0x100007a86 <_pcc_evaluate_rule_macro+0x296>
100007a69: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007a6d: 48 8b 40 18                 	movq	24(%rax), %rax
100007a71: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007a75: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007a79: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007a7d: 83 f8 28                    	cmpl	$40, %eax
100007a80: 0f 84 05 00 00 00           	je	0x100007a8b <_pcc_evaluate_rule_macro+0x29b>
100007a86: e9 a8 06 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007a8b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007a8f: 48 8b 48 08                 	movq	8(%rax), %rcx
100007a93: 48 83 c1 01                 	addq	$1, %rcx
100007a97: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007a9b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007a9f: 48 8b 40 08                 	movq	8(%rax), %rax
100007aa3: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100007aa7: c7 45 bc 00 00 00 00        	movl	$0, -68(%rbp)
100007aae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007ab2: 48 8b 40 08                 	movq	8(%rax), %rax
100007ab6: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100007aba: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007abe: 48 8b 40 40                 	movq	64(%rax), %rax
100007ac2: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100007ac6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007aca: 48 8b 40 08                 	movq	8(%rax), %rax
100007ace: 48 89 45 a0                 	movq	%rax, -96(%rbp)
100007ad2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007ad6: be 01 00 00 00              	movl	$1, %esi
100007adb: e8 b0 af ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007ae0: 48 83 f8 01                 	cmpq	$1, %rax
100007ae4: 0f 82 1d 00 00 00           	jb	0x100007b07 <_pcc_evaluate_rule_macro+0x317>
100007aea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007aee: 48 8b 40 18                 	movq	24(%rax), %rax
100007af2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007af6: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007afa: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007afe: 83 f8 29                    	cmpl	$41, %eax
100007b01: 0f 84 05 00 00 00           	je	0x100007b0c <_pcc_evaluate_rule_macro+0x31c>
100007b07: e9 21 00 00 00              	jmp	0x100007b2d <_pcc_evaluate_rule_macro+0x33d>
100007b0c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b10: 48 8b 48 08                 	movq	8(%rax), %rcx
100007b14: 48 83 c1 01                 	addq	$1, %rcx
100007b18: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007b1c: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100007b20: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b24: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007b28: e9 59 00 00 00              	jmp	0x100007b86 <_pcc_evaluate_rule_macro+0x396>
100007b2d: 48 8b 4d a0                 	movq	-96(%rbp), %rcx
100007b31: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b35: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007b39: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007b3d: 48 8d 75 9c                 	leaq	-100(%rbp), %rsi
100007b41: e8 5a 13 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100007b46: 48 89 45 90                 	movq	%rax, -112(%rbp)
100007b4a: 48 83 7d 90 00              	cmpq	$0, -112(%rbp)
100007b4f: 0f 85 05 00 00 00           	jne	0x100007b5a <_pcc_evaluate_rule_macro+0x36a>
100007b55: e9 2c 00 00 00              	jmp	0x100007b86 <_pcc_evaluate_rule_macro+0x396>
100007b5a: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
100007b5e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b62: 48 03 48 08                 	addq	8(%rax), %rcx
100007b66: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007b6a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b6e: 48 8b 40 08                 	movq	8(%rax), %rax
100007b72: 48 3b 45 b0                 	cmpq	-80(%rbp), %rax
100007b76: 0f 85 05 00 00 00           	jne	0x100007b81 <_pcc_evaluate_rule_macro+0x391>
100007b7c: e9 40 00 00 00              	jmp	0x100007bc1 <_pcc_evaluate_rule_macro+0x3d1>
100007b81: e9 2d 00 00 00              	jmp	0x100007bb3 <_pcc_evaluate_rule_macro+0x3c3>
100007b86: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100007b8a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b8e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007b92: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007b96: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007b9d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007ba1: 48 83 c6 30                 	addq	$48, %rsi
100007ba5: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100007ba9: e8 82 ae ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007bae: e9 0e 00 00 00              	jmp	0x100007bc1 <_pcc_evaluate_rule_macro+0x3d1>
100007bb3: 8b 45 bc                    	movl	-68(%rbp), %eax
100007bb6: 83 c0 01                    	addl	$1, %eax
100007bb9: 89 45 bc                    	movl	%eax, -68(%rbp)
100007bbc: e9 ed fe ff ff              	jmp	0x100007aae <_pcc_evaluate_rule_macro+0x2be>
100007bc1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007bc5: 48 8b 40 08                 	movq	8(%rax), %rax
100007bc9: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100007bcd: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100007bd1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007bd5: 48 8b 40 18                 	movq	24(%rax), %rax
100007bd9: 48 89 48 18                 	movq	%rcx, 24(%rax)
100007bdd: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100007be1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007be5: 48 8b 40 18                 	movq	24(%rax), %rax
100007be9: 48 89 48 20                 	movq	%rcx, 32(%rax)
100007bed: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007bf1: be 01 00 00 00              	movl	$1, %esi
100007bf6: e8 95 ae ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007bfb: 48 83 f8 01                 	cmpq	$1, %rax
100007bff: 0f 82 1d 00 00 00           	jb	0x100007c22 <_pcc_evaluate_rule_macro+0x432>
100007c05: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007c09: 48 8b 40 18                 	movq	24(%rax), %rax
100007c0d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007c11: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007c15: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007c19: 83 f8 29                    	cmpl	$41, %eax
100007c1c: 0f 84 05 00 00 00           	je	0x100007c27 <_pcc_evaluate_rule_macro+0x437>
100007c22: e9 0c 05 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007c27: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007c2b: 48 8b 48 08                 	movq	8(%rax), %rcx
100007c2f: 48 83 c1 01                 	addq	$1, %rcx
100007c33: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007c37: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007c3b: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007c3f: 48 83 c2 30                 	addq	$48, %rdx
100007c43: 48 8d 35 16 ca ff ff        	leaq	-13802(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007c4a: 31 c0                       	xorl	%eax, %eax
100007c4c: 89 c1                       	movl	%eax, %ecx
100007c4e: e8 6d a0 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007c53: 83 f8 00                    	cmpl	$0, %eax
100007c56: 0f 85 05 00 00 00           	jne	0x100007c61 <_pcc_evaluate_rule_macro+0x471>
100007c5c: e9 d2 04 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007c61: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007c65: 48 8b 40 08                 	movq	8(%rax), %rax
100007c69: 48 89 45 88                 	movq	%rax, -120(%rbp)
100007c6d: c7 85 7c ff ff ff 00 00 00 00       	movl	$0, -132(%rbp)
100007c77: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007c7b: 48 8b 40 08                 	movq	8(%rax), %rax
100007c7f: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
100007c86: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007c8a: 48 8b 40 40                 	movq	64(%rax), %rax
100007c8e: 48 89 85 68 ff ff ff        	movq	%rax, -152(%rbp)
100007c95: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007c99: 48 8b 40 08                 	movq	8(%rax), %rax
100007c9d: 48 89 85 60 ff ff ff        	movq	%rax, -160(%rbp)
100007ca4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007ca8: be 03 00 00 00              	movl	$3, %esi
100007cad: e8 de ad ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007cb2: 48 83 f8 03                 	cmpq	$3, %rax
100007cb6: 0f 82 59 00 00 00           	jb	0x100007d15 <_pcc_evaluate_rule_macro+0x525>
100007cbc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007cc0: 48 8b 40 18                 	movq	24(%rax), %rax
100007cc4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007cc8: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007ccc: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007cd0: 83 f8 65                    	cmpl	$101, %eax
100007cd3: 0f 85 3c 00 00 00           	jne	0x100007d15 <_pcc_evaluate_rule_macro+0x525>
100007cd9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007cdd: 48 8b 40 18                 	movq	24(%rax), %rax
100007ce1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007ce5: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007ce9: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100007cee: 83 f8 6e                    	cmpl	$110, %eax
100007cf1: 0f 85 1e 00 00 00           	jne	0x100007d15 <_pcc_evaluate_rule_macro+0x525>
100007cf7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007cfb: 48 8b 40 18                 	movq	24(%rax), %rax
100007cff: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007d03: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007d07: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100007d0c: 83 f8 64                    	cmpl	$100, %eax
100007d0f: 0f 84 05 00 00 00           	je	0x100007d1a <_pcc_evaluate_rule_macro+0x52a>
100007d15: e9 24 00 00 00              	jmp	0x100007d3e <_pcc_evaluate_rule_macro+0x54e>
100007d1a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007d1e: 48 8b 48 08                 	movq	8(%rax), %rcx
100007d22: 48 83 c1 03                 	addq	$3, %rcx
100007d26: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007d2a: 48 8b 8d 60 ff ff ff        	movq	-160(%rbp), %rcx
100007d31: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007d35: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007d39: e9 bf 00 00 00              	jmp	0x100007dfd <_pcc_evaluate_rule_macro+0x60d>
100007d3e: 48 8b 8d 60 ff ff ff        	movq	-160(%rbp), %rcx
100007d45: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007d49: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007d4d: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007d51: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007d55: 48 83 c2 30                 	addq	$48, %rdx
100007d59: 48 8d 35 00 c9 ff ff        	leaq	-14080(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007d60: 31 c0                       	xorl	%eax, %eax
100007d62: 89 c1                       	movl	%eax, %ecx
100007d64: e8 57 9f ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007d69: 83 f8 00                    	cmpl	$0, %eax
100007d6c: 0f 85 05 00 00 00           	jne	0x100007d77 <_pcc_evaluate_rule_macro+0x587>
100007d72: e9 86 00 00 00              	jmp	0x100007dfd <_pcc_evaluate_rule_macro+0x60d>
100007d77: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007d7b: 48 8d b5 5c ff ff ff        	leaq	-164(%rbp), %rsi
100007d82: e8 19 11 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100007d87: 48 89 85 50 ff ff ff        	movq	%rax, -176(%rbp)
100007d8e: 48 83 bd 50 ff ff ff 00     	cmpq	$0, -176(%rbp)
100007d96: 0f 85 05 00 00 00           	jne	0x100007da1 <_pcc_evaluate_rule_macro+0x5b1>
100007d9c: e9 5c 00 00 00              	jmp	0x100007dfd <_pcc_evaluate_rule_macro+0x60d>
100007da1: 48 8b 8d 50 ff ff ff        	movq	-176(%rbp), %rcx
100007da8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007dac: 48 03 48 08                 	addq	8(%rax), %rcx
100007db0: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007db4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007db8: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007dbc: 48 83 c2 30                 	addq	$48, %rdx
100007dc0: 48 8d 35 99 c8 ff ff        	leaq	-14183(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007dc7: 31 c0                       	xorl	%eax, %eax
100007dc9: 89 c1                       	movl	%eax, %ecx
100007dcb: e8 f0 9e ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007dd0: 83 f8 00                    	cmpl	$0, %eax
100007dd3: 0f 85 05 00 00 00           	jne	0x100007dde <_pcc_evaluate_rule_macro+0x5ee>
100007dd9: e9 1f 00 00 00              	jmp	0x100007dfd <_pcc_evaluate_rule_macro+0x60d>
100007dde: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007de2: 48 8b 40 08                 	movq	8(%rax), %rax
100007de6: 48 3b 85 70 ff ff ff        	cmpq	-144(%rbp), %rax
100007ded: 0f 85 05 00 00 00           	jne	0x100007df8 <_pcc_evaluate_rule_macro+0x608>
100007df3: e9 4c 00 00 00              	jmp	0x100007e44 <_pcc_evaluate_rule_macro+0x654>
100007df8: e9 33 00 00 00              	jmp	0x100007e30 <_pcc_evaluate_rule_macro+0x640>
100007dfd: 48 8b 8d 70 ff ff ff        	movq	-144(%rbp), %rcx
100007e04: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007e08: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007e0c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007e10: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100007e17: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100007e1b: 48 83 c6 30                 	addq	$48, %rsi
100007e1f: 48 8b 95 68 ff ff ff        	movq	-152(%rbp), %rdx
100007e26: e8 05 ac ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100007e2b: e9 14 00 00 00              	jmp	0x100007e44 <_pcc_evaluate_rule_macro+0x654>
100007e30: 8b 85 7c ff ff ff           	movl	-132(%rbp), %eax
100007e36: 83 c0 01                    	addl	$1, %eax
100007e39: 89 85 7c ff ff ff           	movl	%eax, -132(%rbp)
100007e3f: e9 33 fe ff ff              	jmp	0x100007c77 <_pcc_evaluate_rule_macro+0x487>
100007e44: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007e48: 48 8b 40 08                 	movq	8(%rax), %rax
100007e4c: 48 89 45 80                 	movq	%rax, -128(%rbp)
100007e50: 48 8b 4d 88                 	movq	-120(%rbp), %rcx
100007e54: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007e58: 48 8b 40 18                 	movq	24(%rax), %rax
100007e5c: 48 89 48 30                 	movq	%rcx, 48(%rax)
100007e60: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
100007e64: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007e68: 48 8b 40 18                 	movq	24(%rax), %rax
100007e6c: 48 89 48 38                 	movq	%rcx, 56(%rax)
100007e70: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007e74: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007e78: 48 83 c2 30                 	addq	$48, %rdx
100007e7c: 48 8d 35 dd c7 ff ff        	leaq	-14371(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007e83: 31 c0                       	xorl	%eax, %eax
100007e85: 89 c1                       	movl	%eax, %ecx
100007e87: e8 34 9e ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007e8c: 83 f8 00                    	cmpl	$0, %eax
100007e8f: 0f 85 05 00 00 00           	jne	0x100007e9a <_pcc_evaluate_rule_macro+0x6aa>
100007e95: e9 99 02 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007e9a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007e9e: be 03 00 00 00              	movl	$3, %esi
100007ea3: e8 e8 ab ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007ea8: 48 83 f8 03                 	cmpq	$3, %rax
100007eac: 0f 82 59 00 00 00           	jb	0x100007f0b <_pcc_evaluate_rule_macro+0x71b>
100007eb2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007eb6: 48 8b 40 18                 	movq	24(%rax), %rax
100007eba: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007ebe: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007ec2: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007ec6: 83 f8 65                    	cmpl	$101, %eax
100007ec9: 0f 85 3c 00 00 00           	jne	0x100007f0b <_pcc_evaluate_rule_macro+0x71b>
100007ecf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007ed3: 48 8b 40 18                 	movq	24(%rax), %rax
100007ed7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007edb: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007edf: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100007ee4: 83 f8 6e                    	cmpl	$110, %eax
100007ee7: 0f 85 1e 00 00 00           	jne	0x100007f0b <_pcc_evaluate_rule_macro+0x71b>
100007eed: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007ef1: 48 8b 40 18                 	movq	24(%rax), %rax
100007ef5: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007ef9: 48 8b 49 08                 	movq	8(%rcx), %rcx
100007efd: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
100007f02: 83 f8 64                    	cmpl	$100, %eax
100007f05: 0f 84 05 00 00 00           	je	0x100007f10 <_pcc_evaluate_rule_macro+0x720>
100007f0b: e9 23 02 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007f10: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007f14: 48 8b 48 08                 	movq	8(%rax), %rcx
100007f18: 48 83 c1 03                 	addq	$3, %rcx
100007f1c: 48 89 48 08                 	movq	%rcx, 8(%rax)
100007f20: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007f24: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100007f28: 48 83 c2 30                 	addq	$48, %rdx
100007f2c: 48 8d 35 2d c7 ff ff        	leaq	-14547(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100007f33: 31 c0                       	xorl	%eax, %eax
100007f35: 89 c1                       	movl	%eax, %ecx
100007f37: e8 84 9d ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100007f3c: 83 f8 00                    	cmpl	$0, %eax
100007f3f: 0f 85 05 00 00 00           	jne	0x100007f4a <_pcc_evaluate_rule_macro+0x75a>
100007f45: e9 e9 01 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007f4a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100007f4e: 48 8b 40 18                 	movq	24(%rax), %rax
100007f52: 48 8b 40 08                 	movq	8(%rax), %rax
100007f56: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100007f5a: 48 8b 49 18                 	movq	24(%rcx), %rcx
100007f5e: 48 2b 01                    	subq	(%rcx), %rax
100007f61: 48 89 85 48 ff ff ff        	movq	%rax, -184(%rbp)
100007f68: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100007f6c: 48 8b b5 48 ff ff ff        	movq	-184(%rbp), %rsi
100007f73: e8 18 ab ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100007f78: 48 3b 85 48 ff ff ff        	cmpq	-184(%rbp), %rax
100007f7f: 0f 83 05 00 00 00           	jae	0x100007f8a <_pcc_evaluate_rule_macro+0x79a>
100007f85: e9 a9 01 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100007f8a: 48 83 bd 48 ff ff ff 00     	cmpq	$0, -184(%rbp)
100007f92: 0f 86 b0 00 00 00           	jbe	0x100008048 <_pcc_evaluate_rule_macro+0x858>
100007f98: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007f9c: 48 8b 40 18                 	movq	24(%rax), %rax
100007fa0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100007fa4: 48 03 41 08                 	addq	8(%rcx), %rax
100007fa8: 48 89 85 40 ff ff ff        	movq	%rax, -192(%rbp)
100007faf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100007fb3: 48 8b 40 18                 	movq	24(%rax), %rax
100007fb7: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100007fbb: 48 8b 49 18                 	movq	24(%rcx), %rcx
100007fbf: 48 03 01                    	addq	(%rcx), %rax
100007fc2: 48 89 85 38 ff ff ff        	movq	%rax, -200(%rbp)
100007fc9: 48 c7 85 30 ff ff ff 00 00 00 00    	movq	$0, -208(%rbp)
100007fd4: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100007fdb: 48 3b 85 48 ff ff ff        	cmpq	-184(%rbp), %rax
100007fe2: 0f 83 4d 00 00 00           	jae	0x100008035 <_pcc_evaluate_rule_macro+0x845>
100007fe8: 48 8b 85 40 ff ff ff        	movq	-192(%rbp), %rax
100007fef: 48 8b 8d 30 ff ff ff        	movq	-208(%rbp), %rcx
100007ff6: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100007ffa: 48 8b 8d 38 ff ff ff        	movq	-200(%rbp), %rcx
100008001: 48 8b 95 30 ff ff ff        	movq	-208(%rbp), %rdx
100008008: 0f be 0c 11                 	movsbl	(%rcx,%rdx), %ecx
10000800c: 39 c8                       	cmpl	%ecx, %eax
10000800e: 0f 84 05 00 00 00           	je	0x100008019 <_pcc_evaluate_rule_macro+0x829>
100008014: e9 1a 01 00 00              	jmp	0x100008133 <_pcc_evaluate_rule_macro+0x943>
100008019: e9 00 00 00 00              	jmp	0x10000801e <_pcc_evaluate_rule_macro+0x82e>
10000801e: 48 8b 85 30 ff ff ff        	movq	-208(%rbp), %rax
100008025: 48 83 c0 01                 	addq	$1, %rax
100008029: 48 89 85 30 ff ff ff        	movq	%rax, -208(%rbp)
100008030: e9 9f ff ff ff              	jmp	0x100007fd4 <_pcc_evaluate_rule_macro+0x7e4>
100008035: 48 8b 8d 48 ff ff ff        	movq	-184(%rbp), %rcx
10000803c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008040: 48 03 48 08                 	addq	8(%rax), %rcx
100008044: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008048: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000804c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008053: 48 8d 35 06 38 00 00        	leaq	14342(%rip), %rsi       ## 0x10000b860 <_pcc_action_macro_1>
10000805a: ba 01 00 00 00              	movl	$1, %edx
10000805f: b9 03 00 00 00              	movl	$3, %ecx
100008064: e8 47 0d 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100008069: 48 89 85 28 ff ff ff        	movq	%rax, -216(%rbp)
100008070: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008074: 48 8b 08                    	movq	(%rax), %rcx
100008077: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
10000807e: 48 8b 40 08                 	movq	8(%rax), %rax
100008082: 48 89 08                    	movq	%rcx, (%rax)
100008085: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008089: 48 8b 48 18                 	movq	24(%rax), %rcx
10000808d: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
100008094: 48 8b 40 20                 	movq	32(%rax), %rax
100008098: 48 89 08                    	movq	%rcx, (%rax)
10000809b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000809f: 48 8b 48 18                 	movq	24(%rax), %rcx
1000080a3: 48 83 c1 18                 	addq	$24, %rcx
1000080a7: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
1000080ae: 48 8b 40 20                 	movq	32(%rax), %rax
1000080b2: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000080b6: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000080ba: 48 8b 48 18                 	movq	24(%rax), %rcx
1000080be: 48 83 c1 30                 	addq	$48, %rcx
1000080c2: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
1000080c9: 48 8b 40 20                 	movq	32(%rax), %rax
1000080cd: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000080d1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000080d5: 48 8b 48 48                 	movq	72(%rax), %rcx
1000080d9: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
1000080e0: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000080e4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000080e8: 48 8b 48 08                 	movq	8(%rax), %rcx
1000080ec: 48 8b 85 28 ff ff ff        	movq	-216(%rbp), %rax
1000080f3: 48 89 48 40                 	movq	%rcx, 64(%rax)
1000080f7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000080fb: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008102: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008106: 48 83 c6 30                 	addq	$48, %rsi
10000810a: 48 8b 95 28 ff ff ff        	movq	-216(%rbp), %rdx
100008111: e8 0a b8 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100008116: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000811a: 48 8b 48 10                 	movq	16(%rax), %rcx
10000811e: 48 83 c1 ff                 	addq	$-1, %rcx
100008122: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008126: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000812a: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000812e: e9 25 00 00 00              	jmp	0x100008158 <_pcc_evaluate_rule_macro+0x968>
100008133: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008137: 48 8b 48 10                 	movq	16(%rax), %rcx
10000813b: 48 83 c1 ff                 	addq	$-1, %rcx
10000813f: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008143: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008147: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000814b: e8 40 b7 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100008150: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008158: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000815c: 48 81 c4 e0 00 00 00        	addq	$224, %rsp
100008163: 5d                          	popq	%rbp
100008164: c3                          	retq
100008165: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100008170 <_pcc_value_table__init>:
100008170: 55                          	pushq	%rbp
100008171: 48 89 e5                    	movq	%rsp, %rbp
100008174: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008178: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000817c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008180: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100008188: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000818c: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100008194: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008198: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000819f: 5d                          	popq	%rbp
1000081a0: c3                          	retq
1000081a1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000081b0 <_pcc_capture_table__init>:
1000081b0: 55                          	pushq	%rbp
1000081b1: 48 89 e5                    	movq	%rsp, %rbp
1000081b4: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000081b8: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000081bc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000081c0: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
1000081c8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000081cc: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
1000081d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000081d8: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
1000081df: 5d                          	popq	%rbp
1000081e0: c3                          	retq
1000081e1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000081f0 <_pcc_evaluate_rule_defcall>:
1000081f0: 55                          	pushq	%rbp
1000081f1: 48 89 e5                    	movq	%rsp, %rbp
1000081f4: 48 83 ec 20                 	subq	$32, %rsp
1000081f8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000081fc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008200: e8 cb c3 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100008205: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008209: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000820d: 48 8b 48 08                 	movq	8(%rax), %rcx
100008211: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008215: 48 89 48 48                 	movq	%rcx, 72(%rax)
100008219: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000821d: 48 8b 48 10                 	movq	16(%rax), %rcx
100008221: 48 83 c1 01                 	addq	$1, %rcx
100008225: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008229: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000822d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008234: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008238: ba 01 00 00 00              	movl	$1, %edx
10000823d: e8 1e 08 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
100008242: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008246: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000824d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008251: e8 ea 08 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
100008256: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000825a: be 01 00 00 00              	movl	$1, %esi
10000825f: e8 2c a8 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008264: 48 83 f8 01                 	cmpq	$1, %rax
100008268: 0f 82 1d 00 00 00           	jb	0x10000828b <_pcc_evaluate_rule_defcall+0x9b>
10000826e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008272: 48 8b 40 18                 	movq	24(%rax), %rax
100008276: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000827a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000827e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100008282: 83 f8 21                    	cmpl	$33, %eax
100008285: 0f 84 05 00 00 00           	je	0x100008290 <_pcc_evaluate_rule_defcall+0xa0>
10000828b: e9 cc 00 00 00              	jmp	0x10000835c <_pcc_evaluate_rule_defcall+0x16c>
100008290: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008294: 48 8b 48 08                 	movq	8(%rax), %rcx
100008298: 48 83 c1 01                 	addq	$1, %rcx
10000829c: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000082a0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000082a4: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000082a8: 48 83 c2 30                 	addq	$48, %rdx
1000082ac: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000082b0: 48 8b 08                    	movq	(%rax), %rcx
1000082b3: 48 8d 35 c6 08 00 00        	leaq	2246(%rip), %rsi        ## 0x100008b80 <_pcc_evaluate_rule_name>
1000082ba: e8 01 9a ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000082bf: 83 f8 00                    	cmpl	$0, %eax
1000082c2: 0f 85 05 00 00 00           	jne	0x1000082cd <_pcc_evaluate_rule_defcall+0xdd>
1000082c8: e9 8f 00 00 00              	jmp	0x10000835c <_pcc_evaluate_rule_defcall+0x16c>
1000082cd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000082d1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000082d8: 48 8d 35 91 0b 00 00        	leaq	2961(%rip), %rsi        ## 0x100008e70 <_pcc_action_defcall_0>
1000082df: ba 01 00 00 00              	movl	$1, %edx
1000082e4: 31 c0                       	xorl	%eax, %eax
1000082e6: 89 c1                       	movl	%eax, %ecx
1000082e8: e8 c3 0a 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000082ed: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000082f1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000082f5: 48 8b 08                    	movq	(%rax), %rcx
1000082f8: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000082fc: 48 8b 40 08                 	movq	8(%rax), %rax
100008300: 48 89 08                    	movq	%rcx, (%rax)
100008303: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008307: 48 8b 48 48                 	movq	72(%rax), %rcx
10000830b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000830f: 48 89 48 38                 	movq	%rcx, 56(%rax)
100008313: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008317: 48 8b 48 08                 	movq	8(%rax), %rcx
10000831b: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000831f: 48 89 48 40                 	movq	%rcx, 64(%rax)
100008323: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008327: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000832e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008332: 48 83 c6 30                 	addq	$48, %rsi
100008336: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
10000833a: e8 e1 b5 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000833f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008343: 48 8b 48 10                 	movq	16(%rax), %rcx
100008347: 48 83 c1 ff                 	addq	$-1, %rcx
10000834b: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000834f: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008353: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100008357: e9 25 00 00 00              	jmp	0x100008381 <_pcc_evaluate_rule_defcall+0x191>
10000835c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008360: 48 8b 48 10                 	movq	16(%rax), %rcx
100008364: 48 83 c1 ff                 	addq	$-1, %rcx
100008368: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000836c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008370: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008374: e8 17 b5 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100008379: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008381: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008385: 48 83 c4 20                 	addq	$32, %rsp
100008389: 5d                          	popq	%rbp
10000838a: c3                          	retq
10000838b: 0f 1f 44 00 00              	nopl	(%rax,%rax)

0000000100008390 <_pcc_evaluate_rule_addr>:
100008390: 55                          	pushq	%rbp
100008391: 48 89 e5                    	movq	%rsp, %rbp
100008394: 48 83 ec 40                 	subq	$64, %rsp
100008398: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000839c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000083a0: e8 2b c2 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
1000083a5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000083a9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000083ad: 48 8b 48 08                 	movq	8(%rax), %rcx
1000083b1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000083b5: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000083b9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000083bd: 48 8b 48 10                 	movq	16(%rax), %rcx
1000083c1: 48 83 c1 01                 	addq	$1, %rcx
1000083c5: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000083c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000083cd: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000083d4: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000083d8: ba 01 00 00 00              	movl	$1, %edx
1000083dd: e8 7e 06 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
1000083e2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000083e6: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000083ed: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000083f1: e8 4a 07 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
1000083f6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000083fa: 48 8b 40 08                 	movq	8(%rax), %rax
1000083fe: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008402: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008406: 48 8b 40 40                 	movq	64(%rax), %rax
10000840a: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000840e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008412: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100008416: 48 83 c2 30                 	addq	$48, %rdx
10000841a: 48 8d 35 cf fd ff ff        	leaq	-561(%rip), %rsi        ## 0x1000081f0 <_pcc_evaluate_rule_defcall>
100008421: 31 c0                       	xorl	%eax, %eax
100008423: 89 c1                       	movl	%eax, %ecx
100008425: e8 96 98 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000842a: 83 f8 00                    	cmpl	$0, %eax
10000842d: 0f 85 05 00 00 00           	jne	0x100008438 <_pcc_evaluate_rule_addr+0xa8>
100008433: e9 05 00 00 00              	jmp	0x10000843d <_pcc_evaluate_rule_addr+0xad>
100008438: e9 59 02 00 00              	jmp	0x100008696 <_pcc_evaluate_rule_addr+0x306>
10000843d: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100008441: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008445: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008449: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000844d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008454: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008458: 48 83 c6 30                 	addq	$48, %rsi
10000845c: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100008460: e8 cb a5 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100008465: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008469: be 01 00 00 00              	movl	$1, %esi
10000846e: e8 1d a6 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008473: 48 83 f8 01                 	cmpq	$1, %rax
100008477: 0f 82 1d 00 00 00           	jb	0x10000849a <_pcc_evaluate_rule_addr+0x10a>
10000847d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008481: 48 8b 40 18                 	movq	24(%rax), %rax
100008485: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008489: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000848d: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100008491: 83 f8 72                    	cmpl	$114, %eax
100008494: 0f 84 05 00 00 00           	je	0x10000849f <_pcc_evaluate_rule_addr+0x10f>
10000849a: e9 b4 00 00 00              	jmp	0x100008553 <_pcc_evaluate_rule_addr+0x1c3>
10000849f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000084a3: 48 8b 48 08                 	movq	8(%rax), %rcx
1000084a7: 48 83 c1 01                 	addq	$1, %rcx
1000084ab: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000084af: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000084b3: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000084b7: 48 83 c2 30                 	addq	$48, %rdx
1000084bb: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000084bf: 48 8b 08                    	movq	(%rax), %rcx
1000084c2: 48 8d 35 07 12 00 00        	leaq	4615(%rip), %rsi        ## 0x1000096d0 <_pcc_evaluate_rule_reg_code>
1000084c9: e8 f2 97 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000084ce: 83 f8 00                    	cmpl	$0, %eax
1000084d1: 0f 85 05 00 00 00           	jne	0x1000084dc <_pcc_evaluate_rule_addr+0x14c>
1000084d7: e9 77 00 00 00              	jmp	0x100008553 <_pcc_evaluate_rule_addr+0x1c3>
1000084dc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000084e0: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000084e7: 48 8d 35 12 13 00 00        	leaq	4882(%rip), %rsi        ## 0x100009800 <_pcc_action_addr_0>
1000084ee: ba 01 00 00 00              	movl	$1, %edx
1000084f3: 31 c0                       	xorl	%eax, %eax
1000084f5: 89 c1                       	movl	%eax, %ecx
1000084f7: e8 b4 08 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000084fc: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100008500: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008504: 48 8b 08                    	movq	(%rax), %rcx
100008507: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000850b: 48 8b 40 08                 	movq	8(%rax), %rax
10000850f: 48 89 08                    	movq	%rcx, (%rax)
100008512: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008516: 48 8b 48 48                 	movq	72(%rax), %rcx
10000851a: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000851e: 48 89 48 38                 	movq	%rcx, 56(%rax)
100008522: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008526: 48 8b 48 08                 	movq	8(%rax), %rcx
10000852a: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000852e: 48 89 48 40                 	movq	%rcx, 64(%rax)
100008532: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008536: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000853d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008541: 48 83 c6 30                 	addq	$48, %rsi
100008545: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100008549: e8 d2 b3 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000854e: e9 43 01 00 00              	jmp	0x100008696 <_pcc_evaluate_rule_addr+0x306>
100008553: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100008557: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000855b: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000855f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008563: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000856a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000856e: 48 83 c6 30                 	addq	$48, %rsi
100008572: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100008576: e8 b5 a4 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000857b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000857f: be 01 00 00 00              	movl	$1, %esi
100008584: e8 07 a5 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008589: 48 83 f8 01                 	cmpq	$1, %rax
10000858d: 0f 82 1d 00 00 00           	jb	0x1000085b0 <_pcc_evaluate_rule_addr+0x220>
100008593: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008597: 48 8b 40 18                 	movq	24(%rax), %rax
10000859b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000859f: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000085a3: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
1000085a7: 83 f8 6d                    	cmpl	$109, %eax
1000085aa: 0f 84 05 00 00 00           	je	0x1000085b5 <_pcc_evaluate_rule_addr+0x225>
1000085b0: e9 b4 00 00 00              	jmp	0x100008669 <_pcc_evaluate_rule_addr+0x2d9>
1000085b5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000085b9: 48 8b 48 08                 	movq	8(%rax), %rcx
1000085bd: 48 83 c1 01                 	addq	$1, %rcx
1000085c1: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000085c5: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000085c9: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000085cd: 48 83 c2 30                 	addq	$48, %rdx
1000085d1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000085d5: 48 8b 08                    	movq	(%rax), %rcx
1000085d8: 48 8d 35 f1 10 00 00        	leaq	4337(%rip), %rsi        ## 0x1000096d0 <_pcc_evaluate_rule_reg_code>
1000085df: e8 dc 96 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000085e4: 83 f8 00                    	cmpl	$0, %eax
1000085e7: 0f 85 05 00 00 00           	jne	0x1000085f2 <_pcc_evaluate_rule_addr+0x262>
1000085ed: e9 77 00 00 00              	jmp	0x100008669 <_pcc_evaluate_rule_addr+0x2d9>
1000085f2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000085f6: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000085fd: 48 8d 35 3c 12 00 00        	leaq	4668(%rip), %rsi        ## 0x100009840 <_pcc_action_addr_1>
100008604: ba 01 00 00 00              	movl	$1, %edx
100008609: 31 c0                       	xorl	%eax, %eax
10000860b: 89 c1                       	movl	%eax, %ecx
10000860d: e8 9e 07 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100008612: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100008616: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000861a: 48 8b 08                    	movq	(%rax), %rcx
10000861d: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100008621: 48 8b 40 08                 	movq	8(%rax), %rax
100008625: 48 89 08                    	movq	%rcx, (%rax)
100008628: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000862c: 48 8b 48 48                 	movq	72(%rax), %rcx
100008630: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100008634: 48 89 48 38                 	movq	%rcx, 56(%rax)
100008638: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000863c: 48 8b 48 08                 	movq	8(%rax), %rcx
100008640: 48 8b 45 c8                 	movq	-56(%rbp), %rax
100008644: 48 89 48 40                 	movq	%rcx, 64(%rax)
100008648: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000864c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008653: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008657: 48 83 c6 30                 	addq	$48, %rsi
10000865b: 48 8b 55 c8                 	movq	-56(%rbp), %rdx
10000865f: e8 bc b2 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100008664: e9 2d 00 00 00              	jmp	0x100008696 <_pcc_evaluate_rule_addr+0x306>
100008669: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000866d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008671: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008675: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008679: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008680: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008684: 48 83 c6 30                 	addq	$48, %rsi
100008688: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000868c: e8 9f a3 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100008691: e9 1d 00 00 00              	jmp	0x1000086b3 <_pcc_evaluate_rule_addr+0x323>
100008696: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000869a: 48 8b 48 10                 	movq	16(%rax), %rcx
10000869e: 48 83 c1 ff                 	addq	$-1, %rcx
1000086a2: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000086a6: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000086aa: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000086ae: e9 25 00 00 00              	jmp	0x1000086d8 <_pcc_evaluate_rule_addr+0x348>
1000086b3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000086b7: 48 8b 48 10                 	movq	16(%rax), %rcx
1000086bb: 48 83 c1 ff                 	addq	$-1, %rcx
1000086bf: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000086c3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000086c7: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000086cb: e8 c0 b1 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
1000086d0: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000086d8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000086dc: 48 83 c4 40                 	addq	$64, %rsp
1000086e0: 5d                          	popq	%rbp
1000086e1: c3                          	retq
1000086e2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000086f0 <_pcc_evaluate_rule_consts>:
1000086f0: 55                          	pushq	%rbp
1000086f1: 48 89 e5                    	movq	%rsp, %rbp
1000086f4: 48 83 ec 30                 	subq	$48, %rsp
1000086f8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000086fc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008700: e8 cb be ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100008705: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008709: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000870d: 48 8b 48 08                 	movq	8(%rax), %rcx
100008711: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008715: 48 89 48 48                 	movq	%rcx, 72(%rax)
100008719: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000871d: 48 8b 48 10                 	movq	16(%rax), %rcx
100008721: 48 83 c1 01                 	addq	$1, %rcx
100008725: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008729: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000872d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008734: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008738: ba 01 00 00 00              	movl	$1, %edx
10000873d: e8 1e 03 00 00              	callq	0x100008a60 <_pcc_value_table__resize>
100008742: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008746: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000874d: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008751: e8 ea 03 00 00              	callq	0x100008b40 <_pcc_value_table__clear>
100008756: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000875a: 48 8b 40 08                 	movq	8(%rax), %rax
10000875e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008762: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008766: 48 8b 40 40                 	movq	64(%rax), %rax
10000876a: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000876e: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008772: be 01 00 00 00              	movl	$1, %esi
100008777: e8 14 a3 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000877c: 48 83 f8 01                 	cmpq	$1, %rax
100008780: 0f 82 1d 00 00 00           	jb	0x1000087a3 <_pcc_evaluate_rule_consts+0xb3>
100008786: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000878a: 48 8b 40 18                 	movq	24(%rax), %rax
10000878e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008792: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008796: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000879a: 83 f8 24                    	cmpl	$36, %eax
10000879d: 0f 84 05 00 00 00           	je	0x1000087a8 <_pcc_evaluate_rule_consts+0xb8>
1000087a3: e9 42 00 00 00              	jmp	0x1000087ea <_pcc_evaluate_rule_consts+0xfa>
1000087a8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000087ac: 48 8b 48 08                 	movq	8(%rax), %rcx
1000087b0: 48 83 c1 01                 	addq	$1, %rcx
1000087b4: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000087b8: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000087bc: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000087c0: 48 83 c2 30                 	addq	$48, %rdx
1000087c4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000087c8: 48 8b 08                    	movq	(%rax), %rcx
1000087cb: 48 8d 35 1e 11 00 00        	leaq	4382(%rip), %rsi        ## 0x1000098f0 <_pcc_evaluate_rule_const>
1000087d2: e8 e9 94 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
1000087d7: 83 f8 00                    	cmpl	$0, %eax
1000087da: 0f 85 05 00 00 00           	jne	0x1000087e5 <_pcc_evaluate_rule_consts+0xf5>
1000087e0: e9 05 00 00 00              	jmp	0x1000087ea <_pcc_evaluate_rule_consts+0xfa>
1000087e5: e9 b1 01 00 00              	jmp	0x10000899b <_pcc_evaluate_rule_consts+0x2ab>
1000087ea: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000087ee: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000087f2: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000087f6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000087fa: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008801: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008805: 48 83 c6 30                 	addq	$48, %rsi
100008809: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000880d: e8 1e a2 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100008812: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008816: be 06 00 00 00              	movl	$6, %esi
10000881b: e8 70 a2 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008820: 48 83 f8 06                 	cmpq	$6, %rax
100008824: 0f 82 b3 00 00 00           	jb	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
10000882a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000882e: 48 8b 40 18                 	movq	24(%rax), %rax
100008832: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008836: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000883a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000883e: 83 f8 63                    	cmpl	$99, %eax
100008841: 0f 85 96 00 00 00           	jne	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
100008847: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000884b: 48 8b 40 18                 	movq	24(%rax), %rax
10000884f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008853: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008857: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000885c: 83 f8 6f                    	cmpl	$111, %eax
10000885f: 0f 85 78 00 00 00           	jne	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
100008865: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008869: 48 8b 40 18                 	movq	24(%rax), %rax
10000886d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008871: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008875: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000887a: 83 f8 6e                    	cmpl	$110, %eax
10000887d: 0f 85 5a 00 00 00           	jne	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
100008883: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008887: 48 8b 40 18                 	movq	24(%rax), %rax
10000888b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000888f: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008893: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
100008898: 83 f8 73                    	cmpl	$115, %eax
10000889b: 0f 85 3c 00 00 00           	jne	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
1000088a1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000088a5: 48 8b 40 18                 	movq	24(%rax), %rax
1000088a9: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000088ad: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000088b1: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
1000088b6: 83 f8 74                    	cmpl	$116, %eax
1000088b9: 0f 85 1e 00 00 00           	jne	0x1000088dd <_pcc_evaluate_rule_consts+0x1ed>
1000088bf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000088c3: 48 8b 40 18                 	movq	24(%rax), %rax
1000088c7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000088cb: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000088cf: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
1000088d4: 83 f8 28                    	cmpl	$40, %eax
1000088d7: 0f 84 05 00 00 00           	je	0x1000088e2 <_pcc_evaluate_rule_consts+0x1f2>
1000088dd: e9 8c 00 00 00              	jmp	0x10000896e <_pcc_evaluate_rule_consts+0x27e>
1000088e2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000088e6: 48 8b 48 08                 	movq	8(%rax), %rcx
1000088ea: 48 83 c1 06                 	addq	$6, %rcx
1000088ee: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000088f2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000088f6: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
1000088fa: 48 83 c2 30                 	addq	$48, %rdx
1000088fe: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008902: 48 8b 08                    	movq	(%rax), %rcx
100008905: 48 8d 35 e4 0f 00 00        	leaq	4068(%rip), %rsi        ## 0x1000098f0 <_pcc_evaluate_rule_const>
10000890c: e8 af 93 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100008911: 83 f8 00                    	cmpl	$0, %eax
100008914: 0f 85 05 00 00 00           	jne	0x10000891f <_pcc_evaluate_rule_consts+0x22f>
10000891a: e9 4f 00 00 00              	jmp	0x10000896e <_pcc_evaluate_rule_consts+0x27e>
10000891f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008923: be 01 00 00 00              	movl	$1, %esi
100008928: e8 63 a1 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000892d: 48 83 f8 01                 	cmpq	$1, %rax
100008931: 0f 82 1d 00 00 00           	jb	0x100008954 <_pcc_evaluate_rule_consts+0x264>
100008937: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000893b: 48 8b 40 18                 	movq	24(%rax), %rax
10000893f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008943: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008947: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000894b: 83 f8 29                    	cmpl	$41, %eax
10000894e: 0f 84 05 00 00 00           	je	0x100008959 <_pcc_evaluate_rule_consts+0x269>
100008954: e9 15 00 00 00              	jmp	0x10000896e <_pcc_evaluate_rule_consts+0x27e>
100008959: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000895d: 48 8b 48 08                 	movq	8(%rax), %rcx
100008961: 48 83 c1 01                 	addq	$1, %rcx
100008965: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008969: e9 2d 00 00 00              	jmp	0x10000899b <_pcc_evaluate_rule_consts+0x2ab>
10000896e: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100008972: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008976: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000897a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000897e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008985: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008989: 48 83 c6 30                 	addq	$48, %rsi
10000898d: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100008991: e8 9a a0 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100008996: e9 8f 00 00 00              	jmp	0x100008a2a <_pcc_evaluate_rule_consts+0x33a>
10000899b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000899f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000089a6: 48 8d 35 c3 10 00 00        	leaq	4291(%rip), %rsi        ## 0x100009a70 <_pcc_action_consts_0>
1000089ad: ba 01 00 00 00              	movl	$1, %edx
1000089b2: 31 c0                       	xorl	%eax, %eax
1000089b4: 89 c1                       	movl	%eax, %ecx
1000089b6: e8 f5 03 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
1000089bb: 48 89 45 d0                 	movq	%rax, -48(%rbp)
1000089bf: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000089c3: 48 8b 08                    	movq	(%rax), %rcx
1000089c6: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000089ca: 48 8b 40 08                 	movq	8(%rax), %rax
1000089ce: 48 89 08                    	movq	%rcx, (%rax)
1000089d1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000089d5: 48 8b 48 48                 	movq	72(%rax), %rcx
1000089d9: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000089dd: 48 89 48 38                 	movq	%rcx, 56(%rax)
1000089e1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000089e5: 48 8b 48 08                 	movq	8(%rax), %rcx
1000089e9: 48 8b 45 d0                 	movq	-48(%rbp), %rax
1000089ed: 48 89 48 40                 	movq	%rcx, 64(%rax)
1000089f1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000089f5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000089fc: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008a00: 48 83 c6 30                 	addq	$48, %rsi
100008a04: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100008a08: e8 13 af ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100008a0d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008a11: 48 8b 48 10                 	movq	16(%rax), %rcx
100008a15: 48 83 c1 ff                 	addq	$-1, %rcx
100008a19: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008a1d: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008a21: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100008a25: e9 25 00 00 00              	jmp	0x100008a4f <_pcc_evaluate_rule_consts+0x35f>
100008a2a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008a2e: 48 8b 48 10                 	movq	16(%rax), %rcx
100008a32: 48 83 c1 ff                 	addq	$-1, %rcx
100008a36: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008a3a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008a3e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008a42: e8 49 ae ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100008a47: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008a4f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008a53: 48 83 c4 30                 	addq	$48, %rsp
100008a57: 5d                          	popq	%rbp
100008a58: c3                          	retq
100008a59: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008a60 <_pcc_value_table__resize>:
100008a60: 55                          	pushq	%rbp
100008a61: 48 89 e5                    	movq	%rsp, %rbp
100008a64: 48 83 ec 30                 	subq	$48, %rsp
100008a68: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008a6c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008a70: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008a74: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008a78: 48 8b 40 08                 	movq	8(%rax), %rax
100008a7c: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100008a80: 0f 83 a0 00 00 00           	jae	0x100008b26 <_pcc_value_table__resize+0xc6>
100008a86: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008a8a: 48 8b 40 08                 	movq	8(%rax), %rax
100008a8e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008a92: 48 83 7d e0 00              	cmpq	$0, -32(%rbp)
100008a97: 0f 85 08 00 00 00           	jne	0x100008aa5 <_pcc_value_table__resize+0x45>
100008a9d: 48 c7 45 e0 02 00 00 00     	movq	$2, -32(%rbp)
100008aa5: e9 00 00 00 00              	jmp	0x100008aaa <_pcc_value_table__resize+0x4a>
100008aaa: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100008aae: 31 c0                       	xorl	%eax, %eax
100008ab0: 48 3b 4d e8                 	cmpq	-24(%rbp), %rcx
100008ab4: 88 45 df                    	movb	%al, -33(%rbp)
100008ab7: 0f 83 0b 00 00 00           	jae	0x100008ac8 <_pcc_value_table__resize+0x68>
100008abd: 48 83 7d e0 00              	cmpq	$0, -32(%rbp)
100008ac2: 0f 95 c0                    	setne	%al
100008ac5: 88 45 df                    	movb	%al, -33(%rbp)
100008ac8: 8a 45 df                    	movb	-33(%rbp), %al
100008acb: a8 01                       	testb	$1, %al
100008acd: 0f 85 05 00 00 00           	jne	0x100008ad8 <_pcc_value_table__resize+0x78>
100008ad3: e9 11 00 00 00              	jmp	0x100008ae9 <_pcc_value_table__resize+0x89>
100008ad8: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100008adc: 48 c1 e0 01                 	shlq	$1, %rax
100008ae0: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008ae4: e9 c1 ff ff ff              	jmp	0x100008aaa <_pcc_value_table__resize+0x4a>
100008ae9: 48 83 7d e0 00              	cmpq	$0, -32(%rbp)
100008aee: 0f 85 08 00 00 00           	jne	0x100008afc <_pcc_value_table__resize+0x9c>
100008af4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008af8: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100008afc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b00: 48 8b 38                    	movq	(%rax), %rdi
100008b03: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
100008b07: 48 c1 e6 03                 	shlq	$3, %rsi
100008b0b: e8 d0 b3 ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
100008b10: 48 89 c1                    	movq	%rax, %rcx
100008b13: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b17: 48 89 08                    	movq	%rcx, (%rax)
100008b1a: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100008b1e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b22: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008b26: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100008b2a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b2e: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008b32: 48 83 c4 30                 	addq	$48, %rsp
100008b36: 5d                          	popq	%rbp
100008b37: c3                          	retq
100008b38: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100008b40 <_pcc_value_table__clear>:
100008b40: 55                          	pushq	%rbp
100008b41: 48 89 e5                    	movq	%rsp, %rbp
100008b44: 48 83 ec 10                 	subq	$16, %rsp
100008b48: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008b4c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008b50: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b54: 48 8b 38                    	movq	(%rax), %rdi
100008b57: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b5b: 48 8b 50 10                 	movq	16(%rax), %rdx
100008b5f: 48 c1 e2 03                 	shlq	$3, %rdx
100008b63: 31 f6                       	xorl	%esi, %esi
100008b65: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
100008b6c: e8 a6 30 00 00              	callq	0x10000bc17 <_strnlen+0x10000bc17>
100008b71: 48 83 c4 10                 	addq	$16, %rsp
100008b75: 5d                          	popq	%rbp
100008b76: c3                          	retq
100008b77: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100008b80 <_pcc_evaluate_rule_name>:
100008b80: 55                          	pushq	%rbp
100008b81: 48 89 e5                    	movq	%rsp, %rbp
100008b84: 48 83 ec 60                 	subq	$96, %rsp
100008b88: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100008b8c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008b90: e8 3b ba ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100008b95: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100008b99: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008b9d: 48 8b 48 08                 	movq	8(%rax), %rcx
100008ba1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008ba5: 48 89 48 48                 	movq	%rcx, 72(%rax)
100008ba9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008bad: 48 8b 48 10                 	movq	16(%rax), %rcx
100008bb1: 48 83 c1 01                 	addq	$1, %rcx
100008bb5: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008bb9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008bbd: 48 8d 75 e4                 	leaq	-28(%rbp), %rsi
100008bc1: e8 da 02 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100008bc6: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100008bca: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100008bcf: 0f 85 05 00 00 00           	jne	0x100008bda <_pcc_evaluate_rule_name+0x5a>
100008bd5: e9 a0 01 00 00              	jmp	0x100008d7a <_pcc_evaluate_rule_name+0x1fa>
100008bda: 83 7d e4 61                 	cmpl	$97, -28(%rbp)
100008bde: 0f 8c 0a 00 00 00           	jl	0x100008bee <_pcc_evaluate_rule_name+0x6e>
100008be4: 83 7d e4 7a                 	cmpl	$122, -28(%rbp)
100008be8: 0f 8e 19 00 00 00           	jle	0x100008c07 <_pcc_evaluate_rule_name+0x87>
100008bee: 83 7d e4 41                 	cmpl	$65, -28(%rbp)
100008bf2: 0f 8c 0a 00 00 00           	jl	0x100008c02 <_pcc_evaluate_rule_name+0x82>
100008bf8: 83 7d e4 5a                 	cmpl	$90, -28(%rbp)
100008bfc: 0f 8e 05 00 00 00           	jle	0x100008c07 <_pcc_evaluate_rule_name+0x87>
100008c02: e9 73 01 00 00              	jmp	0x100008d7a <_pcc_evaluate_rule_name+0x1fa>
100008c07: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100008c0b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008c0f: 48 03 48 08                 	addq	8(%rax), %rcx
100008c13: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008c17: c7 45 d4 00 00 00 00        	movl	$0, -44(%rbp)
100008c1e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008c22: 48 8b 40 08                 	movq	8(%rax), %rax
100008c26: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100008c2a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008c2e: 48 8b 40 40                 	movq	64(%rax), %rax
100008c32: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100008c36: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008c3a: 48 8d 75 bc                 	leaq	-68(%rbp), %rsi
100008c3e: e8 5d 02 00 00              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100008c43: 48 89 45 b0                 	movq	%rax, -80(%rbp)
100008c47: 48 83 7d b0 00              	cmpq	$0, -80(%rbp)
100008c4c: 0f 85 05 00 00 00           	jne	0x100008c57 <_pcc_evaluate_rule_name+0xd7>
100008c52: e9 6d 00 00 00              	jmp	0x100008cc4 <_pcc_evaluate_rule_name+0x144>
100008c57: 83 7d bc 61                 	cmpl	$97, -68(%rbp)
100008c5b: 0f 8c 0a 00 00 00           	jl	0x100008c6b <_pcc_evaluate_rule_name+0xeb>
100008c61: 83 7d bc 7a                 	cmpl	$122, -68(%rbp)
100008c65: 0f 8e 2d 00 00 00           	jle	0x100008c98 <_pcc_evaluate_rule_name+0x118>
100008c6b: 83 7d bc 41                 	cmpl	$65, -68(%rbp)
100008c6f: 0f 8c 0a 00 00 00           	jl	0x100008c7f <_pcc_evaluate_rule_name+0xff>
100008c75: 83 7d bc 5a                 	cmpl	$90, -68(%rbp)
100008c79: 0f 8e 19 00 00 00           	jle	0x100008c98 <_pcc_evaluate_rule_name+0x118>
100008c7f: 83 7d bc 30                 	cmpl	$48, -68(%rbp)
100008c83: 0f 8c 0a 00 00 00           	jl	0x100008c93 <_pcc_evaluate_rule_name+0x113>
100008c89: 83 7d bc 39                 	cmpl	$57, -68(%rbp)
100008c8d: 0f 8e 05 00 00 00           	jle	0x100008c98 <_pcc_evaluate_rule_name+0x118>
100008c93: e9 2c 00 00 00              	jmp	0x100008cc4 <_pcc_evaluate_rule_name+0x144>
100008c98: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
100008c9c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008ca0: 48 03 48 08                 	addq	8(%rax), %rcx
100008ca4: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008ca8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008cac: 48 8b 40 08                 	movq	8(%rax), %rax
100008cb0: 48 3b 45 c8                 	cmpq	-56(%rbp), %rax
100008cb4: 0f 85 05 00 00 00           	jne	0x100008cbf <_pcc_evaluate_rule_name+0x13f>
100008cba: e9 40 00 00 00              	jmp	0x100008cff <_pcc_evaluate_rule_name+0x17f>
100008cbf: e9 2d 00 00 00              	jmp	0x100008cf1 <_pcc_evaluate_rule_name+0x171>
100008cc4: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100008cc8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008ccc: 48 89 48 08                 	movq	%rcx, 8(%rax)
100008cd0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008cd4: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008cdb: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008cdf: 48 83 c6 30                 	addq	$48, %rsi
100008ce3: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100008ce7: e8 44 9d ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100008cec: e9 0e 00 00 00              	jmp	0x100008cff <_pcc_evaluate_rule_name+0x17f>
100008cf1: 8b 45 d4                    	movl	-44(%rbp), %eax
100008cf4: 83 c0 01                    	addl	$1, %eax
100008cf7: 89 45 d4                    	movl	%eax, -44(%rbp)
100008cfa: e9 1f ff ff ff              	jmp	0x100008c1e <_pcc_evaluate_rule_name+0x9e>
100008cff: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008d03: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008d0a: 48 8d 35 6f 05 00 00        	leaq	1391(%rip), %rsi        ## 0x100009280 <_pcc_action_name_0>
100008d11: 31 c0                       	xorl	%eax, %eax
100008d13: 89 c1                       	movl	%eax, %ecx
100008d15: 48 89 ca                    	movq	%rcx, %rdx
100008d18: e8 93 00 00 00              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100008d1d: 48 89 45 a8                 	movq	%rax, -88(%rbp)
100008d21: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008d25: 48 8b 48 48                 	movq	72(%rax), %rcx
100008d29: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100008d2d: 48 89 48 38                 	movq	%rcx, 56(%rax)
100008d31: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008d35: 48 8b 48 08                 	movq	8(%rax), %rcx
100008d39: 48 8b 45 a8                 	movq	-88(%rbp), %rax
100008d3d: 48 89 48 40                 	movq	%rcx, 64(%rax)
100008d41: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008d45: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100008d4c: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008d50: 48 83 c6 30                 	addq	$48, %rsi
100008d54: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
100008d58: e8 c3 ab ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100008d5d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008d61: 48 8b 48 10                 	movq	16(%rax), %rcx
100008d65: 48 83 c1 ff                 	addq	$-1, %rcx
100008d69: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008d6d: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100008d71: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100008d75: e9 25 00 00 00              	jmp	0x100008d9f <_pcc_evaluate_rule_name+0x21f>
100008d7a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008d7e: 48 8b 48 10                 	movq	16(%rax), %rcx
100008d82: 48 83 c1 ff                 	addq	$-1, %rcx
100008d86: 48 89 48 10                 	movq	%rcx, 16(%rax)
100008d8a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008d8e: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100008d92: e8 f9 aa ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
100008d97: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008d9f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100008da3: 48 83 c4 60                 	addq	$96, %rsp
100008da7: 5d                          	popq	%rbp
100008da8: c3                          	retq
100008da9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100008db0 <_pcc_thunk__create_leaf>:
100008db0: 55                          	pushq	%rbp
100008db1: 48 89 e5                    	movq	%rsp, %rbp
100008db4: 48 83 ec 30                 	subq	$48, %rsp
100008db8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008dbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008dc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008dc4: 48 89 4d e0                 	movq	%rcx, -32(%rbp)
100008dc8: bf 58 00 00 00              	movl	$88, %edi
100008dcd: e8 ee 9e ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
100008dd2: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100008dd6: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008dda: c7 00 00 00 00 00           	movl	$0, (%rax)
100008de0: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008de4: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100008de8: 48 83 c6 08                 	addq	$8, %rsi
100008dec: e8 1f 06 00 00              	callq	0x100009410 <_pcc_value_refer_table__init>
100008df1: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008df5: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100008df9: 48 83 c6 08                 	addq	$8, %rsi
100008dfd: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100008e01: e8 4a 06 00 00              	callq	0x100009450 <_pcc_value_refer_table__resize>
100008e06: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008e0a: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100008e0e: 48 83 c6 08                 	addq	$8, %rsi
100008e12: 48 83 c6 18                 	addq	$24, %rsi
100008e16: e8 55 07 00 00              	callq	0x100009570 <_pcc_capture_const_table__init>
100008e1b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100008e1f: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100008e23: 48 83 c6 08                 	addq	$8, %rsi
100008e27: 48 83 c6 18                 	addq	$24, %rsi
100008e2b: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
100008e2f: e8 7c 07 00 00              	callq	0x1000095b0 <_pcc_capture_const_table__resize>
100008e34: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008e38: 48 c7 40 38 00 00 00 00     	movq	$0, 56(%rax)
100008e40: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008e44: 48 c7 40 40 00 00 00 00     	movq	$0, 64(%rax)
100008e4c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008e50: 48 c7 40 48 00 00 00 00     	movq	$0, 72(%rax)
100008e58: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008e5c: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008e60: 48 89 48 50                 	movq	%rcx, 80(%rax)
100008e64: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008e68: 48 83 c4 30                 	addq	$48, %rsp
100008e6c: 5d                          	popq	%rbp
100008e6d: c3                          	retq
100008e6e: 66 90                       	nop

0000000100008e70 <_pcc_action_defcall_0>:
100008e70: 55                          	pushq	%rbp
100008e71: 48 89 e5                    	movq	%rsp, %rbp
100008e74: 48 83 ec 20                 	subq	$32, %rsp
100008e78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100008e7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100008e80: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100008e84: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008e88: 48 8b 40 08                 	movq	8(%rax), %rax
100008e8c: 48 8b 00                    	movq	(%rax), %rax
100008e8f: 48 8b 38                    	movq	(%rax), %rdi
100008e92: e8 09 83 ff ff              	callq	0x1000011a0 <_run_expr>
100008e97: 48 83 c4 20                 	addq	$32, %rsp
100008e9b: 5d                          	popq	%rbp
100008e9c: c3                          	retq
100008e9d: 0f 1f 00                    	nopl	(%rax)

0000000100008ea0 <_pcc_get_char_as_utf32>:
100008ea0: 55                          	pushq	%rbp
100008ea1: 48 89 e5                    	movq	%rsp, %rbp
100008ea4: 48 83 ec 40                 	subq	$64, %rsp
100008ea8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100008eac: 48 89 75 e8                 	movq	%rsi, -24(%rbp)
100008eb0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008eb4: be 01 00 00 00              	movl	$1, %esi
100008eb9: e8 d2 9b ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008ebe: 48 83 f8 01                 	cmpq	$1, %rax
100008ec2: 0f 83 0d 00 00 00           	jae	0x100008ed5 <_pcc_get_char_as_utf32+0x35>
100008ec8: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008ed0: e9 8e 03 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100008ed5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008ed9: 48 8b 40 18                 	movq	24(%rax), %rax
100008edd: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008ee1: 48 8b 49 08                 	movq	8(%rcx), %rcx
100008ee5: 0f b6 04 08                 	movzbl	(%rax,%rcx), %eax
100008ee9: 89 45 e4                    	movl	%eax, -28(%rbp)
100008eec: 81 7d e4 80 00 00 00        	cmpl	$128, -28(%rbp)
100008ef3: 0f 8d 0d 00 00 00           	jge	0x100008f06 <_pcc_get_char_as_utf32+0x66>
100008ef9: b8 01 00 00 00              	movl	$1, %eax
100008efe: 89 45 d4                    	movl	%eax, -44(%rbp)
100008f01: e9 68 00 00 00              	jmp	0x100008f6e <_pcc_get_char_as_utf32+0xce>
100008f06: 8b 45 e4                    	movl	-28(%rbp), %eax
100008f09: 25 e0 00 00 00              	andl	$224, %eax
100008f0e: 3d c0 00 00 00              	cmpl	$192, %eax
100008f13: 0f 85 0d 00 00 00           	jne	0x100008f26 <_pcc_get_char_as_utf32+0x86>
100008f19: b8 02 00 00 00              	movl	$2, %eax
100008f1e: 89 45 d0                    	movl	%eax, -48(%rbp)
100008f21: e9 42 00 00 00              	jmp	0x100008f68 <_pcc_get_char_as_utf32+0xc8>
100008f26: 8b 45 e4                    	movl	-28(%rbp), %eax
100008f29: 25 f0 00 00 00              	andl	$240, %eax
100008f2e: 3d e0 00 00 00              	cmpl	$224, %eax
100008f33: 0f 85 0d 00 00 00           	jne	0x100008f46 <_pcc_get_char_as_utf32+0xa6>
100008f39: b8 03 00 00 00              	movl	$3, %eax
100008f3e: 89 45 cc                    	movl	%eax, -52(%rbp)
100008f41: e9 1c 00 00 00              	jmp	0x100008f62 <_pcc_get_char_as_utf32+0xc2>
100008f46: 8b 55 e4                    	movl	-28(%rbp), %edx
100008f49: 81 e2 f8 00 00 00           	andl	$248, %edx
100008f4f: 31 c0                       	xorl	%eax, %eax
100008f51: b9 04 00 00 00              	movl	$4, %ecx
100008f56: 81 fa f0 00 00 00           	cmpl	$240, %edx
100008f5c: 0f 44 c1                    	cmovel	%ecx, %eax
100008f5f: 89 45 cc                    	movl	%eax, -52(%rbp)
100008f62: 8b 45 cc                    	movl	-52(%rbp), %eax
100008f65: 89 45 d0                    	movl	%eax, -48(%rbp)
100008f68: 8b 45 d0                    	movl	-48(%rbp), %eax
100008f6b: 89 45 d4                    	movl	%eax, -44(%rbp)
100008f6e: 8b 45 d4                    	movl	-44(%rbp), %eax
100008f71: 48 98                       	cltq
100008f73: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100008f77: 48 83 7d d8 01              	cmpq	$1, -40(%rbp)
100008f7c: 0f 83 0d 00 00 00           	jae	0x100008f8f <_pcc_get_char_as_utf32+0xef>
100008f82: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008f8a: e9 d4 02 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100008f8f: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100008f93: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100008f97: e8 f4 9a ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100008f9c: 48 3b 45 d8                 	cmpq	-40(%rbp), %rax
100008fa0: 0f 83 0d 00 00 00           	jae	0x100008fb3 <_pcc_get_char_as_utf32+0x113>
100008fa6: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100008fae: e9 b0 02 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100008fb3: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100008fb7: 48 ff c8                    	decq	%rax
100008fba: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100008fbe: 48 83 e8 03                 	subq	$3, %rax
100008fc2: 0f 87 72 02 00 00           	ja	0x10000923a <_pcc_get_char_as_utf32+0x39a>
100008fc8: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100008fcc: 48 8d 0d 9d 02 00 00        	leaq	669(%rip), %rcx         ## 0x100009270 <_pcc_get_char_as_utf32+0x3d0>
100008fd3: 48 63 04 81                 	movslq	(%rcx,%rax,4), %rax
100008fd7: 48 01 c8                    	addq	%rcx, %rax
100008fda: ff e0                       	jmpq	*%rax
100008fdc: 8b 45 e4                    	movl	-28(%rbp), %eax
100008fdf: 89 45 e0                    	movl	%eax, -32(%rbp)
100008fe2: e9 60 02 00 00              	jmp	0x100009247 <_pcc_get_char_as_utf32+0x3a7>
100008fe7: 8b 45 e4                    	movl	-28(%rbp), %eax
100008fea: 83 e0 1f                    	andl	$31, %eax
100008fed: 89 45 e0                    	movl	%eax, -32(%rbp)
100008ff0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100008ff4: 48 8b 40 18                 	movq	24(%rax), %rax
100008ff8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100008ffc: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009000: 0f b6 44 08 01              	movzbl	1(%rax,%rcx), %eax
100009005: 89 45 e4                    	movl	%eax, -28(%rbp)
100009008: 8b 45 e4                    	movl	-28(%rbp), %eax
10000900b: 25 c0 00 00 00              	andl	$192, %eax
100009010: 3d 80 00 00 00              	cmpl	$128, %eax
100009015: 0f 84 0d 00 00 00           	je	0x100009028 <_pcc_get_char_as_utf32+0x188>
10000901b: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009023: e9 3b 02 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100009028: 8b 45 e0                    	movl	-32(%rbp), %eax
10000902b: c1 e0 06                    	shll	$6, %eax
10000902e: 89 45 e0                    	movl	%eax, -32(%rbp)
100009031: 8b 45 e4                    	movl	-28(%rbp), %eax
100009034: 83 e0 3f                    	andl	$63, %eax
100009037: 0b 45 e0                    	orl	-32(%rbp), %eax
10000903a: 89 45 e0                    	movl	%eax, -32(%rbp)
10000903d: 81 7d e0 80 00 00 00        	cmpl	$128, -32(%rbp)
100009044: 0f 8d 0d 00 00 00           	jge	0x100009057 <_pcc_get_char_as_utf32+0x1b7>
10000904a: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009052: e9 0c 02 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100009057: e9 eb 01 00 00              	jmp	0x100009247 <_pcc_get_char_as_utf32+0x3a7>
10000905c: 8b 45 e4                    	movl	-28(%rbp), %eax
10000905f: 83 e0 0f                    	andl	$15, %eax
100009062: 89 45 e0                    	movl	%eax, -32(%rbp)
100009065: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009069: 48 8b 40 18                 	movq	24(%rax), %rax
10000906d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009071: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009075: 0f b6 44 08 01              	movzbl	1(%rax,%rcx), %eax
10000907a: 89 45 e4                    	movl	%eax, -28(%rbp)
10000907d: 8b 45 e4                    	movl	-28(%rbp), %eax
100009080: 25 c0 00 00 00              	andl	$192, %eax
100009085: 3d 80 00 00 00              	cmpl	$128, %eax
10000908a: 0f 84 0d 00 00 00           	je	0x10000909d <_pcc_get_char_as_utf32+0x1fd>
100009090: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009098: e9 c6 01 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
10000909d: 8b 45 e0                    	movl	-32(%rbp), %eax
1000090a0: c1 e0 06                    	shll	$6, %eax
1000090a3: 89 45 e0                    	movl	%eax, -32(%rbp)
1000090a6: 8b 45 e4                    	movl	-28(%rbp), %eax
1000090a9: 83 e0 3f                    	andl	$63, %eax
1000090ac: 0b 45 e0                    	orl	-32(%rbp), %eax
1000090af: 89 45 e0                    	movl	%eax, -32(%rbp)
1000090b2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000090b6: 48 8b 40 18                 	movq	24(%rax), %rax
1000090ba: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000090be: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000090c2: 0f b6 44 08 02              	movzbl	2(%rax,%rcx), %eax
1000090c7: 89 45 e4                    	movl	%eax, -28(%rbp)
1000090ca: 8b 45 e4                    	movl	-28(%rbp), %eax
1000090cd: 25 c0 00 00 00              	andl	$192, %eax
1000090d2: 3d 80 00 00 00              	cmpl	$128, %eax
1000090d7: 0f 84 0d 00 00 00           	je	0x1000090ea <_pcc_get_char_as_utf32+0x24a>
1000090dd: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000090e5: e9 79 01 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
1000090ea: 8b 45 e0                    	movl	-32(%rbp), %eax
1000090ed: c1 e0 06                    	shll	$6, %eax
1000090f0: 89 45 e0                    	movl	%eax, -32(%rbp)
1000090f3: 8b 45 e4                    	movl	-28(%rbp), %eax
1000090f6: 83 e0 3f                    	andl	$63, %eax
1000090f9: 0b 45 e0                    	orl	-32(%rbp), %eax
1000090fc: 89 45 e0                    	movl	%eax, -32(%rbp)
1000090ff: 81 7d e0 00 08 00 00        	cmpl	$2048, -32(%rbp)        ## imm = 0x800
100009106: 0f 8d 0d 00 00 00           	jge	0x100009119 <_pcc_get_char_as_utf32+0x279>
10000910c: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009114: e9 4a 01 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100009119: e9 29 01 00 00              	jmp	0x100009247 <_pcc_get_char_as_utf32+0x3a7>
10000911e: 8b 45 e4                    	movl	-28(%rbp), %eax
100009121: 83 e0 07                    	andl	$7, %eax
100009124: 89 45 e0                    	movl	%eax, -32(%rbp)
100009127: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000912b: 48 8b 40 18                 	movq	24(%rax), %rax
10000912f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009133: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009137: 0f b6 44 08 01              	movzbl	1(%rax,%rcx), %eax
10000913c: 89 45 e4                    	movl	%eax, -28(%rbp)
10000913f: 8b 45 e4                    	movl	-28(%rbp), %eax
100009142: 25 c0 00 00 00              	andl	$192, %eax
100009147: 3d 80 00 00 00              	cmpl	$128, %eax
10000914c: 0f 84 0d 00 00 00           	je	0x10000915f <_pcc_get_char_as_utf32+0x2bf>
100009152: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000915a: e9 04 01 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
10000915f: 8b 45 e0                    	movl	-32(%rbp), %eax
100009162: c1 e0 06                    	shll	$6, %eax
100009165: 89 45 e0                    	movl	%eax, -32(%rbp)
100009168: 8b 45 e4                    	movl	-28(%rbp), %eax
10000916b: 83 e0 3f                    	andl	$63, %eax
10000916e: 0b 45 e0                    	orl	-32(%rbp), %eax
100009171: 89 45 e0                    	movl	%eax, -32(%rbp)
100009174: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009178: 48 8b 40 18                 	movq	24(%rax), %rax
10000917c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009180: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009184: 0f b6 44 08 02              	movzbl	2(%rax,%rcx), %eax
100009189: 89 45 e4                    	movl	%eax, -28(%rbp)
10000918c: 8b 45 e4                    	movl	-28(%rbp), %eax
10000918f: 25 c0 00 00 00              	andl	$192, %eax
100009194: 3d 80 00 00 00              	cmpl	$128, %eax
100009199: 0f 84 0d 00 00 00           	je	0x1000091ac <_pcc_get_char_as_utf32+0x30c>
10000919f: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000091a7: e9 b7 00 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
1000091ac: 8b 45 e0                    	movl	-32(%rbp), %eax
1000091af: c1 e0 06                    	shll	$6, %eax
1000091b2: 89 45 e0                    	movl	%eax, -32(%rbp)
1000091b5: 8b 45 e4                    	movl	-28(%rbp), %eax
1000091b8: 83 e0 3f                    	andl	$63, %eax
1000091bb: 0b 45 e0                    	orl	-32(%rbp), %eax
1000091be: 89 45 e0                    	movl	%eax, -32(%rbp)
1000091c1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000091c5: 48 8b 40 18                 	movq	24(%rax), %rax
1000091c9: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
1000091cd: 48 8b 49 08                 	movq	8(%rcx), %rcx
1000091d1: 0f b6 44 08 03              	movzbl	3(%rax,%rcx), %eax
1000091d6: 89 45 e4                    	movl	%eax, -28(%rbp)
1000091d9: 8b 45 e4                    	movl	-28(%rbp), %eax
1000091dc: 25 c0 00 00 00              	andl	$192, %eax
1000091e1: 3d 80 00 00 00              	cmpl	$128, %eax
1000091e6: 0f 84 0d 00 00 00           	je	0x1000091f9 <_pcc_get_char_as_utf32+0x359>
1000091ec: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000091f4: e9 6a 00 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
1000091f9: 8b 45 e0                    	movl	-32(%rbp), %eax
1000091fc: c1 e0 06                    	shll	$6, %eax
1000091ff: 89 45 e0                    	movl	%eax, -32(%rbp)
100009202: 8b 45 e4                    	movl	-28(%rbp), %eax
100009205: 83 e0 3f                    	andl	$63, %eax
100009208: 0b 45 e0                    	orl	-32(%rbp), %eax
10000920b: 89 45 e0                    	movl	%eax, -32(%rbp)
10000920e: 81 7d e0 00 00 01 00        	cmpl	$65536, -32(%rbp)       ## imm = 0x10000
100009215: 0f 8c 0d 00 00 00           	jl	0x100009228 <_pcc_get_char_as_utf32+0x388>
10000921b: 81 7d e0 ff ff 10 00        	cmpl	$1114111, -32(%rbp)     ## imm = 0x10FFFF
100009222: 0f 8e 0d 00 00 00           	jle	0x100009235 <_pcc_get_char_as_utf32+0x395>
100009228: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009230: e9 2e 00 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100009235: e9 0d 00 00 00              	jmp	0x100009247 <_pcc_get_char_as_utf32+0x3a7>
10000923a: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
100009242: e9 1c 00 00 00              	jmp	0x100009263 <_pcc_get_char_as_utf32+0x3c3>
100009247: 48 83 7d e8 00              	cmpq	$0, -24(%rbp)
10000924c: 0f 84 09 00 00 00           	je	0x10000925b <_pcc_get_char_as_utf32+0x3bb>
100009252: 8b 4d e0                    	movl	-32(%rbp), %ecx
100009255: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009259: 89 08                       	movl	%ecx, (%rax)
10000925b: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000925f: 48 89 45 f8                 	movq	%rax, -8(%rbp)
100009263: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009267: 48 83 c4 40                 	addq	$64, %rsp
10000926b: 5d                          	popq	%rbp
10000926c: c3                          	retq
10000926d: 0f 1f 00                    	nopl	(%rax)
100009270: 6c                          	insb	%dx, %es:(%rdi)
100009271: fd                          	std
100009272: ff ff                       	<unknown>
100009274: 77 fd                       	ja	0x100009273 <_pcc_get_char_as_utf32+0x3d3>
100009276: ff ff                       	<unknown>
100009278: ec                          	inb	%dx, %al
100009279: fd                          	std
10000927a: ff ff                       	<unknown>
10000927c: ae                          	scasb	%es:(%rdi), %al
10000927d: fe ff                       	<unknown>
10000927f: ff 55 48                    	callq	*72(%rbp)

0000000100009280 <_pcc_action_name_0>:
100009280: 55                          	pushq	%rbp
100009281: 48 89 e5                    	movq	%rsp, %rbp
100009284: 48 83 ec 30                 	subq	$48, %rsp
100009288: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000928c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009290: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009294: 48 8d 05 7d 6d 00 00        	leaq	28029(%rip), %rax       ## 0x100010018 <_constants>
10000929b: 48 8b 00                    	movq	(%rax), %rax
10000929e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000092a2: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000092a6: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000092aa: 48 83 c6 08                 	addq	$8, %rsi
1000092ae: 48 83 c6 30                 	addq	$48, %rsi
1000092b2: e8 79 00 00 00              	callq	0x100009330 <_pcc_get_capture_string>
1000092b7: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000092bb: 48 89 c6                    	movq	%rax, %rsi
1000092be: e8 5d 79 ff ff              	callq	0x100000c20 <_bh_ht_get>
1000092c3: 48 83 f8 00                 	cmpq	$0, %rax
1000092c7: 0f 84 3e 00 00 00           	je	0x10000930b <_pcc_action_name_0+0x8b>
1000092cd: 48 8d 05 44 6d 00 00        	leaq	27972(%rip), %rax       ## 0x100010018 <_constants>
1000092d4: 48 8b 00                    	movq	(%rax), %rax
1000092d7: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000092db: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000092df: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000092e3: 48 83 c6 08                 	addq	$8, %rsi
1000092e7: 48 83 c6 30                 	addq	$48, %rsi
1000092eb: e8 40 00 00 00              	callq	0x100009330 <_pcc_get_capture_string>
1000092f0: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000092f4: 48 89 c6                    	movq	%rax, %rsi
1000092f7: e8 24 79 ff ff              	callq	0x100000c20 <_bh_ht_get>
1000092fc: 48 89 c1                    	movq	%rax, %rcx
1000092ff: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009303: 48 89 08                    	movq	%rcx, (%rax)
100009306: e9 1f 00 00 00              	jmp	0x10000932a <_pcc_action_name_0+0xaa>
10000930b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000930f: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009313: 48 83 c6 08                 	addq	$8, %rsi
100009317: 48 83 c6 30                 	addq	$48, %rsi
10000931b: e8 10 00 00 00              	callq	0x100009330 <_pcc_get_capture_string>
100009320: 48 89 c1                    	movq	%rax, %rcx
100009323: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009327: 48 89 08                    	movq	%rcx, (%rax)
10000932a: 48 83 c4 30                 	addq	$48, %rsp
10000932e: 5d                          	popq	%rbp
10000932f: c3                          	retq

0000000100009330 <_pcc_get_capture_string>:
100009330: 55                          	pushq	%rbp
100009331: 48 89 e5                    	movq	%rsp, %rbp
100009334: 48 83 ec 10                 	subq	$16, %rsp
100009338: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000933c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009340: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009344: 48 83 78 10 00              	cmpq	$0, 16(%rax)
100009349: 0f 85 39 00 00 00           	jne	0x100009388 <_pcc_get_capture_string+0x58>
10000934f: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009353: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000935a: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000935e: 48 8b 70 18                 	movq	24(%rax), %rsi
100009362: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009366: 48 03 30                    	addq	(%rax), %rsi
100009369: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000936d: 48 8b 50 08                 	movq	8(%rax), %rdx
100009371: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009375: 48 2b 10                    	subq	(%rax), %rdx
100009378: e8 23 00 00 00              	callq	0x1000093a0 <_pcc_strndup_e>
10000937d: 48 89 c1                    	movq	%rax, %rcx
100009380: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009384: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009388: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000938c: 48 8b 40 10                 	movq	16(%rax), %rax
100009390: 48 83 c4 10                 	addq	$16, %rsp
100009394: 5d                          	popq	%rbp
100009395: c3                          	retq
100009396: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000093a0 <_pcc_strndup_e>:
1000093a0: 55                          	pushq	%rbp
1000093a1: 48 89 e5                    	movq	%rsp, %rbp
1000093a4: 48 83 ec 30                 	subq	$48, %rsp
1000093a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000093ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000093b0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000093b4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000093b8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000093bc: e8 c8 28 00 00              	callq	0x10000bc89 <_strnlen+0x10000bc89>
1000093c1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000093c5: 48 8b 7d e0                 	movq	-32(%rbp), %rdi
1000093c9: 48 83 c7 01                 	addq	$1, %rdi
1000093cd: e8 ee 98 ff ff              	callq	0x100002cc0 <_pcc_malloc_e>
1000093d2: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000093d6: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
1000093da: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000093de: 48 8b 55 e0                 	movq	-32(%rbp), %rdx
1000093e2: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
1000093e9: e8 1d 28 00 00              	callq	0x10000bc0b <_strnlen+0x10000bc0b>
1000093ee: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000093f2: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000093f6: c6 04 08 00                 	movb	$0, (%rax,%rcx)
1000093fa: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000093fe: 48 83 c4 30                 	addq	$48, %rsp
100009402: 5d                          	popq	%rbp
100009403: c3                          	retq
100009404: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000100009410 <_pcc_value_refer_table__init>:
100009410: 55                          	pushq	%rbp
100009411: 48 89 e5                    	movq	%rsp, %rbp
100009414: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009418: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000941c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009420: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100009428: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000942c: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100009434: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009438: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000943f: 5d                          	popq	%rbp
100009440: c3                          	retq
100009441: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100009450 <_pcc_value_refer_table__resize>:
100009450: 55                          	pushq	%rbp
100009451: 48 89 e5                    	movq	%rsp, %rbp
100009454: 48 83 ec 30                 	subq	$48, %rsp
100009458: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000945c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009460: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009464: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009468: 48 8b 40 08                 	movq	8(%rax), %rax
10000946c: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100009470: 0f 83 a0 00 00 00           	jae	0x100009516 <_pcc_value_refer_table__resize+0xc6>
100009476: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000947a: 48 8b 40 08                 	movq	8(%rax), %rax
10000947e: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009482: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100009487: 0f 85 08 00 00 00           	jne	0x100009495 <_pcc_value_refer_table__resize+0x45>
10000948d: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
100009495: e9 00 00 00 00              	jmp	0x10000949a <_pcc_value_refer_table__resize+0x4a>
10000949a: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000949e: 31 c0                       	xorl	%eax, %eax
1000094a0: 48 3b 4d e8                 	cmpq	-24(%rbp), %rcx
1000094a4: 88 45 d7                    	movb	%al, -41(%rbp)
1000094a7: 0f 83 0b 00 00 00           	jae	0x1000094b8 <_pcc_value_refer_table__resize+0x68>
1000094ad: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
1000094b2: 0f 95 c0                    	setne	%al
1000094b5: 88 45 d7                    	movb	%al, -41(%rbp)
1000094b8: 8a 45 d7                    	movb	-41(%rbp), %al
1000094bb: a8 01                       	testb	$1, %al
1000094bd: 0f 85 05 00 00 00           	jne	0x1000094c8 <_pcc_value_refer_table__resize+0x78>
1000094c3: e9 11 00 00 00              	jmp	0x1000094d9 <_pcc_value_refer_table__resize+0x89>
1000094c8: 48 8b 45 d8                 	movq	-40(%rbp), %rax
1000094cc: 48 c1 e0 01                 	shlq	$1, %rax
1000094d0: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000094d4: e9 c1 ff ff ff              	jmp	0x10000949a <_pcc_value_refer_table__resize+0x4a>
1000094d9: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
1000094de: 0f 85 08 00 00 00           	jne	0x1000094ec <_pcc_value_refer_table__resize+0x9c>
1000094e4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000094e8: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000094ec: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000094f0: 48 8b 38                    	movq	(%rax), %rdi
1000094f3: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
1000094f7: 48 c1 e6 03                 	shlq	$3, %rsi
1000094fb: e8 e0 a9 ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
100009500: 48 89 c1                    	movq	%rax, %rcx
100009503: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009507: 48 89 08                    	movq	%rcx, (%rax)
10000950a: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000950e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009512: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009516: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000951a: 48 8b 40 10                 	movq	16(%rax), %rax
10000951e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009522: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009526: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
10000952a: 0f 83 24 00 00 00           	jae	0x100009554 <_pcc_value_refer_table__resize+0x104>
100009530: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009534: 48 8b 00                    	movq	(%rax), %rax
100009537: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000953b: 48 c7 04 c8 00 00 00 00     	movq	$0, (%rax,%rcx,8)
100009543: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009547: 48 83 c0 01                 	addq	$1, %rax
10000954b: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000954f: e9 ce ff ff ff              	jmp	0x100009522 <_pcc_value_refer_table__resize+0xd2>
100009554: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100009558: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000955c: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009560: 48 83 c4 30                 	addq	$48, %rsp
100009564: 5d                          	popq	%rbp
100009565: c3                          	retq
100009566: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

0000000100009570 <_pcc_capture_const_table__init>:
100009570: 55                          	pushq	%rbp
100009571: 48 89 e5                    	movq	%rsp, %rbp
100009574: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009578: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000957c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009580: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100009588: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000958c: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100009594: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009598: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
10000959f: 5d                          	popq	%rbp
1000095a0: c3                          	retq
1000095a1: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

00000001000095b0 <_pcc_capture_const_table__resize>:
1000095b0: 55                          	pushq	%rbp
1000095b1: 48 89 e5                    	movq	%rsp, %rbp
1000095b4: 48 83 ec 30                 	subq	$48, %rsp
1000095b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000095bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000095c0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000095c4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000095c8: 48 8b 40 08                 	movq	8(%rax), %rax
1000095cc: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
1000095d0: 0f 83 a0 00 00 00           	jae	0x100009676 <_pcc_capture_const_table__resize+0xc6>
1000095d6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000095da: 48 8b 40 08                 	movq	8(%rax), %rax
1000095de: 48 89 45 d8                 	movq	%rax, -40(%rbp)
1000095e2: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
1000095e7: 0f 85 08 00 00 00           	jne	0x1000095f5 <_pcc_capture_const_table__resize+0x45>
1000095ed: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
1000095f5: e9 00 00 00 00              	jmp	0x1000095fa <_pcc_capture_const_table__resize+0x4a>
1000095fa: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
1000095fe: 31 c0                       	xorl	%eax, %eax
100009600: 48 3b 4d e8                 	cmpq	-24(%rbp), %rcx
100009604: 88 45 d7                    	movb	%al, -41(%rbp)
100009607: 0f 83 0b 00 00 00           	jae	0x100009618 <_pcc_capture_const_table__resize+0x68>
10000960d: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100009612: 0f 95 c0                    	setne	%al
100009615: 88 45 d7                    	movb	%al, -41(%rbp)
100009618: 8a 45 d7                    	movb	-41(%rbp), %al
10000961b: a8 01                       	testb	$1, %al
10000961d: 0f 85 05 00 00 00           	jne	0x100009628 <_pcc_capture_const_table__resize+0x78>
100009623: e9 11 00 00 00              	jmp	0x100009639 <_pcc_capture_const_table__resize+0x89>
100009628: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000962c: 48 c1 e0 01                 	shlq	$1, %rax
100009630: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009634: e9 c1 ff ff ff              	jmp	0x1000095fa <_pcc_capture_const_table__resize+0x4a>
100009639: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000963e: 0f 85 08 00 00 00           	jne	0x10000964c <_pcc_capture_const_table__resize+0x9c>
100009644: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009648: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000964c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009650: 48 8b 38                    	movq	(%rax), %rdi
100009653: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
100009657: 48 c1 e6 03                 	shlq	$3, %rsi
10000965b: e8 80 a8 ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
100009660: 48 89 c1                    	movq	%rax, %rcx
100009663: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009667: 48 89 08                    	movq	%rcx, (%rax)
10000966a: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000966e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009672: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009676: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000967a: 48 8b 40 10                 	movq	16(%rax), %rax
10000967e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009682: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009686: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
10000968a: 0f 83 24 00 00 00           	jae	0x1000096b4 <_pcc_capture_const_table__resize+0x104>
100009690: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009694: 48 8b 00                    	movq	(%rax), %rax
100009697: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000969b: 48 c7 04 c8 00 00 00 00     	movq	$0, (%rax,%rcx,8)
1000096a3: 48 8b 45 e0                 	movq	-32(%rbp), %rax
1000096a7: 48 83 c0 01                 	addq	$1, %rax
1000096ab: 48 89 45 e0                 	movq	%rax, -32(%rbp)
1000096af: e9 ce ff ff ff              	jmp	0x100009682 <_pcc_capture_const_table__resize+0xd2>
1000096b4: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
1000096b8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000096bc: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000096c0: 48 83 c4 30                 	addq	$48, %rsp
1000096c4: 5d                          	popq	%rbp
1000096c5: c3                          	retq
1000096c6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

00000001000096d0 <_pcc_evaluate_rule_reg_code>:
1000096d0: 55                          	pushq	%rbp
1000096d1: 48 89 e5                    	movq	%rsp, %rbp
1000096d4: 48 83 ec 30                 	subq	$48, %rsp
1000096d8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
1000096dc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000096e0: e8 eb ae ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
1000096e5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
1000096e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000096ed: 48 8b 48 08                 	movq	8(%rax), %rcx
1000096f1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000096f5: 48 89 48 48                 	movq	%rcx, 72(%rax)
1000096f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000096fd: 48 8b 48 10                 	movq	16(%rax), %rcx
100009701: 48 83 c1 01                 	addq	$1, %rcx
100009705: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009709: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000970d: 48 8d 75 e4                 	leaq	-28(%rbp), %rsi
100009711: e8 8a f7 ff ff              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100009716: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000971a: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000971f: 0f 85 05 00 00 00           	jne	0x10000972a <_pcc_evaluate_rule_reg_code+0x5a>
100009725: e9 a4 00 00 00              	jmp	0x1000097ce <_pcc_evaluate_rule_reg_code+0xfe>
10000972a: 83 7d e4 41                 	cmpl	$65, -28(%rbp)
10000972e: 0f 8c 0a 00 00 00           	jl	0x10000973e <_pcc_evaluate_rule_reg_code+0x6e>
100009734: 83 7d e4 50                 	cmpl	$80, -28(%rbp)
100009738: 0f 8e 05 00 00 00           	jle	0x100009743 <_pcc_evaluate_rule_reg_code+0x73>
10000973e: e9 8b 00 00 00              	jmp	0x1000097ce <_pcc_evaluate_rule_reg_code+0xfe>
100009743: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100009747: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000974b: 48 03 48 08                 	addq	8(%rax), %rcx
10000974f: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009753: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009757: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000975e: 48 8d 35 4b 01 00 00        	leaq	331(%rip), %rsi         ## 0x1000098b0 <_pcc_action_reg_code_0>
100009765: 31 c0                       	xorl	%eax, %eax
100009767: 89 c1                       	movl	%eax, %ecx
100009769: 48 89 ca                    	movq	%rcx, %rdx
10000976c: e8 3f f6 ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100009771: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009775: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009779: 48 8b 48 48                 	movq	72(%rax), %rcx
10000977d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009781: 48 89 48 38                 	movq	%rcx, 56(%rax)
100009785: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009789: 48 8b 48 08                 	movq	8(%rax), %rcx
10000978d: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009791: 48 89 48 40                 	movq	%rcx, 64(%rax)
100009795: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009799: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000097a0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000097a4: 48 83 c6 30                 	addq	$48, %rsi
1000097a8: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
1000097ac: e8 6f a1 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
1000097b1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000097b5: 48 8b 48 10                 	movq	16(%rax), %rcx
1000097b9: 48 83 c1 ff                 	addq	$-1, %rcx
1000097bd: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000097c1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000097c5: 48 89 45 f8                 	movq	%rax, -8(%rbp)
1000097c9: e9 25 00 00 00              	jmp	0x1000097f3 <_pcc_evaluate_rule_reg_code+0x123>
1000097ce: 48 8b 45 f0                 	movq	-16(%rbp), %rax
1000097d2: 48 8b 48 10                 	movq	16(%rax), %rcx
1000097d6: 48 83 c1 ff                 	addq	$-1, %rcx
1000097da: 48 89 48 10                 	movq	%rcx, 16(%rax)
1000097de: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
1000097e2: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
1000097e6: e8 a5 a0 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
1000097eb: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
1000097f3: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000097f7: 48 83 c4 30                 	addq	$48, %rsp
1000097fb: 5d                          	popq	%rbp
1000097fc: c3                          	retq
1000097fd: 0f 1f 00                    	nopl	(%rax)

0000000100009800 <_pcc_action_addr_0>:
100009800: 55                          	pushq	%rbp
100009801: 48 89 e5                    	movq	%rsp, %rbp
100009804: 48 83 ec 20                 	subq	$32, %rsp
100009808: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000980c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009810: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009814: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009818: 48 8b 40 08                 	movq	8(%rax), %rax
10000981c: 48 8b 00                    	movq	(%rax), %rax
10000981f: 48 8b 00                    	movq	(%rax), %rax
100009822: 0f be 38                    	movsbl	(%rax), %edi
100009825: 83 ef 41                    	subl	$65, %edi
100009828: e8 13 7c ff ff              	callq	0x100001440 <_print_reg>
10000982d: 48 83 c4 20                 	addq	$32, %rsp
100009831: 5d                          	popq	%rbp
100009832: c3                          	retq
100009833: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

0000000100009840 <_pcc_action_addr_1>:
100009840: 55                          	pushq	%rbp
100009841: 48 89 e5                    	movq	%rsp, %rbp
100009844: 48 83 ec 20                 	subq	$32, %rsp
100009848: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000984c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009850: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009854: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009858: 48 8b 40 08                 	movq	8(%rax), %rax
10000985c: 48 8b 00                    	movq	(%rax), %rax
10000985f: 48 8b 00                    	movq	(%rax), %rax
100009862: 0f be 30                    	movsbl	(%rax), %esi
100009865: 48 8d 3d ca 25 00 00        	leaq	9674(%rip), %rdi        ## 0x10000be36 <_strnlen+0x10000be36>
10000986c: b0 00                       	movb	$0, %al
10000986e: e8 f2 23 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009873: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009877: 48 8b 40 08                 	movq	8(%rax), %rax
10000987b: 48 8b 00                    	movq	(%rax), %rax
10000987e: 48 8b 00                    	movq	(%rax), %rax
100009881: 0f be 38                    	movsbl	(%rax), %edi
100009884: 83 ef 41                    	subl	$65, %edi
100009887: 31 f6                       	xorl	%esi, %esi
100009889: e8 42 7a ff ff              	callq	0x1000012d0 <_print_bin>
10000988e: 48 8d 3d cc 24 00 00        	leaq	9420(%rip), %rdi        ## 0x10000bd61 <_strnlen+0x10000bd61>
100009895: b0 00                       	movb	$0, %al
100009897: e8 c9 23 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000989c: 48 83 c4 20                 	addq	$32, %rsp
1000098a0: 5d                          	popq	%rbp
1000098a1: c3                          	retq
1000098a2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

00000001000098b0 <_pcc_action_reg_code_0>:
1000098b0: 55                          	pushq	%rbp
1000098b1: 48 89 e5                    	movq	%rsp, %rbp
1000098b4: 48 83 ec 20                 	subq	$32, %rsp
1000098b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000098bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
1000098c0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
1000098c4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
1000098c8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000098cc: 48 83 c6 08                 	addq	$8, %rsi
1000098d0: 48 83 c6 30                 	addq	$48, %rsi
1000098d4: e8 57 fa ff ff              	callq	0x100009330 <_pcc_get_capture_string>
1000098d9: 48 89 c1                    	movq	%rax, %rcx
1000098dc: 48 8b 45 e8                 	movq	-24(%rbp), %rax
1000098e0: 48 89 08                    	movq	%rcx, (%rax)
1000098e3: 48 83 c4 20                 	addq	$32, %rsp
1000098e7: 5d                          	popq	%rbp
1000098e8: c3                          	retq
1000098e9: 0f 1f 80 00 00 00 00        	nopl	(%rax)

00000001000098f0 <_pcc_evaluate_rule_const>:
1000098f0: 55                          	pushq	%rbp
1000098f1: 48 89 e5                    	movq	%rsp, %rbp
1000098f4: 48 83 ec 40                 	subq	$64, %rsp
1000098f8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
1000098fc: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009900: e8 cb ac ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100009905: 48 89 45 f0                 	movq	%rax, -16(%rbp)
100009909: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000990d: 48 8b 48 08                 	movq	8(%rax), %rcx
100009911: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009915: 48 89 48 48                 	movq	%rcx, 72(%rax)
100009919: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000991d: 48 8b 48 10                 	movq	16(%rax), %rcx
100009921: 48 83 c1 01                 	addq	$1, %rcx
100009925: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009929: c7 45 ec 00 00 00 00        	movl	$0, -20(%rbp)
100009930: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009934: 48 8b 40 08                 	movq	8(%rax), %rax
100009938: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000993c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009940: 48 8b 40 40                 	movq	64(%rax), %rax
100009944: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009948: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000994c: 48 8d 75 d4                 	leaq	-44(%rbp), %rsi
100009950: e8 4b f5 ff ff              	callq	0x100008ea0 <_pcc_get_char_as_utf32>
100009955: 48 89 45 c8                 	movq	%rax, -56(%rbp)
100009959: 48 83 7d c8 00              	cmpq	$0, -56(%rbp)
10000995e: 0f 85 05 00 00 00           	jne	0x100009969 <_pcc_evaluate_rule_const+0x79>
100009964: e9 45 00 00 00              	jmp	0x1000099ae <_pcc_evaluate_rule_const+0xbe>
100009969: 83 7d d4 30                 	cmpl	$48, -44(%rbp)
10000996d: 0f 8c 0a 00 00 00           	jl	0x10000997d <_pcc_evaluate_rule_const+0x8d>
100009973: 83 7d d4 39                 	cmpl	$57, -44(%rbp)
100009977: 0f 8e 05 00 00 00           	jle	0x100009982 <_pcc_evaluate_rule_const+0x92>
10000997d: e9 2c 00 00 00              	jmp	0x1000099ae <_pcc_evaluate_rule_const+0xbe>
100009982: 48 8b 4d c8                 	movq	-56(%rbp), %rcx
100009986: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000998a: 48 03 48 08                 	addq	8(%rax), %rcx
10000998e: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009992: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009996: 48 8b 40 08                 	movq	8(%rax), %rax
10000999a: 48 3b 45 e0                 	cmpq	-32(%rbp), %rax
10000999e: 0f 85 05 00 00 00           	jne	0x1000099a9 <_pcc_evaluate_rule_const+0xb9>
1000099a4: e9 40 00 00 00              	jmp	0x1000099e9 <_pcc_evaluate_rule_const+0xf9>
1000099a9: e9 2d 00 00 00              	jmp	0x1000099db <_pcc_evaluate_rule_const+0xeb>
1000099ae: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
1000099b2: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000099b6: 48 89 48 08                 	movq	%rcx, 8(%rax)
1000099ba: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000099be: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000099c5: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
1000099c9: 48 83 c6 30                 	addq	$48, %rsi
1000099cd: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
1000099d1: e8 5a 90 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
1000099d6: e9 0e 00 00 00              	jmp	0x1000099e9 <_pcc_evaluate_rule_const+0xf9>
1000099db: 8b 45 ec                    	movl	-20(%rbp), %eax
1000099de: 83 c0 01                    	addl	$1, %eax
1000099e1: 89 45 ec                    	movl	%eax, -20(%rbp)
1000099e4: e9 47 ff ff ff              	jmp	0x100009930 <_pcc_evaluate_rule_const+0x40>
1000099e9: 48 8b 45 f8                 	movq	-8(%rbp), %rax
1000099ed: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
1000099f4: 48 8d 35 d5 00 00 00        	leaq	213(%rip), %rsi         ## 0x100009ad0 <_pcc_action_const_0>
1000099fb: 31 c0                       	xorl	%eax, %eax
1000099fd: 89 c1                       	movl	%eax, %ecx
1000099ff: 48 89 ca                    	movq	%rcx, %rdx
100009a02: e8 a9 f3 ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100009a07: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100009a0b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009a0f: 48 8b 48 48                 	movq	72(%rax), %rcx
100009a13: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100009a17: 48 89 48 38                 	movq	%rcx, 56(%rax)
100009a1b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009a1f: 48 8b 48 08                 	movq	8(%rax), %rcx
100009a23: 48 8b 45 c0                 	movq	-64(%rbp), %rax
100009a27: 48 89 48 40                 	movq	%rcx, 64(%rax)
100009a2b: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009a2f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100009a36: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009a3a: 48 83 c6 30                 	addq	$48, %rsi
100009a3e: 48 8b 55 c0                 	movq	-64(%rbp), %rdx
100009a42: e8 d9 9e ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100009a47: 48 8b 45 f8                 	movq	-8(%rbp), %rax
100009a4b: 48 8b 48 10                 	movq	16(%rax), %rcx
100009a4f: 48 83 c1 ff                 	addq	$-1, %rcx
100009a53: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009a57: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009a5b: 48 83 c4 40                 	addq	$64, %rsp
100009a5f: 5d                          	popq	%rbp
100009a60: c3                          	retq
100009a61: 66 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00	nopw	%cs:(%rax,%rax)

0000000100009a70 <_pcc_action_consts_0>:
100009a70: 55                          	pushq	%rbp
100009a71: 48 89 e5                    	movq	%rsp, %rbp
100009a74: 48 83 ec 20                 	subq	$32, %rsp
100009a78: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009a7c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009a80: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009a84: 48 8d 3d cd 23 00 00        	leaq	9165(%rip), %rdi        ## 0x10000be58 <_strnlen+0x10000be58>
100009a8b: b0 00                       	movb	$0, %al
100009a8d: e8 d3 21 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009a92: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009a96: 48 8b 40 08                 	movq	8(%rax), %rax
100009a9a: 48 8b 00                    	movq	(%rax), %rax
100009a9d: 48 8b 38                    	movq	(%rax), %rdi
100009aa0: e8 8a 21 00 00              	callq	0x10000bc2f <_strnlen+0x10000bc2f>
100009aa5: 89 c7                       	movl	%eax, %edi
100009aa7: be 01 00 00 00              	movl	$1, %esi
100009aac: e8 1f 78 ff ff              	callq	0x1000012d0 <_print_bin>
100009ab1: 48 8d 3d a9 22 00 00        	leaq	8873(%rip), %rdi        ## 0x10000bd61 <_strnlen+0x10000bd61>
100009ab8: b0 00                       	movb	$0, %al
100009aba: e8 a6 21 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009abf: 48 83 c4 20                 	addq	$32, %rsp
100009ac3: 5d                          	popq	%rbp
100009ac4: c3                          	retq
100009ac5: 66 66 2e 0f 1f 84 00 00 00 00 00    	nopw	%cs:(%rax,%rax)

0000000100009ad0 <_pcc_action_const_0>:
100009ad0: 55                          	pushq	%rbp
100009ad1: 48 89 e5                    	movq	%rsp, %rbp
100009ad4: 48 83 ec 20                 	subq	$32, %rsp
100009ad8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009adc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009ae0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009ae4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009ae8: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
100009aec: 48 83 c6 08                 	addq	$8, %rsi
100009af0: 48 83 c6 30                 	addq	$48, %rsi
100009af4: e8 37 f8 ff ff              	callq	0x100009330 <_pcc_get_capture_string>
100009af9: 48 89 c1                    	movq	%rax, %rcx
100009afc: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009b00: 48 89 08                    	movq	%rcx, (%rax)
100009b03: 48 83 c4 20                 	addq	$32, %rsp
100009b07: 5d                          	popq	%rbp
100009b08: c3                          	retq
100009b09: 0f 1f 80 00 00 00 00        	nopl	(%rax)

0000000100009b10 <_pcc_capture_table__resize>:
100009b10: 55                          	pushq	%rbp
100009b11: 48 89 e5                    	movq	%rsp, %rbp
100009b14: 48 83 ec 30                 	subq	$48, %rsp
100009b18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009b1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009b20: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009b24: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009b28: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009b2c: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009b30: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009b34: 48 3b 41 10                 	cmpq	16(%rcx), %rax
100009b38: 0f 83 29 00 00 00           	jae	0x100009b67 <_pcc_capture_table__resize+0x57>
100009b3e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009b42: 48 8b 00                    	movq	(%rax), %rax
100009b45: 48 6b 4d e0 18              	imulq	$24, -32(%rbp), %rcx
100009b4a: 48 01 c8                    	addq	%rcx, %rax
100009b4d: 48 8b 78 10                 	movq	16(%rax), %rdi
100009b51: e8 f1 20 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
100009b56: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009b5a: 48 83 c0 01                 	addq	$1, %rax
100009b5e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009b62: e9 c5 ff ff ff              	jmp	0x100009b2c <_pcc_capture_table__resize+0x1c>
100009b67: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009b6b: 48 8b 40 08                 	movq	8(%rax), %rax
100009b6f: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100009b73: 0f 83 9d 00 00 00           	jae	0x100009c16 <_pcc_capture_table__resize+0x106>
100009b79: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009b7d: 48 8b 40 08                 	movq	8(%rax), %rax
100009b81: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009b85: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100009b8a: 0f 85 08 00 00 00           	jne	0x100009b98 <_pcc_capture_table__resize+0x88>
100009b90: 48 c7 45 d8 02 00 00 00     	movq	$2, -40(%rbp)
100009b98: e9 00 00 00 00              	jmp	0x100009b9d <_pcc_capture_table__resize+0x8d>
100009b9d: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100009ba1: 31 c0                       	xorl	%eax, %eax
100009ba3: 48 3b 4d e8                 	cmpq	-24(%rbp), %rcx
100009ba7: 88 45 d7                    	movb	%al, -41(%rbp)
100009baa: 0f 83 0b 00 00 00           	jae	0x100009bbb <_pcc_capture_table__resize+0xab>
100009bb0: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100009bb5: 0f 95 c0                    	setne	%al
100009bb8: 88 45 d7                    	movb	%al, -41(%rbp)
100009bbb: 8a 45 d7                    	movb	-41(%rbp), %al
100009bbe: a8 01                       	testb	$1, %al
100009bc0: 0f 85 05 00 00 00           	jne	0x100009bcb <_pcc_capture_table__resize+0xbb>
100009bc6: e9 11 00 00 00              	jmp	0x100009bdc <_pcc_capture_table__resize+0xcc>
100009bcb: 48 8b 45 d8                 	movq	-40(%rbp), %rax
100009bcf: 48 c1 e0 01                 	shlq	$1, %rax
100009bd3: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009bd7: e9 c1 ff ff ff              	jmp	0x100009b9d <_pcc_capture_table__resize+0x8d>
100009bdc: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
100009be1: 0f 85 08 00 00 00           	jne	0x100009bef <_pcc_capture_table__resize+0xdf>
100009be7: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009beb: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009bef: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009bf3: 48 8b 38                    	movq	(%rax), %rdi
100009bf6: 48 6b 75 d8 18              	imulq	$24, -40(%rbp), %rsi
100009bfb: e8 e0 a2 ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
100009c00: 48 89 c1                    	movq	%rax, %rcx
100009c03: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c07: 48 89 08                    	movq	%rcx, (%rax)
100009c0a: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
100009c0e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c12: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009c16: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c1a: 48 8b 40 10                 	movq	16(%rax), %rax
100009c1e: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009c22: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009c26: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
100009c2a: 0f 83 55 00 00 00           	jae	0x100009c85 <_pcc_capture_table__resize+0x175>
100009c30: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c34: 48 8b 00                    	movq	(%rax), %rax
100009c37: 48 6b 4d e0 18              	imulq	$24, -32(%rbp), %rcx
100009c3c: 48 01 c8                    	addq	%rcx, %rax
100009c3f: 48 c7 00 00 00 00 00        	movq	$0, (%rax)
100009c46: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c4a: 48 8b 00                    	movq	(%rax), %rax
100009c4d: 48 6b 4d e0 18              	imulq	$24, -32(%rbp), %rcx
100009c52: 48 01 c8                    	addq	%rcx, %rax
100009c55: 48 c7 40 08 00 00 00 00     	movq	$0, 8(%rax)
100009c5d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c61: 48 8b 00                    	movq	(%rax), %rax
100009c64: 48 6b 4d e0 18              	imulq	$24, -32(%rbp), %rcx
100009c69: 48 01 c8                    	addq	%rcx, %rax
100009c6c: 48 c7 40 10 00 00 00 00     	movq	$0, 16(%rax)
100009c74: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009c78: 48 83 c0 01                 	addq	$1, %rax
100009c7c: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009c80: e9 9d ff ff ff              	jmp	0x100009c22 <_pcc_capture_table__resize+0x112>
100009c85: 48 8b 4d e8                 	movq	-24(%rbp), %rcx
100009c89: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009c8d: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009c91: 48 83 c4 30                 	addq	$48, %rsp
100009c95: 5d                          	popq	%rbp
100009c96: c3                          	retq
100009c97: 66 0f 1f 84 00 00 00 00 00  	nopw	(%rax,%rax)

0000000100009ca0 <_pcc_action_macro_call_0>:
100009ca0: 55                          	pushq	%rbp
100009ca1: 48 89 e5                    	movq	%rsp, %rbp
100009ca4: 48 83 ec 40                 	subq	$64, %rsp
100009ca8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009cac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009cb0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009cb4: 48 8d 05 6d 63 00 00        	leaq	25453(%rip), %rax       ## 0x100010028 <_macro_functions>
100009cbb: 48 8b 38                    	movq	(%rax), %rdi
100009cbe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009cc2: 48 8b 40 08                 	movq	8(%rax), %rax
100009cc6: 48 8b 00                    	movq	(%rax), %rax
100009cc9: 48 8b 30                    	movq	(%rax), %rsi
100009ccc: e8 4f 6f ff ff              	callq	0x100000c20 <_bh_ht_get>
100009cd1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009cd5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
100009cd9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009cdd: 48 8b 40 20                 	movq	32(%rax), %rax
100009ce1: 48 8b 30                    	movq	(%rax), %rsi
100009ce4: e8 47 f6 ff ff              	callq	0x100009330 <_pcc_get_capture_string>
100009ce9: 48 89 c7                    	movq	%rax, %rdi
100009cec: 48 8b 45 e0                 	movq	-32(%rbp), %rax
100009cf0: 48 8b 08                    	movq	(%rax), %rcx
100009cf3: 48 89 0c 24                 	movq	%rcx, (%rsp)
100009cf7: 48 8b 48 08                 	movq	8(%rax), %rcx
100009cfb: 48 89 4c 24 08              	movq	%rcx, 8(%rsp)
100009d00: 48 8b 40 10                 	movq	16(%rax), %rax
100009d04: 48 89 44 24 10              	movq	%rax, 16(%rsp)
100009d09: e8 a2 7d ff ff              	callq	0x100001ab0 <_run_macro>
100009d0e: 48 83 c4 40                 	addq	$64, %rsp
100009d12: 5d                          	popq	%rbp
100009d13: c3                          	retq
100009d14: 66 66 66 2e 0f 1f 84 00 00 00 00 00 	nopw	%cs:(%rax,%rax)

0000000100009d20 <_pcc_action_instruction_0>:
100009d20: 55                          	pushq	%rbp
100009d21: 48 89 e5                    	movq	%rsp, %rbp
100009d24: 48 83 ec 20                 	subq	$32, %rsp
100009d28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009d2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009d30: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009d34: 48 8d 3d 37 21 00 00        	leaq	8503(%rip), %rdi        ## 0x10000be72 <_strnlen+0x10000be72>
100009d3b: b0 00                       	movb	$0, %al
100009d3d: e8 23 1f 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009d42: 48 83 c4 20                 	addq	$32, %rsp
100009d46: 5d                          	popq	%rbp
100009d47: c3                          	retq
100009d48: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100009d50 <_pcc_action_instruction_1>:
100009d50: 55                          	pushq	%rbp
100009d51: 48 89 e5                    	movq	%rsp, %rbp
100009d54: 48 83 ec 20                 	subq	$32, %rsp
100009d58: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009d5c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009d60: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009d64: 48 8d 3d 4d 21 00 00        	leaq	8525(%rip), %rdi        ## 0x10000beb8 <_strnlen+0x10000beb8>
100009d6b: b0 00                       	movb	$0, %al
100009d6d: e8 f3 1e 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009d72: 48 83 c4 20                 	addq	$32, %rsp
100009d76: 5d                          	popq	%rbp
100009d77: c3                          	retq
100009d78: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100009d80 <_pcc_action_instruction_2>:
100009d80: 55                          	pushq	%rbp
100009d81: 48 89 e5                    	movq	%rsp, %rbp
100009d84: 48 83 ec 20                 	subq	$32, %rsp
100009d88: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009d8c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009d90: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009d94: 48 8d 3d 25 21 00 00        	leaq	8485(%rip), %rdi        ## 0x10000bec0 <_strnlen+0x10000bec0>
100009d9b: b0 00                       	movb	$0, %al
100009d9d: e8 c3 1e 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009da2: 48 83 c4 20                 	addq	$32, %rsp
100009da6: 5d                          	popq	%rbp
100009da7: c3                          	retq
100009da8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100009db0 <_pcc_action_instruction_3>:
100009db0: 55                          	pushq	%rbp
100009db1: 48 89 e5                    	movq	%rsp, %rbp
100009db4: 48 83 ec 20                 	subq	$32, %rsp
100009db8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
100009dbc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
100009dc0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
100009dc4: 48 8d 3d 21 21 00 00        	leaq	8481(%rip), %rdi        ## 0x10000beec <_strnlen+0x10000beec>
100009dcb: b0 00                       	movb	$0, %al
100009dcd: e8 93 1e 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
100009dd2: 48 83 c4 20                 	addq	$32, %rsp
100009dd6: 5d                          	popq	%rbp
100009dd7: c3                          	retq
100009dd8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

0000000100009de0 <_pcc_evaluate_rule_jmpcond>:
100009de0: 55                          	pushq	%rbp
100009de1: 48 89 e5                    	movq	%rsp, %rbp
100009de4: 48 81 ec 90 00 00 00        	subq	$144, %rsp
100009deb: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
100009def: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009df3: e8 d8 a7 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
100009df8: 48 89 45 e8                 	movq	%rax, -24(%rbp)
100009dfc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e00: 48 8b 48 08                 	movq	8(%rax), %rcx
100009e04: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009e08: 48 89 48 48                 	movq	%rcx, 72(%rax)
100009e0c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e10: 48 8b 48 10                 	movq	16(%rax), %rcx
100009e14: 48 83 c1 01                 	addq	$1, %rcx
100009e18: 48 89 48 10                 	movq	%rcx, 16(%rax)
100009e1c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e20: 48 8b 40 08                 	movq	8(%rax), %rax
100009e24: 48 89 45 e0                 	movq	%rax, -32(%rbp)
100009e28: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009e2c: 48 8b 40 40                 	movq	64(%rax), %rax
100009e30: 48 89 45 d8                 	movq	%rax, -40(%rbp)
100009e34: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009e38: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100009e3c: 48 83 c2 30                 	addq	$48, %rdx
100009e40: 48 8d 35 89 06 00 00        	leaq	1673(%rip), %rsi        ## 0x10000a4d0 <_pcc_evaluate_rule_jmpzero>
100009e47: 31 c0                       	xorl	%eax, %eax
100009e49: 89 c1                       	movl	%eax, %ecx
100009e4b: e8 70 7e ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100009e50: 83 f8 00                    	cmpl	$0, %eax
100009e53: 0f 85 05 00 00 00           	jne	0x100009e5e <_pcc_evaluate_rule_jmpcond+0x7e>
100009e59: e9 05 00 00 00              	jmp	0x100009e63 <_pcc_evaluate_rule_jmpcond+0x83>
100009e5e: e9 86 00 00 00              	jmp	0x100009ee9 <_pcc_evaluate_rule_jmpcond+0x109>
100009e63: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
100009e67: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e6b: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009e6f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e73: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100009e7a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100009e7e: 48 83 c6 30                 	addq	$48, %rsi
100009e82: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
100009e86: e8 a5 8b ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100009e8b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009e8f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100009e96: 48 8d 35 73 0b 00 00        	leaq	2931(%rip), %rsi        ## 0x10000aa10 <_pcc_action_jmpcond_0>
100009e9d: 31 c0                       	xorl	%eax, %eax
100009e9f: 89 c1                       	movl	%eax, %ecx
100009ea1: 48 89 ca                    	movq	%rcx, %rdx
100009ea4: e8 07 ef ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
100009ea9: 48 89 45 d0                 	movq	%rax, -48(%rbp)
100009ead: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009eb1: 48 8b 48 48                 	movq	72(%rax), %rcx
100009eb5: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009eb9: 48 89 48 38                 	movq	%rcx, 56(%rax)
100009ebd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009ec1: 48 8b 48 08                 	movq	8(%rax), %rcx
100009ec5: 48 8b 45 d0                 	movq	-48(%rbp), %rax
100009ec9: 48 89 48 40                 	movq	%rcx, 64(%rax)
100009ecd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009ed1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100009ed8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100009edc: 48 83 c6 30                 	addq	$48, %rsi
100009ee0: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
100009ee4: e8 37 9a ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
100009ee9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009eed: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100009ef1: 48 83 c2 30                 	addq	$48, %rdx
100009ef5: 48 8d 35 64 a7 ff ff        	leaq	-22684(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
100009efc: 31 c0                       	xorl	%eax, %eax
100009efe: 89 c1                       	movl	%eax, %ecx
100009f00: e8 bb 7d ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
100009f05: 83 f8 00                    	cmpl	$0, %eax
100009f08: 0f 85 05 00 00 00           	jne	0x100009f13 <_pcc_evaluate_rule_jmpcond+0x133>
100009f0e: e9 2d 04 00 00              	jmp	0x10000a340 <_pcc_evaluate_rule_jmpcond+0x560>
100009f13: c7 45 cc 00 00 00 00        	movl	$0, -52(%rbp)
100009f1a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f1e: 48 8b 40 08                 	movq	8(%rax), %rax
100009f22: 48 89 45 c0                 	movq	%rax, -64(%rbp)
100009f26: 48 8b 45 e8                 	movq	-24(%rbp), %rax
100009f2a: 48 8b 40 40                 	movq	64(%rax), %rax
100009f2e: 48 89 45 b8                 	movq	%rax, -72(%rbp)
100009f32: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009f36: be 02 00 00 00              	movl	$2, %esi
100009f3b: e8 50 8b ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
100009f40: 48 83 f8 02                 	cmpq	$2, %rax
100009f44: 0f 82 3b 00 00 00           	jb	0x100009f85 <_pcc_evaluate_rule_jmpcond+0x1a5>
100009f4a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f4e: 48 8b 40 18                 	movq	24(%rax), %rax
100009f52: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009f56: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009f5a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
100009f5e: 83 f8 6f                    	cmpl	$111, %eax
100009f61: 0f 85 1e 00 00 00           	jne	0x100009f85 <_pcc_evaluate_rule_jmpcond+0x1a5>
100009f67: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f6b: 48 8b 40 18                 	movq	24(%rax), %rax
100009f6f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
100009f73: 48 8b 49 08                 	movq	8(%rcx), %rcx
100009f77: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
100009f7c: 83 f8 72                    	cmpl	$114, %eax
100009f7f: 0f 84 05 00 00 00           	je	0x100009f8a <_pcc_evaluate_rule_jmpcond+0x1aa>
100009f85: e9 2c 00 00 00              	jmp	0x100009fb6 <_pcc_evaluate_rule_jmpcond+0x1d6>
100009f8a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f8e: 48 8b 48 08                 	movq	8(%rax), %rcx
100009f92: 48 83 c1 02                 	addq	$2, %rcx
100009f96: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009f9a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009f9e: 48 8b 40 08                 	movq	8(%rax), %rax
100009fa2: 48 3b 45 c0                 	cmpq	-64(%rbp), %rax
100009fa6: 0f 85 05 00 00 00           	jne	0x100009fb1 <_pcc_evaluate_rule_jmpcond+0x1d1>
100009fac: e9 40 00 00 00              	jmp	0x100009ff1 <_pcc_evaluate_rule_jmpcond+0x211>
100009fb1: e9 2d 00 00 00              	jmp	0x100009fe3 <_pcc_evaluate_rule_jmpcond+0x203>
100009fb6: 48 8b 4d c0                 	movq	-64(%rbp), %rcx
100009fba: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009fbe: 48 89 48 08                 	movq	%rcx, 8(%rax)
100009fc2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
100009fc6: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
100009fcd: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
100009fd1: 48 83 c6 30                 	addq	$48, %rsi
100009fd5: 48 8b 55 b8                 	movq	-72(%rbp), %rdx
100009fd9: e8 52 8a ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
100009fde: e9 0e 00 00 00              	jmp	0x100009ff1 <_pcc_evaluate_rule_jmpcond+0x211>
100009fe3: 8b 45 cc                    	movl	-52(%rbp), %eax
100009fe6: 83 c0 01                    	addl	$1, %eax
100009fe9: 89 45 cc                    	movl	%eax, -52(%rbp)
100009fec: e9 29 ff ff ff              	jmp	0x100009f1a <_pcc_evaluate_rule_jmpcond+0x13a>
100009ff1: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
100009ff5: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
100009ff9: 48 83 c2 30                 	addq	$48, %rdx
100009ffd: 48 8d 35 5c a6 ff ff        	leaq	-22948(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
10000a004: 31 c0                       	xorl	%eax, %eax
10000a006: 89 c1                       	movl	%eax, %ecx
10000a008: e8 b3 7c ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a00d: 83 f8 00                    	cmpl	$0, %eax
10000a010: 0f 85 05 00 00 00           	jne	0x10000a01b <_pcc_evaluate_rule_jmpcond+0x23b>
10000a016: e9 25 03 00 00              	jmp	0x10000a340 <_pcc_evaluate_rule_jmpcond+0x560>
10000a01b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a01f: 48 8b 40 08                 	movq	8(%rax), %rax
10000a023: 48 89 45 b0                 	movq	%rax, -80(%rbp)
10000a027: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a02b: 48 8b 40 40                 	movq	64(%rax), %rax
10000a02f: 48 89 45 a8                 	movq	%rax, -88(%rbp)
10000a033: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a037: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a03b: 48 83 c2 30                 	addq	$48, %rdx
10000a03f: 48 8d 35 fa 09 00 00        	leaq	2554(%rip), %rsi        ## 0x10000aa40 <_pcc_evaluate_rule_jmpless>
10000a046: 31 c0                       	xorl	%eax, %eax
10000a048: 89 c1                       	movl	%eax, %ecx
10000a04a: e8 71 7c ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a04f: 83 f8 00                    	cmpl	$0, %eax
10000a052: 0f 85 05 00 00 00           	jne	0x10000a05d <_pcc_evaluate_rule_jmpcond+0x27d>
10000a058: e9 05 00 00 00              	jmp	0x10000a062 <_pcc_evaluate_rule_jmpcond+0x282>
10000a05d: e9 86 00 00 00              	jmp	0x10000a0e8 <_pcc_evaluate_rule_jmpcond+0x308>
10000a062: 48 8b 4d b0                 	movq	-80(%rbp), %rcx
10000a066: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a06a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a06e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a072: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a079: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a07d: 48 83 c6 30                 	addq	$48, %rsi
10000a081: 48 8b 55 a8                 	movq	-88(%rbp), %rdx
10000a085: e8 a6 89 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a08a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a08e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a095: 48 8d 35 e4 0f 00 00        	leaq	4068(%rip), %rsi        ## 0x10000b080 <_pcc_action_jmpcond_1>
10000a09c: 31 c0                       	xorl	%eax, %eax
10000a09e: 89 c1                       	movl	%eax, %ecx
10000a0a0: 48 89 ca                    	movq	%rcx, %rdx
10000a0a3: e8 08 ed ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000a0a8: 48 89 45 a0                 	movq	%rax, -96(%rbp)
10000a0ac: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a0b0: 48 8b 48 48                 	movq	72(%rax), %rcx
10000a0b4: 48 8b 45 a0                 	movq	-96(%rbp), %rax
10000a0b8: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000a0bc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a0c0: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a0c4: 48 8b 45 a0                 	movq	-96(%rbp), %rax
10000a0c8: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000a0cc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a0d0: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a0d7: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a0db: 48 83 c6 30                 	addq	$48, %rsi
10000a0df: 48 8b 55 a0                 	movq	-96(%rbp), %rdx
10000a0e3: e8 38 98 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000a0e8: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a0ec: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a0f0: 48 83 c2 30                 	addq	$48, %rdx
10000a0f4: 48 8d 35 65 a5 ff ff        	leaq	-23195(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
10000a0fb: 31 c0                       	xorl	%eax, %eax
10000a0fd: 89 c1                       	movl	%eax, %ecx
10000a0ff: e8 bc 7b ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a104: 83 f8 00                    	cmpl	$0, %eax
10000a107: 0f 85 05 00 00 00           	jne	0x10000a112 <_pcc_evaluate_rule_jmpcond+0x332>
10000a10d: e9 2e 02 00 00              	jmp	0x10000a340 <_pcc_evaluate_rule_jmpcond+0x560>
10000a112: c7 45 9c 00 00 00 00        	movl	$0, -100(%rbp)
10000a119: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a11d: 48 8b 40 08                 	movq	8(%rax), %rax
10000a121: 48 89 45 90                 	movq	%rax, -112(%rbp)
10000a125: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a129: 48 8b 40 40                 	movq	64(%rax), %rax
10000a12d: 48 89 45 88                 	movq	%rax, -120(%rbp)
10000a131: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a135: be 02 00 00 00              	movl	$2, %esi
10000a13a: e8 51 89 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a13f: 48 83 f8 02                 	cmpq	$2, %rax
10000a143: 0f 82 3b 00 00 00           	jb	0x10000a184 <_pcc_evaluate_rule_jmpcond+0x3a4>
10000a149: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a14d: 48 8b 40 18                 	movq	24(%rax), %rax
10000a151: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a155: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a159: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a15d: 83 f8 6f                    	cmpl	$111, %eax
10000a160: 0f 85 1e 00 00 00           	jne	0x10000a184 <_pcc_evaluate_rule_jmpcond+0x3a4>
10000a166: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a16a: 48 8b 40 18                 	movq	24(%rax), %rax
10000a16e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a172: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a176: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000a17b: 83 f8 72                    	cmpl	$114, %eax
10000a17e: 0f 84 05 00 00 00           	je	0x10000a189 <_pcc_evaluate_rule_jmpcond+0x3a9>
10000a184: e9 2c 00 00 00              	jmp	0x10000a1b5 <_pcc_evaluate_rule_jmpcond+0x3d5>
10000a189: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a18d: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a191: 48 83 c1 02                 	addq	$2, %rcx
10000a195: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a199: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a19d: 48 8b 40 08                 	movq	8(%rax), %rax
10000a1a1: 48 3b 45 90                 	cmpq	-112(%rbp), %rax
10000a1a5: 0f 85 05 00 00 00           	jne	0x10000a1b0 <_pcc_evaluate_rule_jmpcond+0x3d0>
10000a1ab: e9 40 00 00 00              	jmp	0x10000a1f0 <_pcc_evaluate_rule_jmpcond+0x410>
10000a1b0: e9 2d 00 00 00              	jmp	0x10000a1e2 <_pcc_evaluate_rule_jmpcond+0x402>
10000a1b5: 48 8b 4d 90                 	movq	-112(%rbp), %rcx
10000a1b9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a1bd: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a1c1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a1c5: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a1cc: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a1d0: 48 83 c6 30                 	addq	$48, %rsi
10000a1d4: 48 8b 55 88                 	movq	-120(%rbp), %rdx
10000a1d8: e8 53 88 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a1dd: e9 0e 00 00 00              	jmp	0x10000a1f0 <_pcc_evaluate_rule_jmpcond+0x410>
10000a1e2: 8b 45 9c                    	movl	-100(%rbp), %eax
10000a1e5: 83 c0 01                    	addl	$1, %eax
10000a1e8: 89 45 9c                    	movl	%eax, -100(%rbp)
10000a1eb: e9 29 ff ff ff              	jmp	0x10000a119 <_pcc_evaluate_rule_jmpcond+0x339>
10000a1f0: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a1f4: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a1f8: 48 83 c2 30                 	addq	$48, %rdx
10000a1fc: 48 8d 35 5d a4 ff ff        	leaq	-23459(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
10000a203: 31 c0                       	xorl	%eax, %eax
10000a205: 89 c1                       	movl	%eax, %ecx
10000a207: e8 b4 7a ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a20c: 83 f8 00                    	cmpl	$0, %eax
10000a20f: 0f 85 05 00 00 00           	jne	0x10000a21a <_pcc_evaluate_rule_jmpcond+0x43a>
10000a215: e9 26 01 00 00              	jmp	0x10000a340 <_pcc_evaluate_rule_jmpcond+0x560>
10000a21a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a21e: 48 8b 40 08                 	movq	8(%rax), %rax
10000a222: 48 89 45 80                 	movq	%rax, -128(%rbp)
10000a226: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a22a: 48 8b 40 40                 	movq	64(%rax), %rax
10000a22e: 48 89 85 78 ff ff ff        	movq	%rax, -136(%rbp)
10000a235: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a239: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a23d: 48 83 c2 30                 	addq	$48, %rdx
10000a241: 48 8d 35 68 0e 00 00        	leaq	3688(%rip), %rsi        ## 0x10000b0b0 <_pcc_evaluate_rule_jmpmore>
10000a248: 31 c0                       	xorl	%eax, %eax
10000a24a: 89 c1                       	movl	%eax, %ecx
10000a24c: e8 6f 7a ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a251: 83 f8 00                    	cmpl	$0, %eax
10000a254: 0f 85 05 00 00 00           	jne	0x10000a25f <_pcc_evaluate_rule_jmpcond+0x47f>
10000a25a: e9 05 00 00 00              	jmp	0x10000a264 <_pcc_evaluate_rule_jmpcond+0x484>
10000a25f: e9 95 00 00 00              	jmp	0x10000a2f9 <_pcc_evaluate_rule_jmpcond+0x519>
10000a264: 48 8b 4d 80                 	movq	-128(%rbp), %rcx
10000a268: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a26c: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a270: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a274: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a27b: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a27f: 48 83 c6 30                 	addq	$48, %rsi
10000a283: 48 8b 95 78 ff ff ff        	movq	-136(%rbp), %rdx
10000a28a: e8 a1 87 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a28f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a293: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a29a: 48 8d 35 3f 14 00 00        	leaq	5183(%rip), %rsi        ## 0x10000b6e0 <_pcc_action_jmpcond_2>
10000a2a1: 31 c0                       	xorl	%eax, %eax
10000a2a3: 89 c1                       	movl	%eax, %ecx
10000a2a5: 48 89 ca                    	movq	%rcx, %rdx
10000a2a8: e8 03 eb ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000a2ad: 48 89 85 70 ff ff ff        	movq	%rax, -144(%rbp)
10000a2b4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a2b8: 48 8b 48 48                 	movq	72(%rax), %rcx
10000a2bc: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000a2c3: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000a2c7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a2cb: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a2cf: 48 8b 85 70 ff ff ff        	movq	-144(%rbp), %rax
10000a2d6: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000a2da: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a2de: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a2e5: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a2e9: 48 83 c6 30                 	addq	$48, %rsi
10000a2ed: 48 8b 95 70 ff ff ff        	movq	-144(%rbp), %rdx
10000a2f4: e8 27 96 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000a2f9: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a2fd: 48 8b 55 e8                 	movq	-24(%rbp), %rdx
10000a301: 48 83 c2 30                 	addq	$48, %rdx
10000a305: 48 8d 35 54 a3 ff ff        	leaq	-23724(%rip), %rsi      ## 0x100004660 <_pcc_evaluate_rule__>
10000a30c: 31 c0                       	xorl	%eax, %eax
10000a30e: 89 c1                       	movl	%eax, %ecx
10000a310: e8 ab 79 ff ff              	callq	0x100001cc0 <_pcc_apply_rule>
10000a315: 83 f8 00                    	cmpl	$0, %eax
10000a318: 0f 85 05 00 00 00           	jne	0x10000a323 <_pcc_evaluate_rule_jmpcond+0x543>
10000a31e: e9 1d 00 00 00              	jmp	0x10000a340 <_pcc_evaluate_rule_jmpcond+0x560>
10000a323: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a327: 48 8b 48 10                 	movq	16(%rax), %rcx
10000a32b: 48 83 c1 ff                 	addq	$-1, %rcx
10000a32f: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000a333: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a337: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000a33b: e9 25 00 00 00              	jmp	0x10000a365 <_pcc_evaluate_rule_jmpcond+0x585>
10000a340: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a344: 48 8b 48 10                 	movq	16(%rax), %rcx
10000a348: 48 83 c1 ff                 	addq	$-1, %rcx
10000a34c: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000a350: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a354: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a358: e8 33 95 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
10000a35d: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000a365: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a369: 48 81 c4 90 00 00 00        	addq	$144, %rsp
10000a370: 5d                          	popq	%rbp
10000a371: c3                          	retq
10000a372: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

000000010000a380 <_pcc_action_instruction_4>:
10000a380: 55                          	pushq	%rbp
10000a381: 48 89 e5                    	movq	%rsp, %rbp
10000a384: 48 83 ec 20                 	subq	$32, %rsp
10000a388: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a38c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a390: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a394: 48 8d 3d c6 19 00 00        	leaq	6598(%rip), %rdi        ## 0x10000bd61 <_strnlen+0x10000bd61>
10000a39b: b0 00                       	movb	$0, %al
10000a39d: e8 c3 18 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a3a2: 48 83 c4 20                 	addq	$32, %rsp
10000a3a6: 5d                          	popq	%rbp
10000a3a7: c3                          	retq
10000a3a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a3b0 <_pcc_action_instruction_5>:
10000a3b0: 55                          	pushq	%rbp
10000a3b1: 48 89 e5                    	movq	%rsp, %rbp
10000a3b4: 48 83 ec 20                 	subq	$32, %rsp
10000a3b8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a3bc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a3c0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a3c4: 48 8d 3d 3b 1b 00 00        	leaq	6971(%rip), %rdi        ## 0x10000bf06 <_strnlen+0x10000bf06>
10000a3cb: b0 00                       	movb	$0, %al
10000a3cd: e8 93 18 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a3d2: 48 83 c4 20                 	addq	$32, %rsp
10000a3d6: 5d                          	popq	%rbp
10000a3d7: c3                          	retq
10000a3d8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a3e0 <_pcc_action_instruction_6>:
10000a3e0: 55                          	pushq	%rbp
10000a3e1: 48 89 e5                    	movq	%rsp, %rbp
10000a3e4: 48 83 ec 20                 	subq	$32, %rsp
10000a3e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a3ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a3f0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a3f4: 48 8d 3d 44 1b 00 00        	leaq	6980(%rip), %rdi        ## 0x10000bf3f <_strnlen+0x10000bf3f>
10000a3fb: b0 00                       	movb	$0, %al
10000a3fd: e8 63 18 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a402: 48 83 c4 20                 	addq	$32, %rsp
10000a406: 5d                          	popq	%rbp
10000a407: c3                          	retq
10000a408: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a410 <_pcc_action_instruction_7>:
10000a410: 55                          	pushq	%rbp
10000a411: 48 89 e5                    	movq	%rsp, %rbp
10000a414: 48 83 ec 20                 	subq	$32, %rsp
10000a418: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a41c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a420: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a424: 48 8d 3d 24 1b 00 00        	leaq	6948(%rip), %rdi        ## 0x10000bf4f <_strnlen+0x10000bf4f>
10000a42b: b0 00                       	movb	$0, %al
10000a42d: e8 33 18 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a432: 48 83 c4 20                 	addq	$32, %rsp
10000a436: 5d                          	popq	%rbp
10000a437: c3                          	retq
10000a438: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a440 <_pcc_action_instruction_8>:
10000a440: 55                          	pushq	%rbp
10000a441: 48 89 e5                    	movq	%rsp, %rbp
10000a444: 48 83 ec 20                 	subq	$32, %rsp
10000a448: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a44c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a450: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a454: 48 8d 3d fb 1a 00 00        	leaq	6907(%rip), %rdi        ## 0x10000bf56 <_strnlen+0x10000bf56>
10000a45b: b0 00                       	movb	$0, %al
10000a45d: e8 03 18 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a462: 48 83 c4 20                 	addq	$32, %rsp
10000a466: 5d                          	popq	%rbp
10000a467: c3                          	retq
10000a468: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a470 <_pcc_action_instruction_9>:
10000a470: 55                          	pushq	%rbp
10000a471: 48 89 e5                    	movq	%rsp, %rbp
10000a474: 48 83 ec 20                 	subq	$32, %rsp
10000a478: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a47c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a480: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a484: 48 8d 3d d3 1a 00 00        	leaq	6867(%rip), %rdi        ## 0x10000bf5e <_strnlen+0x10000bf5e>
10000a48b: b0 00                       	movb	$0, %al
10000a48d: e8 d3 17 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a492: 48 83 c4 20                 	addq	$32, %rsp
10000a496: 5d                          	popq	%rbp
10000a497: c3                          	retq
10000a498: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a4a0 <_pcc_action_instruction_10>:
10000a4a0: 55                          	pushq	%rbp
10000a4a1: 48 89 e5                    	movq	%rsp, %rbp
10000a4a4: 48 83 ec 20                 	subq	$32, %rsp
10000a4a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000a4ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000a4b0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000a4b4: 48 8d 3d a6 18 00 00        	leaq	6310(%rip), %rdi        ## 0x10000bd61 <_strnlen+0x10000bd61>
10000a4bb: b0 00                       	movb	$0, %al
10000a4bd: e8 a3 17 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000a4c2: 48 83 c4 20                 	addq	$32, %rsp
10000a4c6: 5d                          	popq	%rbp
10000a4c7: c3                          	retq
10000a4c8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000a4d0 <_pcc_evaluate_rule_jmpzero>:
10000a4d0: 55                          	pushq	%rbp
10000a4d1: 48 89 e5                    	movq	%rsp, %rbp
10000a4d4: 48 83 ec 30                 	subq	$48, %rsp
10000a4d8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000a4dc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a4e0: e8 eb a0 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
10000a4e5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000a4e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a4ed: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a4f1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a4f5: 48 89 48 48                 	movq	%rcx, 72(%rax)
10000a4f9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a4fd: 48 8b 48 10                 	movq	16(%rax), %rcx
10000a501: 48 83 c1 01                 	addq	$1, %rcx
10000a505: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000a509: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a50d: 48 8b 40 08                 	movq	8(%rax), %rax
10000a511: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000a515: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a519: 48 8b 40 40                 	movq	64(%rax), %rax
10000a51d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000a521: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a525: be 04 00 00 00              	movl	$4, %esi
10000a52a: e8 61 85 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a52f: 48 83 f8 04                 	cmpq	$4, %rax
10000a533: 0f 82 77 00 00 00           	jb	0x10000a5b0 <_pcc_evaluate_rule_jmpzero+0xe0>
10000a539: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a53d: 48 8b 40 18                 	movq	24(%rax), %rax
10000a541: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a545: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a549: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a54d: 83 f8 7a                    	cmpl	$122, %eax
10000a550: 0f 85 5a 00 00 00           	jne	0x10000a5b0 <_pcc_evaluate_rule_jmpzero+0xe0>
10000a556: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a55a: 48 8b 40 18                 	movq	24(%rax), %rax
10000a55e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a562: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a566: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000a56b: 83 f8 65                    	cmpl	$101, %eax
10000a56e: 0f 85 3c 00 00 00           	jne	0x10000a5b0 <_pcc_evaluate_rule_jmpzero+0xe0>
10000a574: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a578: 48 8b 40 18                 	movq	24(%rax), %rax
10000a57c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a580: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a584: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000a589: 83 f8 72                    	cmpl	$114, %eax
10000a58c: 0f 85 1e 00 00 00           	jne	0x10000a5b0 <_pcc_evaluate_rule_jmpzero+0xe0>
10000a592: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a596: 48 8b 40 18                 	movq	24(%rax), %rax
10000a59a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a59e: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a5a2: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000a5a7: 83 f8 6f                    	cmpl	$111, %eax
10000a5aa: 0f 84 05 00 00 00           	je	0x10000a5b5 <_pcc_evaluate_rule_jmpzero+0xe5>
10000a5b0: e9 15 00 00 00              	jmp	0x10000a5ca <_pcc_evaluate_rule_jmpzero+0xfa>
10000a5b5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a5b9: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a5bd: 48 83 c1 04                 	addq	$4, %rcx
10000a5c1: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a5c5: e9 8f 03 00 00              	jmp	0x10000a959 <_pcc_evaluate_rule_jmpzero+0x489>
10000a5ca: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a5ce: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a5d2: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a5d6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a5da: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a5e1: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a5e5: 48 83 c6 30                 	addq	$48, %rsi
10000a5e9: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a5ed: e8 3e 84 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a5f2: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a5f6: be 01 00 00 00              	movl	$1, %esi
10000a5fb: e8 90 84 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a600: 48 83 f8 01                 	cmpq	$1, %rax
10000a604: 0f 82 1d 00 00 00           	jb	0x10000a627 <_pcc_evaluate_rule_jmpzero+0x157>
10000a60a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a60e: 48 8b 40 18                 	movq	24(%rax), %rax
10000a612: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a616: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a61a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a61e: 83 f8 30                    	cmpl	$48, %eax
10000a621: 0f 84 05 00 00 00           	je	0x10000a62c <_pcc_evaluate_rule_jmpzero+0x15c>
10000a627: e9 15 00 00 00              	jmp	0x10000a641 <_pcc_evaluate_rule_jmpzero+0x171>
10000a62c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a630: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a634: 48 83 c1 01                 	addq	$1, %rcx
10000a638: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a63c: e9 18 03 00 00              	jmp	0x10000a959 <_pcc_evaluate_rule_jmpzero+0x489>
10000a641: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a645: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a649: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a64d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a651: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a658: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a65c: 48 83 c6 30                 	addq	$48, %rsi
10000a660: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a664: e8 c7 83 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a669: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a66d: be 06 00 00 00              	movl	$6, %esi
10000a672: e8 19 84 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a677: 48 83 f8 06                 	cmpq	$6, %rax
10000a67b: 0f 82 b3 00 00 00           	jb	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a681: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a685: 48 8b 40 18                 	movq	24(%rax), %rax
10000a689: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a68d: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a691: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a695: 83 f8 69                    	cmpl	$105, %eax
10000a698: 0f 85 96 00 00 00           	jne	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a69e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a6a2: 48 8b 40 18                 	movq	24(%rax), %rax
10000a6a6: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a6aa: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a6ae: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000a6b3: 83 f8 73                    	cmpl	$115, %eax
10000a6b6: 0f 85 78 00 00 00           	jne	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a6bc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a6c0: 48 8b 40 18                 	movq	24(%rax), %rax
10000a6c4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a6c8: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a6cc: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000a6d1: 83 f8 7a                    	cmpl	$122, %eax
10000a6d4: 0f 85 5a 00 00 00           	jne	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a6da: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a6de: 48 8b 40 18                 	movq	24(%rax), %rax
10000a6e2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a6e6: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a6ea: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000a6ef: 83 f8 65                    	cmpl	$101, %eax
10000a6f2: 0f 85 3c 00 00 00           	jne	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a6f8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a6fc: 48 8b 40 18                 	movq	24(%rax), %rax
10000a700: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a704: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a708: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000a70d: 83 f8 72                    	cmpl	$114, %eax
10000a710: 0f 85 1e 00 00 00           	jne	0x10000a734 <_pcc_evaluate_rule_jmpzero+0x264>
10000a716: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a71a: 48 8b 40 18                 	movq	24(%rax), %rax
10000a71e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a722: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a726: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000a72b: 83 f8 6f                    	cmpl	$111, %eax
10000a72e: 0f 84 05 00 00 00           	je	0x10000a739 <_pcc_evaluate_rule_jmpzero+0x269>
10000a734: e9 15 00 00 00              	jmp	0x10000a74e <_pcc_evaluate_rule_jmpzero+0x27e>
10000a739: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a73d: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a741: 48 83 c1 06                 	addq	$6, %rcx
10000a745: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a749: e9 0b 02 00 00              	jmp	0x10000a959 <_pcc_evaluate_rule_jmpzero+0x489>
10000a74e: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a752: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a756: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a75a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a75e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a765: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a769: 48 83 c6 30                 	addq	$48, %rsi
10000a76d: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a771: e8 ba 82 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a776: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a77a: be 04 00 00 00              	movl	$4, %esi
10000a77f: e8 0c 83 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a784: 48 83 f8 04                 	cmpq	$4, %rax
10000a788: 0f 82 77 00 00 00           	jb	0x10000a805 <_pcc_evaluate_rule_jmpzero+0x335>
10000a78e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a792: 48 8b 40 18                 	movq	24(%rax), %rax
10000a796: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a79a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a79e: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a7a2: 83 f8 5a                    	cmpl	$90, %eax
10000a7a5: 0f 85 5a 00 00 00           	jne	0x10000a805 <_pcc_evaluate_rule_jmpzero+0x335>
10000a7ab: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a7af: 48 8b 40 18                 	movq	24(%rax), %rax
10000a7b3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a7b7: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a7bb: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000a7c0: 83 f8 45                    	cmpl	$69, %eax
10000a7c3: 0f 85 3c 00 00 00           	jne	0x10000a805 <_pcc_evaluate_rule_jmpzero+0x335>
10000a7c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a7cd: 48 8b 40 18                 	movq	24(%rax), %rax
10000a7d1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a7d5: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a7d9: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000a7de: 83 f8 52                    	cmpl	$82, %eax
10000a7e1: 0f 85 1e 00 00 00           	jne	0x10000a805 <_pcc_evaluate_rule_jmpzero+0x335>
10000a7e7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a7eb: 48 8b 40 18                 	movq	24(%rax), %rax
10000a7ef: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a7f3: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a7f7: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000a7fc: 83 f8 4f                    	cmpl	$79, %eax
10000a7ff: 0f 84 05 00 00 00           	je	0x10000a80a <_pcc_evaluate_rule_jmpzero+0x33a>
10000a805: e9 15 00 00 00              	jmp	0x10000a81f <_pcc_evaluate_rule_jmpzero+0x34f>
10000a80a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a80e: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a812: 48 83 c1 04                 	addq	$4, %rcx
10000a816: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a81a: e9 3a 01 00 00              	jmp	0x10000a959 <_pcc_evaluate_rule_jmpzero+0x489>
10000a81f: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a823: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a827: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a82b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a82f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a836: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a83a: 48 83 c6 30                 	addq	$48, %rsi
10000a83e: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a842: e8 e9 81 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a847: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a84b: be 06 00 00 00              	movl	$6, %esi
10000a850: e8 3b 82 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000a855: 48 83 f8 06                 	cmpq	$6, %rax
10000a859: 0f 82 b3 00 00 00           	jb	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a85f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a863: 48 8b 40 18                 	movq	24(%rax), %rax
10000a867: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a86b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a86f: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000a873: 83 f8 49                    	cmpl	$73, %eax
10000a876: 0f 85 96 00 00 00           	jne	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a87c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a880: 48 8b 40 18                 	movq	24(%rax), %rax
10000a884: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a888: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a88c: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000a891: 83 f8 53                    	cmpl	$83, %eax
10000a894: 0f 85 78 00 00 00           	jne	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a89a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a89e: 48 8b 40 18                 	movq	24(%rax), %rax
10000a8a2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a8a6: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a8aa: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000a8af: 83 f8 5a                    	cmpl	$90, %eax
10000a8b2: 0f 85 5a 00 00 00           	jne	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a8b8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a8bc: 48 8b 40 18                 	movq	24(%rax), %rax
10000a8c0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a8c4: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a8c8: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000a8cd: 83 f8 45                    	cmpl	$69, %eax
10000a8d0: 0f 85 3c 00 00 00           	jne	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a8d6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a8da: 48 8b 40 18                 	movq	24(%rax), %rax
10000a8de: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a8e2: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a8e6: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000a8eb: 83 f8 52                    	cmpl	$82, %eax
10000a8ee: 0f 85 1e 00 00 00           	jne	0x10000a912 <_pcc_evaluate_rule_jmpzero+0x442>
10000a8f4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a8f8: 48 8b 40 18                 	movq	24(%rax), %rax
10000a8fc: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000a900: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000a904: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000a909: 83 f8 4f                    	cmpl	$79, %eax
10000a90c: 0f 84 05 00 00 00           	je	0x10000a917 <_pcc_evaluate_rule_jmpzero+0x447>
10000a912: e9 15 00 00 00              	jmp	0x10000a92c <_pcc_evaluate_rule_jmpzero+0x45c>
10000a917: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a91b: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a91f: 48 83 c1 06                 	addq	$6, %rcx
10000a923: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a927: e9 2d 00 00 00              	jmp	0x10000a959 <_pcc_evaluate_rule_jmpzero+0x489>
10000a92c: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000a930: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a934: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000a938: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a93c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a943: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a947: 48 83 c6 30                 	addq	$48, %rsi
10000a94b: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000a94f: e8 dc 80 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000a954: e9 7b 00 00 00              	jmp	0x10000a9d4 <_pcc_evaluate_rule_jmpzero+0x504>
10000a959: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a95d: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a964: 48 8d 35 a5 0d 00 00        	leaq	3493(%rip), %rsi        ## 0x10000b710 <_pcc_action_jmpzero_0>
10000a96b: 31 c0                       	xorl	%eax, %eax
10000a96d: 89 c1                       	movl	%eax, %ecx
10000a96f: 48 89 ca                    	movq	%rcx, %rdx
10000a972: e8 39 e4 ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000a977: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000a97b: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a97f: 48 8b 48 48                 	movq	72(%rax), %rcx
10000a983: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000a987: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000a98b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a98f: 48 8b 48 08                 	movq	8(%rax), %rcx
10000a993: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000a997: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000a99b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a99f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000a9a6: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a9aa: 48 83 c6 30                 	addq	$48, %rsi
10000a9ae: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000a9b2: e8 69 8f ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000a9b7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a9bb: 48 8b 48 10                 	movq	16(%rax), %rcx
10000a9bf: 48 83 c1 ff                 	addq	$-1, %rcx
10000a9c3: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000a9c7: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000a9cb: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000a9cf: e9 25 00 00 00              	jmp	0x10000a9f9 <_pcc_evaluate_rule_jmpzero+0x529>
10000a9d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000a9d8: 48 8b 48 10                 	movq	16(%rax), %rcx
10000a9dc: 48 83 c1 ff                 	addq	$-1, %rcx
10000a9e0: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000a9e4: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000a9e8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000a9ec: e8 9f 8e ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
10000a9f1: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000a9f9: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000a9fd: 48 83 c4 30                 	addq	$48, %rsp
10000aa01: 5d                          	popq	%rbp
10000aa02: c3                          	retq
10000aa03: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

000000010000aa10 <_pcc_action_jmpcond_0>:
10000aa10: 55                          	pushq	%rbp
10000aa11: 48 89 e5                    	movq	%rsp, %rbp
10000aa14: 48 83 ec 20                 	subq	$32, %rsp
10000aa18: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000aa1c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000aa20: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000aa24: 48 8d 3d d9 14 00 00        	leaq	5337(%rip), %rdi        ## 0x10000bf04 <_strnlen+0x10000bf04>
10000aa2b: b0 00                       	movb	$0, %al
10000aa2d: e8 33 12 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000aa32: 48 83 c4 20                 	addq	$32, %rsp
10000aa36: 5d                          	popq	%rbp
10000aa37: c3                          	retq
10000aa38: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000aa40 <_pcc_evaluate_rule_jmpless>:
10000aa40: 55                          	pushq	%rbp
10000aa41: 48 89 e5                    	movq	%rsp, %rbp
10000aa44: 48 83 ec 30                 	subq	$48, %rsp
10000aa48: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000aa4c: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000aa50: e8 7b 9b ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
10000aa55: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000aa59: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aa5d: 48 8b 48 08                 	movq	8(%rax), %rcx
10000aa61: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000aa65: 48 89 48 48                 	movq	%rcx, 72(%rax)
10000aa69: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aa6d: 48 8b 48 10                 	movq	16(%rax), %rcx
10000aa71: 48 83 c1 01                 	addq	$1, %rcx
10000aa75: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000aa79: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aa7d: 48 8b 40 08                 	movq	8(%rax), %rax
10000aa81: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000aa85: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000aa89: 48 8b 40 40                 	movq	64(%rax), %rax
10000aa8d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000aa91: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000aa95: be 08 00 00 00              	movl	$8, %esi
10000aa9a: e8 f1 7f ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000aa9f: 48 83 f8 08                 	cmpq	$8, %rax
10000aaa3: 0f 82 ef 00 00 00           	jb	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000aaa9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aaad: 48 8b 40 18                 	movq	24(%rax), %rax
10000aab1: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000aab5: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000aab9: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000aabd: 83 f8 6e                    	cmpl	$110, %eax
10000aac0: 0f 85 d2 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000aac6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aaca: 48 8b 40 18                 	movq	24(%rax), %rax
10000aace: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000aad2: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000aad6: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000aadb: 83 f8 65                    	cmpl	$101, %eax
10000aade: 0f 85 b4 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000aae4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aae8: 48 8b 40 18                 	movq	24(%rax), %rax
10000aaec: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000aaf0: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000aaf4: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000aaf9: 83 f8 67                    	cmpl	$103, %eax
10000aafc: 0f 85 96 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000ab02: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ab06: 48 8b 40 18                 	movq	24(%rax), %rax
10000ab0a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ab0e: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ab12: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000ab17: 83 f8 61                    	cmpl	$97, %eax
10000ab1a: 0f 85 78 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000ab20: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ab24: 48 8b 40 18                 	movq	24(%rax), %rax
10000ab28: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ab2c: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ab30: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000ab35: 83 f8 74                    	cmpl	$116, %eax
10000ab38: 0f 85 5a 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000ab3e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ab42: 48 8b 40 18                 	movq	24(%rax), %rax
10000ab46: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ab4a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ab4e: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000ab53: 83 f8 69                    	cmpl	$105, %eax
10000ab56: 0f 85 3c 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000ab5c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ab60: 48 8b 40 18                 	movq	24(%rax), %rax
10000ab64: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ab68: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ab6c: 0f be 44 08 06              	movsbl	6(%rax,%rcx), %eax
10000ab71: 83 f8 76                    	cmpl	$118, %eax
10000ab74: 0f 85 1e 00 00 00           	jne	0x10000ab98 <_pcc_evaluate_rule_jmpless+0x158>
10000ab7a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ab7e: 48 8b 40 18                 	movq	24(%rax), %rax
10000ab82: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ab86: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ab8a: 0f be 44 08 07              	movsbl	7(%rax,%rcx), %eax
10000ab8f: 83 f8 65                    	cmpl	$101, %eax
10000ab92: 0f 84 05 00 00 00           	je	0x10000ab9d <_pcc_evaluate_rule_jmpless+0x15d>
10000ab98: e9 15 00 00 00              	jmp	0x10000abb2 <_pcc_evaluate_rule_jmpless+0x172>
10000ab9d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aba1: 48 8b 48 08                 	movq	8(%rax), %rcx
10000aba5: 48 83 c1 08                 	addq	$8, %rcx
10000aba9: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000abad: e9 24 04 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000abb2: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000abb6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000abba: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000abbe: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000abc2: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000abc9: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000abcd: 48 83 c6 30                 	addq	$48, %rsi
10000abd1: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000abd5: e8 56 7e ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000abda: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000abde: be 04 00 00 00              	movl	$4, %esi
10000abe3: e8 a8 7e ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000abe8: 48 83 f8 04                 	cmpq	$4, %rax
10000abec: 0f 82 77 00 00 00           	jb	0x10000ac69 <_pcc_evaluate_rule_jmpless+0x229>
10000abf2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000abf6: 48 8b 40 18                 	movq	24(%rax), %rax
10000abfa: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000abfe: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ac02: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000ac06: 83 f8 6c                    	cmpl	$108, %eax
10000ac09: 0f 85 5a 00 00 00           	jne	0x10000ac69 <_pcc_evaluate_rule_jmpless+0x229>
10000ac0f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac13: 48 8b 40 18                 	movq	24(%rax), %rax
10000ac17: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ac1b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ac1f: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000ac24: 83 f8 65                    	cmpl	$101, %eax
10000ac27: 0f 85 3c 00 00 00           	jne	0x10000ac69 <_pcc_evaluate_rule_jmpless+0x229>
10000ac2d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac31: 48 8b 40 18                 	movq	24(%rax), %rax
10000ac35: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ac39: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ac3d: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000ac42: 83 f8 73                    	cmpl	$115, %eax
10000ac45: 0f 85 1e 00 00 00           	jne	0x10000ac69 <_pcc_evaluate_rule_jmpless+0x229>
10000ac4b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac4f: 48 8b 40 18                 	movq	24(%rax), %rax
10000ac53: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ac57: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ac5b: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000ac60: 83 f8 73                    	cmpl	$115, %eax
10000ac63: 0f 84 05 00 00 00           	je	0x10000ac6e <_pcc_evaluate_rule_jmpless+0x22e>
10000ac69: e9 15 00 00 00              	jmp	0x10000ac83 <_pcc_evaluate_rule_jmpless+0x243>
10000ac6e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac72: 48 8b 48 08                 	movq	8(%rax), %rcx
10000ac76: 48 83 c1 04                 	addq	$4, %rcx
10000ac7a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ac7e: e9 53 03 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000ac83: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000ac87: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac8b: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ac8f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ac93: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000ac9a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000ac9e: 48 83 c6 30                 	addq	$48, %rsi
10000aca2: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000aca6: e8 85 7d ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000acab: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000acaf: be 02 00 00 00              	movl	$2, %esi
10000acb4: e8 d7 7d ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000acb9: 48 83 f8 02                 	cmpq	$2, %rax
10000acbd: 0f 82 3b 00 00 00           	jb	0x10000acfe <_pcc_evaluate_rule_jmpless+0x2be>
10000acc3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000acc7: 48 8b 40 18                 	movq	24(%rax), %rax
10000accb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000accf: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000acd3: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000acd7: 83 f8 2d                    	cmpl	$45, %eax
10000acda: 0f 85 1e 00 00 00           	jne	0x10000acfe <_pcc_evaluate_rule_jmpless+0x2be>
10000ace0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ace4: 48 8b 40 18                 	movq	24(%rax), %rax
10000ace8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000acec: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000acf0: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000acf5: 83 f8 31                    	cmpl	$49, %eax
10000acf8: 0f 84 05 00 00 00           	je	0x10000ad03 <_pcc_evaluate_rule_jmpless+0x2c3>
10000acfe: e9 15 00 00 00              	jmp	0x10000ad18 <_pcc_evaluate_rule_jmpless+0x2d8>
10000ad03: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad07: 48 8b 48 08                 	movq	8(%rax), %rcx
10000ad0b: 48 83 c1 02                 	addq	$2, %rcx
10000ad0f: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ad13: e9 be 02 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000ad18: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000ad1c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad20: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ad24: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad28: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000ad2f: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000ad33: 48 83 c6 30                 	addq	$48, %rsi
10000ad37: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000ad3b: e8 f0 7c ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000ad40: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000ad44: be 01 00 00 00              	movl	$1, %esi
10000ad49: e8 42 7d ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000ad4e: 48 83 f8 01                 	cmpq	$1, %rax
10000ad52: 0f 82 1d 00 00 00           	jb	0x10000ad75 <_pcc_evaluate_rule_jmpless+0x335>
10000ad58: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad5c: 48 8b 40 18                 	movq	24(%rax), %rax
10000ad60: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ad64: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ad68: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000ad6c: 83 f8 3c                    	cmpl	$60, %eax
10000ad6f: 0f 84 05 00 00 00           	je	0x10000ad7a <_pcc_evaluate_rule_jmpless+0x33a>
10000ad75: e9 15 00 00 00              	jmp	0x10000ad8f <_pcc_evaluate_rule_jmpless+0x34f>
10000ad7a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad7e: 48 8b 48 08                 	movq	8(%rax), %rcx
10000ad82: 48 83 c1 01                 	addq	$1, %rcx
10000ad86: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ad8a: e9 47 02 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000ad8f: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000ad93: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad97: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000ad9b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ad9f: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000ada6: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000adaa: 48 83 c6 30                 	addq	$48, %rsi
10000adae: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000adb2: e8 79 7c ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000adb7: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000adbb: be 08 00 00 00              	movl	$8, %esi
10000adc0: e8 cb 7c ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000adc5: 48 83 f8 08                 	cmpq	$8, %rax
10000adc9: 0f 82 ef 00 00 00           	jb	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000adcf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000add3: 48 8b 40 18                 	movq	24(%rax), %rax
10000add7: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000addb: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000addf: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000ade3: 83 f8 4e                    	cmpl	$78, %eax
10000ade6: 0f 85 d2 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000adec: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000adf0: 48 8b 40 18                 	movq	24(%rax), %rax
10000adf4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000adf8: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000adfc: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000ae01: 83 f8 45                    	cmpl	$69, %eax
10000ae04: 0f 85 b4 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000ae0a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae0e: 48 8b 40 18                 	movq	24(%rax), %rax
10000ae12: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae16: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ae1a: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000ae1f: 83 f8 47                    	cmpl	$71, %eax
10000ae22: 0f 85 96 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000ae28: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae2c: 48 8b 40 18                 	movq	24(%rax), %rax
10000ae30: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae34: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ae38: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000ae3d: 83 f8 41                    	cmpl	$65, %eax
10000ae40: 0f 85 78 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000ae46: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae4a: 48 8b 40 18                 	movq	24(%rax), %rax
10000ae4e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae52: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ae56: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000ae5b: 83 f8 54                    	cmpl	$84, %eax
10000ae5e: 0f 85 5a 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000ae64: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae68: 48 8b 40 18                 	movq	24(%rax), %rax
10000ae6c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae70: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ae74: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000ae79: 83 f8 49                    	cmpl	$73, %eax
10000ae7c: 0f 85 3c 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000ae82: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ae86: 48 8b 40 18                 	movq	24(%rax), %rax
10000ae8a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ae8e: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000ae92: 0f be 44 08 06              	movsbl	6(%rax,%rcx), %eax
10000ae97: 83 f8 56                    	cmpl	$86, %eax
10000ae9a: 0f 85 1e 00 00 00           	jne	0x10000aebe <_pcc_evaluate_rule_jmpless+0x47e>
10000aea0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aea4: 48 8b 40 18                 	movq	24(%rax), %rax
10000aea8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000aeac: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000aeb0: 0f be 44 08 07              	movsbl	7(%rax,%rcx), %eax
10000aeb5: 83 f8 45                    	cmpl	$69, %eax
10000aeb8: 0f 84 05 00 00 00           	je	0x10000aec3 <_pcc_evaluate_rule_jmpless+0x483>
10000aebe: e9 15 00 00 00              	jmp	0x10000aed8 <_pcc_evaluate_rule_jmpless+0x498>
10000aec3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aec7: 48 8b 48 08                 	movq	8(%rax), %rcx
10000aecb: 48 83 c1 08                 	addq	$8, %rcx
10000aecf: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000aed3: e9 fe 00 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000aed8: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000aedc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aee0: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000aee4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000aee8: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000aeef: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000aef3: 48 83 c6 30                 	addq	$48, %rsi
10000aef7: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000aefb: e8 30 7b ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000af00: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000af04: be 04 00 00 00              	movl	$4, %esi
10000af09: e8 82 7b ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000af0e: 48 83 f8 04                 	cmpq	$4, %rax
10000af12: 0f 82 77 00 00 00           	jb	0x10000af8f <_pcc_evaluate_rule_jmpless+0x54f>
10000af18: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000af1c: 48 8b 40 18                 	movq	24(%rax), %rax
10000af20: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000af24: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000af28: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000af2c: 83 f8 4c                    	cmpl	$76, %eax
10000af2f: 0f 85 5a 00 00 00           	jne	0x10000af8f <_pcc_evaluate_rule_jmpless+0x54f>
10000af35: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000af39: 48 8b 40 18                 	movq	24(%rax), %rax
10000af3d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000af41: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000af45: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000af4a: 83 f8 45                    	cmpl	$69, %eax
10000af4d: 0f 85 3c 00 00 00           	jne	0x10000af8f <_pcc_evaluate_rule_jmpless+0x54f>
10000af53: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000af57: 48 8b 40 18                 	movq	24(%rax), %rax
10000af5b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000af5f: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000af63: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000af68: 83 f8 53                    	cmpl	$83, %eax
10000af6b: 0f 85 1e 00 00 00           	jne	0x10000af8f <_pcc_evaluate_rule_jmpless+0x54f>
10000af71: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000af75: 48 8b 40 18                 	movq	24(%rax), %rax
10000af79: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000af7d: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000af81: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000af86: 83 f8 53                    	cmpl	$83, %eax
10000af89: 0f 84 05 00 00 00           	je	0x10000af94 <_pcc_evaluate_rule_jmpless+0x554>
10000af8f: e9 15 00 00 00              	jmp	0x10000afa9 <_pcc_evaluate_rule_jmpless+0x569>
10000af94: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000af98: 48 8b 48 08                 	movq	8(%rax), %rcx
10000af9c: 48 83 c1 04                 	addq	$4, %rcx
10000afa0: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000afa4: e9 2d 00 00 00              	jmp	0x10000afd6 <_pcc_evaluate_rule_jmpless+0x596>
10000afa9: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000afad: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000afb1: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000afb5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000afb9: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000afc0: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000afc4: 48 83 c6 30                 	addq	$48, %rsi
10000afc8: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000afcc: e8 5f 7a ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000afd1: e9 7b 00 00 00              	jmp	0x10000b051 <_pcc_evaluate_rule_jmpless+0x611>
10000afd6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000afda: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000afe1: 48 8d 35 58 07 00 00        	leaq	1880(%rip), %rsi        ## 0x10000b740 <_pcc_action_jmpless_0>
10000afe8: 31 c0                       	xorl	%eax, %eax
10000afea: 89 c1                       	movl	%eax, %ecx
10000afec: 48 89 ca                    	movq	%rcx, %rdx
10000afef: e8 bc dd ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000aff4: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000aff8: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000affc: 48 8b 48 48                 	movq	72(%rax), %rcx
10000b000: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000b004: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000b008: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b00c: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b010: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000b014: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000b018: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b01c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b023: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b027: 48 83 c6 30                 	addq	$48, %rsi
10000b02b: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000b02f: e8 ec 88 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000b034: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b038: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b03c: 48 83 c1 ff                 	addq	$-1, %rcx
10000b040: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b044: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b048: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000b04c: e9 25 00 00 00              	jmp	0x10000b076 <_pcc_evaluate_rule_jmpless+0x636>
10000b051: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b055: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b059: 48 83 c1 ff                 	addq	$-1, %rcx
10000b05d: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b061: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b065: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b069: e8 22 88 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
10000b06e: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000b076: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b07a: 48 83 c4 30                 	addq	$48, %rsp
10000b07e: 5d                          	popq	%rbp
10000b07f: c3                          	retq

000000010000b080 <_pcc_action_jmpcond_1>:
10000b080: 55                          	pushq	%rbp
10000b081: 48 89 e5                    	movq	%rsp, %rbp
10000b084: 48 83 ec 20                 	subq	$32, %rsp
10000b088: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b08c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b090: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b094: 48 8d 3d 69 0e 00 00        	leaq	3689(%rip), %rdi        ## 0x10000bf04 <_strnlen+0x10000bf04>
10000b09b: b0 00                       	movb	$0, %al
10000b09d: e8 c3 0b 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000b0a2: 48 83 c4 20                 	addq	$32, %rsp
10000b0a6: 5d                          	popq	%rbp
10000b0a7: c3                          	retq
10000b0a8: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000b0b0 <_pcc_evaluate_rule_jmpmore>:
10000b0b0: 55                          	pushq	%rbp
10000b0b1: 48 89 e5                    	movq	%rsp, %rbp
10000b0b4: 48 83 ec 30                 	subq	$48, %rsp
10000b0b8: 48 89 7d f0                 	movq	%rdi, -16(%rbp)
10000b0bc: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b0c0: e8 0b 95 ff ff              	callq	0x1000045d0 <_pcc_thunk_chunk__create>
10000b0c5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b0c9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b0cd: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b0d1: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b0d5: 48 89 48 48                 	movq	%rcx, 72(%rax)
10000b0d9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b0dd: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b0e1: 48 83 c1 01                 	addq	$1, %rcx
10000b0e5: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b0e9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b0ed: 48 8b 40 08                 	movq	8(%rax), %rax
10000b0f1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b0f5: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b0f9: 48 8b 40 40                 	movq	64(%rax), %rax
10000b0fd: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000b101: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b105: be 08 00 00 00              	movl	$8, %esi
10000b10a: e8 81 79 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b10f: 48 83 f8 08                 	cmpq	$8, %rax
10000b113: 0f 82 ef 00 00 00           	jb	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b119: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b11d: 48 8b 40 18                 	movq	24(%rax), %rax
10000b121: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b125: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b129: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b12d: 83 f8 70                    	cmpl	$112, %eax
10000b130: 0f 85 d2 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b136: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b13a: 48 8b 40 18                 	movq	24(%rax), %rax
10000b13e: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b142: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b146: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000b14b: 83 f8 6f                    	cmpl	$111, %eax
10000b14e: 0f 85 b4 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b154: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b158: 48 8b 40 18                 	movq	24(%rax), %rax
10000b15c: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b160: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b164: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000b169: 83 f8 73                    	cmpl	$115, %eax
10000b16c: 0f 85 96 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b172: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b176: 48 8b 40 18                 	movq	24(%rax), %rax
10000b17a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b17e: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b182: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000b187: 83 f8 69                    	cmpl	$105, %eax
10000b18a: 0f 85 78 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b190: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b194: 48 8b 40 18                 	movq	24(%rax), %rax
10000b198: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b19c: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b1a0: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000b1a5: 83 f8 74                    	cmpl	$116, %eax
10000b1a8: 0f 85 5a 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b1ae: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b1b2: 48 8b 40 18                 	movq	24(%rax), %rax
10000b1b6: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b1ba: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b1be: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000b1c3: 83 f8 69                    	cmpl	$105, %eax
10000b1c6: 0f 85 3c 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b1cc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b1d0: 48 8b 40 18                 	movq	24(%rax), %rax
10000b1d4: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b1d8: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b1dc: 0f be 44 08 06              	movsbl	6(%rax,%rcx), %eax
10000b1e1: 83 f8 76                    	cmpl	$118, %eax
10000b1e4: 0f 85 1e 00 00 00           	jne	0x10000b208 <_pcc_evaluate_rule_jmpmore+0x158>
10000b1ea: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b1ee: 48 8b 40 18                 	movq	24(%rax), %rax
10000b1f2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b1f6: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b1fa: 0f be 44 08 07              	movsbl	7(%rax,%rcx), %eax
10000b1ff: 83 f8 65                    	cmpl	$101, %eax
10000b202: 0f 84 05 00 00 00           	je	0x10000b20d <_pcc_evaluate_rule_jmpmore+0x15d>
10000b208: e9 15 00 00 00              	jmp	0x10000b222 <_pcc_evaluate_rule_jmpmore+0x172>
10000b20d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b211: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b215: 48 83 c1 08                 	addq	$8, %rcx
10000b219: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b21d: e9 06 04 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b222: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b226: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b22a: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b22e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b232: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b239: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b23d: 48 83 c6 30                 	addq	$48, %rsi
10000b241: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b245: e8 e6 77 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b24a: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b24e: be 04 00 00 00              	movl	$4, %esi
10000b253: e8 38 78 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b258: 48 83 f8 04                 	cmpq	$4, %rax
10000b25c: 0f 82 77 00 00 00           	jb	0x10000b2d9 <_pcc_evaluate_rule_jmpmore+0x229>
10000b262: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b266: 48 8b 40 18                 	movq	24(%rax), %rax
10000b26a: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b26e: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b272: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b276: 83 f8 6d                    	cmpl	$109, %eax
10000b279: 0f 85 5a 00 00 00           	jne	0x10000b2d9 <_pcc_evaluate_rule_jmpmore+0x229>
10000b27f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b283: 48 8b 40 18                 	movq	24(%rax), %rax
10000b287: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b28b: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b28f: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000b294: 83 f8 6f                    	cmpl	$111, %eax
10000b297: 0f 85 3c 00 00 00           	jne	0x10000b2d9 <_pcc_evaluate_rule_jmpmore+0x229>
10000b29d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b2a1: 48 8b 40 18                 	movq	24(%rax), %rax
10000b2a5: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b2a9: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b2ad: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000b2b2: 83 f8 72                    	cmpl	$114, %eax
10000b2b5: 0f 85 1e 00 00 00           	jne	0x10000b2d9 <_pcc_evaluate_rule_jmpmore+0x229>
10000b2bb: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b2bf: 48 8b 40 18                 	movq	24(%rax), %rax
10000b2c3: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b2c7: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b2cb: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000b2d0: 83 f8 65                    	cmpl	$101, %eax
10000b2d3: 0f 84 05 00 00 00           	je	0x10000b2de <_pcc_evaluate_rule_jmpmore+0x22e>
10000b2d9: e9 15 00 00 00              	jmp	0x10000b2f3 <_pcc_evaluate_rule_jmpmore+0x243>
10000b2de: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b2e2: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b2e6: 48 83 c1 04                 	addq	$4, %rcx
10000b2ea: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b2ee: e9 35 03 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b2f3: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b2f7: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b2fb: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b2ff: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b303: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b30a: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b30e: 48 83 c6 30                 	addq	$48, %rsi
10000b312: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b316: e8 15 77 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b31b: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b31f: be 01 00 00 00              	movl	$1, %esi
10000b324: e8 67 77 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b329: 48 83 f8 01                 	cmpq	$1, %rax
10000b32d: 0f 82 1d 00 00 00           	jb	0x10000b350 <_pcc_evaluate_rule_jmpmore+0x2a0>
10000b333: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b337: 48 8b 40 18                 	movq	24(%rax), %rax
10000b33b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b33f: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b343: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b347: 83 f8 31                    	cmpl	$49, %eax
10000b34a: 0f 84 05 00 00 00           	je	0x10000b355 <_pcc_evaluate_rule_jmpmore+0x2a5>
10000b350: e9 15 00 00 00              	jmp	0x10000b36a <_pcc_evaluate_rule_jmpmore+0x2ba>
10000b355: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b359: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b35d: 48 83 c1 01                 	addq	$1, %rcx
10000b361: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b365: e9 be 02 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b36a: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b36e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b372: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b376: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b37a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b381: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b385: 48 83 c6 30                 	addq	$48, %rsi
10000b389: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b38d: e8 9e 76 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b392: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b396: be 01 00 00 00              	movl	$1, %esi
10000b39b: e8 f0 76 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b3a0: 48 83 f8 01                 	cmpq	$1, %rax
10000b3a4: 0f 82 1d 00 00 00           	jb	0x10000b3c7 <_pcc_evaluate_rule_jmpmore+0x317>
10000b3aa: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b3ae: 48 8b 40 18                 	movq	24(%rax), %rax
10000b3b2: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b3b6: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b3ba: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b3be: 83 f8 3e                    	cmpl	$62, %eax
10000b3c1: 0f 84 05 00 00 00           	je	0x10000b3cc <_pcc_evaluate_rule_jmpmore+0x31c>
10000b3c7: e9 15 00 00 00              	jmp	0x10000b3e1 <_pcc_evaluate_rule_jmpmore+0x331>
10000b3cc: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b3d0: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b3d4: 48 83 c1 01                 	addq	$1, %rcx
10000b3d8: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b3dc: e9 47 02 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b3e1: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b3e5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b3e9: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b3ed: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b3f1: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b3f8: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b3fc: 48 83 c6 30                 	addq	$48, %rsi
10000b400: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b404: e8 27 76 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b409: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b40d: be 08 00 00 00              	movl	$8, %esi
10000b412: e8 79 76 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b417: 48 83 f8 08                 	cmpq	$8, %rax
10000b41b: 0f 82 ef 00 00 00           	jb	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b421: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b425: 48 8b 40 18                 	movq	24(%rax), %rax
10000b429: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b42d: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b431: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b435: 83 f8 50                    	cmpl	$80, %eax
10000b438: 0f 85 d2 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b43e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b442: 48 8b 40 18                 	movq	24(%rax), %rax
10000b446: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b44a: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b44e: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000b453: 83 f8 4f                    	cmpl	$79, %eax
10000b456: 0f 85 b4 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b45c: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b460: 48 8b 40 18                 	movq	24(%rax), %rax
10000b464: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b468: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b46c: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000b471: 83 f8 53                    	cmpl	$83, %eax
10000b474: 0f 85 96 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b47a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b47e: 48 8b 40 18                 	movq	24(%rax), %rax
10000b482: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b486: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b48a: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000b48f: 83 f8 49                    	cmpl	$73, %eax
10000b492: 0f 85 78 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b498: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b49c: 48 8b 40 18                 	movq	24(%rax), %rax
10000b4a0: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b4a4: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b4a8: 0f be 44 08 04              	movsbl	4(%rax,%rcx), %eax
10000b4ad: 83 f8 54                    	cmpl	$84, %eax
10000b4b0: 0f 85 5a 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b4b6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b4ba: 48 8b 40 18                 	movq	24(%rax), %rax
10000b4be: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b4c2: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b4c6: 0f be 44 08 05              	movsbl	5(%rax,%rcx), %eax
10000b4cb: 83 f8 49                    	cmpl	$73, %eax
10000b4ce: 0f 85 3c 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b4d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b4d8: 48 8b 40 18                 	movq	24(%rax), %rax
10000b4dc: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b4e0: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b4e4: 0f be 44 08 06              	movsbl	6(%rax,%rcx), %eax
10000b4e9: 83 f8 56                    	cmpl	$86, %eax
10000b4ec: 0f 85 1e 00 00 00           	jne	0x10000b510 <_pcc_evaluate_rule_jmpmore+0x460>
10000b4f2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b4f6: 48 8b 40 18                 	movq	24(%rax), %rax
10000b4fa: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b4fe: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b502: 0f be 44 08 07              	movsbl	7(%rax,%rcx), %eax
10000b507: 83 f8 45                    	cmpl	$69, %eax
10000b50a: 0f 84 05 00 00 00           	je	0x10000b515 <_pcc_evaluate_rule_jmpmore+0x465>
10000b510: e9 15 00 00 00              	jmp	0x10000b52a <_pcc_evaluate_rule_jmpmore+0x47a>
10000b515: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b519: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b51d: 48 83 c1 08                 	addq	$8, %rcx
10000b521: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b525: e9 fe 00 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b52a: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b52e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b532: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b536: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b53a: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b541: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b545: 48 83 c6 30                 	addq	$48, %rsi
10000b549: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b54d: e8 de 74 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b552: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b556: be 04 00 00 00              	movl	$4, %esi
10000b55b: e8 30 75 ff ff              	callq	0x100002a90 <_pcc_refill_buffer>
10000b560: 48 83 f8 04                 	cmpq	$4, %rax
10000b564: 0f 82 77 00 00 00           	jb	0x10000b5e1 <_pcc_evaluate_rule_jmpmore+0x531>
10000b56a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b56e: 48 8b 40 18                 	movq	24(%rax), %rax
10000b572: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b576: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b57a: 0f be 04 08                 	movsbl	(%rax,%rcx), %eax
10000b57e: 83 f8 4d                    	cmpl	$77, %eax
10000b581: 0f 85 5a 00 00 00           	jne	0x10000b5e1 <_pcc_evaluate_rule_jmpmore+0x531>
10000b587: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b58b: 48 8b 40 18                 	movq	24(%rax), %rax
10000b58f: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b593: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b597: 0f be 44 08 01              	movsbl	1(%rax,%rcx), %eax
10000b59c: 83 f8 4f                    	cmpl	$79, %eax
10000b59f: 0f 85 3c 00 00 00           	jne	0x10000b5e1 <_pcc_evaluate_rule_jmpmore+0x531>
10000b5a5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b5a9: 48 8b 40 18                 	movq	24(%rax), %rax
10000b5ad: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b5b1: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b5b5: 0f be 44 08 02              	movsbl	2(%rax,%rcx), %eax
10000b5ba: 83 f8 52                    	cmpl	$82, %eax
10000b5bd: 0f 85 1e 00 00 00           	jne	0x10000b5e1 <_pcc_evaluate_rule_jmpmore+0x531>
10000b5c3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b5c7: 48 8b 40 18                 	movq	24(%rax), %rax
10000b5cb: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b5cf: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b5d3: 0f be 44 08 03              	movsbl	3(%rax,%rcx), %eax
10000b5d8: 83 f8 45                    	cmpl	$69, %eax
10000b5db: 0f 84 05 00 00 00           	je	0x10000b5e6 <_pcc_evaluate_rule_jmpmore+0x536>
10000b5e1: e9 15 00 00 00              	jmp	0x10000b5fb <_pcc_evaluate_rule_jmpmore+0x54b>
10000b5e6: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b5ea: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b5ee: 48 83 c1 04                 	addq	$4, %rcx
10000b5f2: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b5f6: e9 2d 00 00 00              	jmp	0x10000b628 <_pcc_evaluate_rule_jmpmore+0x578>
10000b5fb: 48 8b 4d e0                 	movq	-32(%rbp), %rcx
10000b5ff: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b603: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000b607: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b60b: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b612: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b616: 48 83 c6 30                 	addq	$48, %rsi
10000b61a: 48 8b 55 d8                 	movq	-40(%rbp), %rdx
10000b61e: e8 0d 74 ff ff              	callq	0x100002a30 <_pcc_thunk_array__revert>
10000b623: e9 7b 00 00 00              	jmp	0x10000b6a3 <_pcc_evaluate_rule_jmpmore+0x5f3>
10000b628: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b62c: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b633: 48 8d 35 36 01 00 00        	leaq	310(%rip), %rsi         ## 0x10000b770 <_pcc_action_jmpmore_0>
10000b63a: 31 c0                       	xorl	%eax, %eax
10000b63c: 89 c1                       	movl	%eax, %ecx
10000b63e: 48 89 ca                    	movq	%rcx, %rdx
10000b641: e8 6a d7 ff ff              	callq	0x100008db0 <_pcc_thunk__create_leaf>
10000b646: 48 89 45 d0                 	movq	%rax, -48(%rbp)
10000b64a: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b64e: 48 8b 48 48                 	movq	72(%rax), %rcx
10000b652: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000b656: 48 89 48 38                 	movq	%rcx, 56(%rax)
10000b65a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b65e: 48 8b 48 08                 	movq	8(%rax), %rcx
10000b662: 48 8b 45 d0                 	movq	-48(%rbp), %rax
10000b666: 48 89 48 40                 	movq	%rcx, 64(%rax)
10000b66a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b66e: 48 8b b8 80 00 00 00        	movq	128(%rax), %rdi
10000b675: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b679: 48 83 c6 30                 	addq	$48, %rsi
10000b67d: 48 8b 55 d0                 	movq	-48(%rbp), %rdx
10000b681: e8 9a 82 ff ff              	callq	0x100003920 <_pcc_thunk_array__add>
10000b686: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b68a: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b68e: 48 83 c1 ff                 	addq	$-1, %rcx
10000b692: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b696: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b69a: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000b69e: e9 25 00 00 00              	jmp	0x10000b6c8 <_pcc_evaluate_rule_jmpmore+0x618>
10000b6a3: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b6a7: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b6ab: 48 83 c1 ff                 	addq	$-1, %rcx
10000b6af: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b6b3: 48 8b 7d f0                 	movq	-16(%rbp), %rdi
10000b6b7: 48 8b 75 e8                 	movq	-24(%rbp), %rsi
10000b6bb: e8 d0 81 ff ff              	callq	0x100003890 <_pcc_thunk_chunk__destroy>
10000b6c0: 48 c7 45 f8 00 00 00 00     	movq	$0, -8(%rbp)
10000b6c8: 48 8b 45 f8                 	movq	-8(%rbp), %rax
10000b6cc: 48 83 c4 30                 	addq	$48, %rsp
10000b6d0: 5d                          	popq	%rbp
10000b6d1: c3                          	retq
10000b6d2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

000000010000b6e0 <_pcc_action_jmpcond_2>:
10000b6e0: 55                          	pushq	%rbp
10000b6e1: 48 89 e5                    	movq	%rsp, %rbp
10000b6e4: 48 83 ec 20                 	subq	$32, %rsp
10000b6e8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b6ec: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b6f0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b6f4: 48 8d 3d 09 08 00 00        	leaq	2057(%rip), %rdi        ## 0x10000bf04 <_strnlen+0x10000bf04>
10000b6fb: b0 00                       	movb	$0, %al
10000b6fd: e8 63 05 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000b702: 48 83 c4 20                 	addq	$32, %rsp
10000b706: 5d                          	popq	%rbp
10000b707: c3                          	retq
10000b708: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000b710 <_pcc_action_jmpzero_0>:
10000b710: 55                          	pushq	%rbp
10000b711: 48 89 e5                    	movq	%rsp, %rbp
10000b714: 48 83 ec 20                 	subq	$32, %rsp
10000b718: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b71c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b720: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b724: 48 8d 3d d7 07 00 00        	leaq	2007(%rip), %rdi        ## 0x10000bf02 <_strnlen+0x10000bf02>
10000b72b: b0 00                       	movb	$0, %al
10000b72d: e8 33 05 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000b732: 48 83 c4 20                 	addq	$32, %rsp
10000b736: 5d                          	popq	%rbp
10000b737: c3                          	retq
10000b738: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000b740 <_pcc_action_jmpless_0>:
10000b740: 55                          	pushq	%rbp
10000b741: 48 89 e5                    	movq	%rsp, %rbp
10000b744: 48 83 ec 20                 	subq	$32, %rsp
10000b748: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b74c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b750: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b754: 48 8d 3d a7 07 00 00        	leaq	1959(%rip), %rdi        ## 0x10000bf02 <_strnlen+0x10000bf02>
10000b75b: b0 00                       	movb	$0, %al
10000b75d: e8 03 05 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000b762: 48 83 c4 20                 	addq	$32, %rsp
10000b766: 5d                          	popq	%rbp
10000b767: c3                          	retq
10000b768: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000b770 <_pcc_action_jmpmore_0>:
10000b770: 55                          	pushq	%rbp
10000b771: 48 89 e5                    	movq	%rsp, %rbp
10000b774: 48 83 ec 20                 	subq	$32, %rsp
10000b778: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b77c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b780: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b784: 48 8d 3d 77 07 00 00        	leaq	1911(%rip), %rdi        ## 0x10000bf02 <_strnlen+0x10000bf02>
10000b78b: b0 00                       	movb	$0, %al
10000b78d: e8 d3 04 00 00              	callq	0x10000bc65 <_strnlen+0x10000bc65>
10000b792: 48 83 c4 20                 	addq	$32, %rsp
10000b796: 5d                          	popq	%rbp
10000b797: c3                          	retq
10000b798: 0f 1f 84 00 00 00 00 00     	nopl	(%rax,%rax)

000000010000b7a0 <_pcc_action_define_0>:
10000b7a0: 55                          	pushq	%rbp
10000b7a1: 48 89 e5                    	movq	%rsp, %rbp
10000b7a4: 48 83 ec 30                 	subq	$48, %rsp
10000b7a8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b7ac: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b7b0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b7b4: 48 8d 05 5d 48 00 00        	leaq	18525(%rip), %rax       ## 0x100010018 <_constants>
10000b7bb: 48 8b 00                    	movq	(%rax), %rax
10000b7be: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000b7c2: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b7c6: 48 8b 40 08                 	movq	8(%rax), %rax
10000b7ca: 48 8b 00                    	movq	(%rax), %rax
10000b7cd: 48 8b 00                    	movq	(%rax), %rax
10000b7d0: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b7d4: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b7d8: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b7dc: 48 8b 40 20                 	movq	32(%rax), %rax
10000b7e0: 48 8b 30                    	movq	(%rax), %rsi
10000b7e3: e8 48 db ff ff              	callq	0x100009330 <_pcc_get_capture_string>
10000b7e8: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000b7ec: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
10000b7f0: 48 89 c2                    	movq	%rax, %rdx
10000b7f3: e8 e8 52 ff ff              	callq	0x100000ae0 <_bh_ht_set>
10000b7f8: 48 83 c4 30                 	addq	$48, %rsp
10000b7fc: 5d                          	popq	%rbp
10000b7fd: c3                          	retq
10000b7fe: 66 90                       	nop

000000010000b800 <_pcc_action_macro_0>:
10000b800: 55                          	pushq	%rbp
10000b801: 48 89 e5                    	movq	%rsp, %rbp
10000b804: 48 81 ec 80 00 00 00        	subq	$128, %rsp
10000b80b: 48 8b 05 16 08 00 00        	movq	2070(%rip), %rax        ## 0x10000c028 <_strnlen+0x10000c028>
10000b812: 48 8b 00                    	movq	(%rax), %rax
10000b815: 48 89 45 f8                 	movq	%rax, -8(%rbp)
10000b819: 48 89 7d 98                 	movq	%rdi, -104(%rbp)
10000b81d: 48 89 75 90                 	movq	%rsi, -112(%rbp)
10000b821: 48 89 55 88                 	movq	%rdx, -120(%rbp)
10000b825: c7 45 84 00 00 00 00        	movl	$0, -124(%rbp)
10000b82c: 48 8b 05 f5 07 00 00        	movq	2037(%rip), %rax        ## 0x10000c028 <_strnlen+0x10000c028>
10000b833: 48 8b 00                    	movq	(%rax), %rax
10000b836: 48 8b 4d f8                 	movq	-8(%rbp), %rcx
10000b83a: 48 39 c8                    	cmpq	%rcx, %rax
10000b83d: 0f 85 09 00 00 00           	jne	0x10000b84c <_pcc_action_macro_0+0x4c>
10000b843: 48 81 c4 80 00 00 00        	addq	$128, %rsp
10000b84a: 5d                          	popq	%rbp
10000b84b: c3                          	retq
10000b84c: e8 d2 03 00 00              	callq	0x10000bc23 <_strnlen+0x10000bc23>
10000b851: 0f 0b                       	ud2
10000b853: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nopw	%cs:(%rax,%rax)

000000010000b860 <_pcc_action_macro_1>:
10000b860: 55                          	pushq	%rbp
10000b861: 48 89 e5                    	movq	%rsp, %rbp
10000b864: 48 83 ec 30                 	subq	$48, %rsp
10000b868: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b86c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b870: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b874: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b878: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b87c: 48 8b 40 20                 	movq	32(%rax), %rax
10000b880: 48 8b 30                    	movq	(%rax), %rsi
10000b883: e8 a8 da ff ff              	callq	0x100009330 <_pcc_get_capture_string>
10000b888: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000b88c: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b890: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b894: 48 8b 40 20                 	movq	32(%rax), %rax
10000b898: 48 8b 70 10                 	movq	16(%rax), %rsi
10000b89c: e8 8f da ff ff              	callq	0x100009330 <_pcc_get_capture_string>
10000b8a1: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b8a5: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b8a9: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b8ad: 48 8b 40 20                 	movq	32(%rax), %rax
10000b8b1: 48 8b 70 08                 	movq	8(%rax), %rsi
10000b8b5: e8 76 da ff ff              	callq	0x100009330 <_pcc_get_capture_string>
10000b8ba: 48 8b 7d d8                 	movq	-40(%rbp), %rdi
10000b8be: 48 8b 75 e0                 	movq	-32(%rbp), %rsi
10000b8c2: 48 89 c2                    	movq	%rax, %rdx
10000b8c5: e8 56 61 ff ff              	callq	0x100001a20 <_create_macro_function>
10000b8ca: 48 83 c4 30                 	addq	$48, %rsp
10000b8ce: 5d                          	popq	%rbp
10000b8cf: c3                          	retq

000000010000b8d0 <_pcc_lr_table__shift>:
10000b8d0: 55                          	pushq	%rbp
10000b8d1: 48 89 e5                    	movq	%rsp, %rbp
10000b8d4: 48 83 ec 20                 	subq	$32, %rsp
10000b8d8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b8dc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000b8e0: 48 89 55 e8                 	movq	%rdx, -24(%rbp)
10000b8e4: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000b8e8: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b8ec: 48 8b 49 10                 	movq	16(%rcx), %rcx
10000b8f0: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000b8f4: 48 2b 4a 18                 	subq	24(%rdx), %rcx
10000b8f8: 48 39 c8                    	cmpq	%rcx, %rax
10000b8fb: 0f 86 14 00 00 00           	jbe	0x10000b915 <_pcc_lr_table__shift+0x45>
10000b901: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b905: 48 8b 40 10                 	movq	16(%rax), %rax
10000b909: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b90d: 48 2b 41 18                 	subq	24(%rcx), %rax
10000b911: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000b915: 48 c7 45 e0 00 00 00 00     	movq	$0, -32(%rbp)
10000b91d: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000b921: 48 3b 45 e8                 	cmpq	-24(%rbp), %rax
10000b925: 0f 83 38 00 00 00           	jae	0x10000b963 <_pcc_lr_table__shift+0x93>
10000b92b: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000b92f: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b933: 48 8b 00                    	movq	(%rax), %rax
10000b936: 48 8b 55 f0                 	movq	-16(%rbp), %rdx
10000b93a: 48 8b 4a 18                 	movq	24(%rdx), %rcx
10000b93e: 48 89 ce                    	movq	%rcx, %rsi
10000b941: 48 83 c6 01                 	addq	$1, %rsi
10000b945: 48 89 72 18                 	movq	%rsi, 24(%rdx)
10000b949: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
10000b94d: e8 1e 85 ff ff              	callq	0x100003e70 <_pcc_lr_table_entry__destroy>
10000b952: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000b956: 48 83 c0 01                 	addq	$1, %rax
10000b95a: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000b95e: e9 ba ff ff ff              	jmp	0x10000b91d <_pcc_lr_table__shift+0x4d>
10000b963: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b967: 48 8b 40 18                 	movq	24(%rax), %rax
10000b96b: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000b96f: 48 8b 49 08                 	movq	8(%rcx), %rcx
10000b973: 48 c1 e9 01                 	shrq	$1, %rcx
10000b977: 48 39 c8                    	cmpq	%rcx, %rax
10000b97a: 0f 86 60 00 00 00           	jbe	0x10000b9e0 <_pcc_lr_table__shift+0x110>
10000b980: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b984: 48 8b 38                    	movq	(%rax), %rdi
10000b987: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b98b: 48 8b 30                    	movq	(%rax), %rsi
10000b98e: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b992: 48 8b 40 18                 	movq	24(%rax), %rax
10000b996: 48 c1 e0 03                 	shlq	$3, %rax
10000b99a: 48 01 c6                    	addq	%rax, %rsi
10000b99d: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b9a1: 48 8b 50 10                 	movq	16(%rax), %rdx
10000b9a5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b9a9: 48 2b 50 18                 	subq	24(%rax), %rdx
10000b9ad: 48 c1 e2 03                 	shlq	$3, %rdx
10000b9b1: 48 c7 c1 ff ff ff ff        	movq	$-1, %rcx
10000b9b8: e8 54 02 00 00              	callq	0x10000bc11 <_strnlen+0x10000bc11>
10000b9bd: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b9c1: 48 8b 50 18                 	movq	24(%rax), %rdx
10000b9c5: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b9c9: 48 8b 48 10                 	movq	16(%rax), %rcx
10000b9cd: 48 29 d1                    	subq	%rdx, %rcx
10000b9d0: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000b9d4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000b9d8: 48 c7 40 18 00 00 00 00     	movq	$0, 24(%rax)
10000b9e0: 48 83 c4 20                 	addq	$32, %rsp
10000b9e4: 5d                          	popq	%rbp
10000b9e5: c3                          	retq
10000b9e6: 66 2e 0f 1f 84 00 00 00 00 00       	nopw	%cs:(%rax,%rax)

000000010000b9f0 <_pcc_char_array__add>:
10000b9f0: 55                          	pushq	%rbp
10000b9f1: 48 89 e5                    	movq	%rsp, %rbp
10000b9f4: 48 83 ec 30                 	subq	$48, %rsp
10000b9f8: 88 d0                       	movb	%dl, %al
10000b9fa: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000b9fe: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000ba02: 88 45 ef                    	movb	%al, -17(%rbp)
10000ba05: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ba09: 48 8b 40 08                 	movq	8(%rax), %rax
10000ba0d: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000ba11: 48 3b 41 10                 	cmpq	16(%rcx), %rax
10000ba15: 0f 87 ac 00 00 00           	ja	0x10000bac7 <_pcc_char_array__add+0xd7>
10000ba1b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ba1f: 48 8b 40 10                 	movq	16(%rax), %rax
10000ba23: 48 83 c0 01                 	addq	$1, %rax
10000ba27: 48 89 45 e0                 	movq	%rax, -32(%rbp)
10000ba2b: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000ba2f: 48 8b 40 08                 	movq	8(%rax), %rax
10000ba33: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000ba37: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000ba3c: 0f 85 08 00 00 00           	jne	0x10000ba4a <_pcc_char_array__add+0x5a>
10000ba42: 48 c7 45 d8 00 01 00 00     	movq	$256, -40(%rbp)         ## imm = 0x100
10000ba4a: e9 00 00 00 00              	jmp	0x10000ba4f <_pcc_char_array__add+0x5f>
10000ba4f: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000ba53: 31 c0                       	xorl	%eax, %eax
10000ba55: 48 3b 4d e0                 	cmpq	-32(%rbp), %rcx
10000ba59: 88 45 d7                    	movb	%al, -41(%rbp)
10000ba5c: 0f 83 0b 00 00 00           	jae	0x10000ba6d <_pcc_char_array__add+0x7d>
10000ba62: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000ba67: 0f 95 c0                    	setne	%al
10000ba6a: 88 45 d7                    	movb	%al, -41(%rbp)
10000ba6d: 8a 45 d7                    	movb	-41(%rbp), %al
10000ba70: a8 01                       	testb	$1, %al
10000ba72: 0f 85 05 00 00 00           	jne	0x10000ba7d <_pcc_char_array__add+0x8d>
10000ba78: e9 11 00 00 00              	jmp	0x10000ba8e <_pcc_char_array__add+0x9e>
10000ba7d: 48 8b 45 d8                 	movq	-40(%rbp), %rax
10000ba81: 48 c1 e0 01                 	shlq	$1, %rax
10000ba85: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000ba89: e9 c1 ff ff ff              	jmp	0x10000ba4f <_pcc_char_array__add+0x5f>
10000ba8e: 48 83 7d d8 00              	cmpq	$0, -40(%rbp)
10000ba93: 0f 85 08 00 00 00           	jne	0x10000baa1 <_pcc_char_array__add+0xb1>
10000ba99: 48 8b 45 e0                 	movq	-32(%rbp), %rax
10000ba9d: 48 89 45 d8                 	movq	%rax, -40(%rbp)
10000baa1: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000baa5: 48 8b 38                    	movq	(%rax), %rdi
10000baa8: 48 8b 75 d8                 	movq	-40(%rbp), %rsi
10000baac: e8 2f 84 ff ff              	callq	0x100003ee0 <_pcc_realloc_e>
10000bab1: 48 89 c1                    	movq	%rax, %rcx
10000bab4: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bab8: 48 89 08                    	movq	%rcx, (%rax)
10000babb: 48 8b 4d d8                 	movq	-40(%rbp), %rcx
10000babf: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bac3: 48 89 48 08                 	movq	%rcx, 8(%rax)
10000bac7: 8a 55 ef                    	movb	-17(%rbp), %dl
10000baca: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bace: 48 8b 00                    	movq	(%rax), %rax
10000bad1: 48 8b 75 f0                 	movq	-16(%rbp), %rsi
10000bad5: 48 8b 4e 10                 	movq	16(%rsi), %rcx
10000bad9: 48 89 cf                    	movq	%rcx, %rdi
10000badc: 48 83 c7 01                 	addq	$1, %rdi
10000bae0: 48 89 7e 10                 	movq	%rdi, 16(%rsi)
10000bae4: 88 14 08                    	movb	%dl, (%rax,%rcx)
10000bae7: 48 83 c4 30                 	addq	$48, %rsp
10000baeb: 5d                          	popq	%rbp
10000baec: c3                          	retq
10000baed: 0f 1f 00                    	nopl	(%rax)

000000010000baf0 <_pcc_lr_stack__term>:
10000baf0: 55                          	pushq	%rbp
10000baf1: 48 89 e5                    	movq	%rsp, %rbp
10000baf4: 48 83 ec 10                 	subq	$16, %rsp
10000baf8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000bafc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000bb00: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bb04: 48 8b 38                    	movq	(%rax), %rdi
10000bb07: e8 3b 01 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000bb0c: 48 83 c4 10                 	addq	$16, %rsp
10000bb10: 5d                          	popq	%rbp
10000bb11: c3                          	retq
10000bb12: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

000000010000bb20 <_pcc_lr_table__term>:
10000bb20: 55                          	pushq	%rbp
10000bb21: 48 89 e5                    	movq	%rsp, %rbp
10000bb24: 48 83 ec 10                 	subq	$16, %rsp
10000bb28: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000bb2c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000bb30: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bb34: 48 8b 40 10                 	movq	16(%rax), %rax
10000bb38: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000bb3c: 48 3b 41 18                 	cmpq	24(%rcx), %rax
10000bb40: 0f 86 31 00 00 00           	jbe	0x10000bb77 <_pcc_lr_table__term+0x57>
10000bb46: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bb4a: 48 8b 48 10                 	movq	16(%rax), %rcx
10000bb4e: 48 83 c1 ff                 	addq	$-1, %rcx
10000bb52: 48 89 48 10                 	movq	%rcx, 16(%rax)
10000bb56: 48 8b 7d f8                 	movq	-8(%rbp), %rdi
10000bb5a: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bb5e: 48 8b 00                    	movq	(%rax), %rax
10000bb61: 48 8b 4d f0                 	movq	-16(%rbp), %rcx
10000bb65: 48 8b 49 10                 	movq	16(%rcx), %rcx
10000bb69: 48 8b 34 c8                 	movq	(%rax,%rcx,8), %rsi
10000bb6d: e8 fe 82 ff ff              	callq	0x100003e70 <_pcc_lr_table_entry__destroy>
10000bb72: e9 b9 ff ff ff              	jmp	0x10000bb30 <_pcc_lr_table__term+0x10>
10000bb77: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bb7b: 48 8b 38                    	movq	(%rax), %rdi
10000bb7e: e8 c4 00 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000bb83: 48 83 c4 10                 	addq	$16, %rsp
10000bb87: 5d                          	popq	%rbp
10000bb88: c3                          	retq
10000bb89: 0f 1f 80 00 00 00 00        	nopl	(%rax)

000000010000bb90 <_pcc_char_array__term>:
10000bb90: 55                          	pushq	%rbp
10000bb91: 48 89 e5                    	movq	%rsp, %rbp
10000bb94: 48 83 ec 10                 	subq	$16, %rsp
10000bb98: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000bb9c: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000bba0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bba4: 48 8b 38                    	movq	(%rax), %rdi
10000bba7: e8 9b 00 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000bbac: 48 83 c4 10                 	addq	$16, %rsp
10000bbb0: 5d                          	popq	%rbp
10000bbb1: c3                          	retq
10000bbb2: 66 66 66 66 66 2e 0f 1f 84 00 00 00 00 00   	nopw	%cs:(%rax,%rax)

000000010000bbc0 <_pcc_memory_recycler__term>:
10000bbc0: 55                          	pushq	%rbp
10000bbc1: 48 89 e5                    	movq	%rsp, %rbp
10000bbc4: 48 83 ec 20                 	subq	$32, %rsp
10000bbc8: 48 89 7d f8                 	movq	%rdi, -8(%rbp)
10000bbcc: 48 89 75 f0                 	movq	%rsi, -16(%rbp)
10000bbd0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bbd4: 48 83 38 00                 	cmpq	$0, (%rax)
10000bbd8: 0f 84 27 00 00 00           	je	0x10000bc05 <_pcc_memory_recycler__term+0x45>
10000bbde: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bbe2: 48 8b 00                    	movq	(%rax), %rax
10000bbe5: 48 89 45 e8                 	movq	%rax, -24(%rbp)
10000bbe9: 48 8b 45 e8                 	movq	-24(%rbp), %rax
10000bbed: 48 8b 08                    	movq	(%rax), %rcx
10000bbf0: 48 8b 45 f0                 	movq	-16(%rbp), %rax
10000bbf4: 48 89 08                    	movq	%rcx, (%rax)
10000bbf7: 48 8b 7d e8                 	movq	-24(%rbp), %rdi
10000bbfb: e8 47 00 00 00              	callq	0x10000bc47 <_strnlen+0x10000bc47>
10000bc00: e9 cb ff ff ff              	jmp	0x10000bbd0 <_pcc_memory_recycler__term+0x10>
10000bc05: 48 83 c4 20                 	addq	$32, %rsp
10000bc09: 5d                          	popq	%rbp
10000bc0a: c3                          	retq

Disassembly of section __TEXT,__stubs:

000000010000bc0b <__stubs>:
10000bc0b: ff 25 ef 03 00 00           	jmpq	*1007(%rip)             ## 0x10000c000 <_strnlen+0x10000c000>
10000bc11: ff 25 f1 03 00 00           	jmpq	*1009(%rip)             ## 0x10000c008 <_strnlen+0x10000c008>
10000bc17: ff 25 f3 03 00 00           	jmpq	*1011(%rip)             ## 0x10000c010 <_strnlen+0x10000c010>
10000bc1d: ff 25 f5 03 00 00           	jmpq	*1013(%rip)             ## 0x10000c018 <_strnlen+0x10000c018>
10000bc23: ff 25 f7 03 00 00           	jmpq	*1015(%rip)             ## 0x10000c020 <_strnlen+0x10000c020>
10000bc29: ff 25 09 04 00 00           	jmpq	*1033(%rip)             ## 0x10000c038 <_strnlen+0x10000c038>
10000bc2f: ff 25 0b 04 00 00           	jmpq	*1035(%rip)             ## 0x10000c040 <_strnlen+0x10000c040>
10000bc35: ff 25 0d 04 00 00           	jmpq	*1037(%rip)             ## 0x10000c048 <_strnlen+0x10000c048>
10000bc3b: ff 25 0f 04 00 00           	jmpq	*1039(%rip)             ## 0x10000c050 <_strnlen+0x10000c050>
10000bc41: ff 25 11 04 00 00           	jmpq	*1041(%rip)             ## 0x10000c058 <_strnlen+0x10000c058>
10000bc47: ff 25 13 04 00 00           	jmpq	*1043(%rip)             ## 0x10000c060 <_strnlen+0x10000c060>
10000bc4d: ff 25 15 04 00 00           	jmpq	*1045(%rip)             ## 0x10000c068 <_strnlen+0x10000c068>
10000bc53: ff 25 17 04 00 00           	jmpq	*1047(%rip)             ## 0x10000c070 <_strnlen+0x10000c070>
10000bc59: ff 25 19 04 00 00           	jmpq	*1049(%rip)             ## 0x10000c078 <_strnlen+0x10000c078>
10000bc5f: ff 25 1b 04 00 00           	jmpq	*1051(%rip)             ## 0x10000c080 <_strnlen+0x10000c080>
10000bc65: ff 25 1d 04 00 00           	jmpq	*1053(%rip)             ## 0x10000c088 <_strnlen+0x10000c088>
10000bc6b: ff 25 1f 04 00 00           	jmpq	*1055(%rip)             ## 0x10000c090 <_strnlen+0x10000c090>
10000bc71: ff 25 21 04 00 00           	jmpq	*1057(%rip)             ## 0x10000c098 <_strnlen+0x10000c098>
10000bc77: ff 25 23 04 00 00           	jmpq	*1059(%rip)             ## 0x10000c0a0 <_strnlen+0x10000c0a0>
10000bc7d: ff 25 25 04 00 00           	jmpq	*1061(%rip)             ## 0x10000c0a8 <_strnlen+0x10000c0a8>
10000bc83: ff 25 27 04 00 00           	jmpq	*1063(%rip)             ## 0x10000c0b0 <_strnlen+0x10000c0b0>
10000bc89: ff 25 29 04 00 00           	jmpq	*1065(%rip)             ## 0x10000c0b8 <_strnlen+0x10000c0b8>
