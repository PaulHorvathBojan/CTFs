
heapedit:     file format elf64-x86-64


Disassembly of section .init:

0000000000400650 <_init>:
  400650:	48 83 ec 08          	sub    rsp,0x8
  400654:	48 8b 05 9d 09 20 00 	mov    rax,QWORD PTR [rip+0x20099d]        # 600ff8 <__gmon_start__>
  40065b:	48 85 c0             	test   rax,rax
  40065e:	74 02                	je     400662 <_init+0x12>
  400660:	ff d0                	call   rax
  400662:	48 83 c4 08          	add    rsp,0x8
  400666:	c3                   	ret    

Disassembly of section .plt:

0000000000400670 <.plt>:
  400670:	ff 35 92 09 20 00    	push   QWORD PTR [rip+0x200992]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400676:	ff 25 94 09 20 00    	jmp    QWORD PTR [rip+0x200994]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40067c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400680 <free@plt>:
  400680:	ff 25 92 09 20 00    	jmp    QWORD PTR [rip+0x200992]        # 601018 <free@GLIBC_2.2.5>
  400686:	68 00 00 00 00       	push   0x0
  40068b:	e9 e0 ff ff ff       	jmp    400670 <.plt>

0000000000400690 <puts@plt>:
  400690:	ff 25 8a 09 20 00    	jmp    QWORD PTR [rip+0x20098a]        # 601020 <puts@GLIBC_2.2.5>
  400696:	68 01 00 00 00       	push   0x1
  40069b:	e9 d0 ff ff ff       	jmp    400670 <.plt>

00000000004006a0 <__stack_chk_fail@plt>:
  4006a0:	ff 25 82 09 20 00    	jmp    QWORD PTR [rip+0x200982]        # 601028 <__stack_chk_fail@GLIBC_2.4>
  4006a6:	68 02 00 00 00       	push   0x2
  4006ab:	e9 c0 ff ff ff       	jmp    400670 <.plt>

00000000004006b0 <setbuf@plt>:
  4006b0:	ff 25 7a 09 20 00    	jmp    QWORD PTR [rip+0x20097a]        # 601030 <setbuf@GLIBC_2.2.5>
  4006b6:	68 03 00 00 00       	push   0x3
  4006bb:	e9 b0 ff ff ff       	jmp    400670 <.plt>

00000000004006c0 <printf@plt>:
  4006c0:	ff 25 72 09 20 00    	jmp    QWORD PTR [rip+0x200972]        # 601038 <printf@GLIBC_2.2.5>
  4006c6:	68 04 00 00 00       	push   0x4
  4006cb:	e9 a0 ff ff ff       	jmp    400670 <.plt>

00000000004006d0 <fgets@plt>:
  4006d0:	ff 25 6a 09 20 00    	jmp    QWORD PTR [rip+0x20096a]        # 601040 <fgets@GLIBC_2.2.5>
  4006d6:	68 05 00 00 00       	push   0x5
  4006db:	e9 90 ff ff ff       	jmp    400670 <.plt>

00000000004006e0 <malloc@plt>:
  4006e0:	ff 25 62 09 20 00    	jmp    QWORD PTR [rip+0x200962]        # 601048 <malloc@GLIBC_2.2.5>
  4006e6:	68 06 00 00 00       	push   0x6
  4006eb:	e9 80 ff ff ff       	jmp    400670 <.plt>

00000000004006f0 <fopen@plt>:
  4006f0:	ff 25 5a 09 20 00    	jmp    QWORD PTR [rip+0x20095a]        # 601050 <fopen@GLIBC_2.2.5>
  4006f6:	68 07 00 00 00       	push   0x7
  4006fb:	e9 70 ff ff ff       	jmp    400670 <.plt>

0000000000400700 <__isoc99_scanf@plt>:
  400700:	ff 25 52 09 20 00    	jmp    QWORD PTR [rip+0x200952]        # 601058 <__isoc99_scanf@GLIBC_2.7>
  400706:	68 08 00 00 00       	push   0x8
  40070b:	e9 60 ff ff ff       	jmp    400670 <.plt>

0000000000400710 <strcat@plt>:
  400710:	ff 25 4a 09 20 00    	jmp    QWORD PTR [rip+0x20094a]        # 601060 <strcat@GLIBC_2.2.5>
  400716:	68 09 00 00 00       	push   0x9
  40071b:	e9 50 ff ff ff       	jmp    400670 <.plt>

Disassembly of section .text:

0000000000400720 <_start>:
  400720:	31 ed                	xor    ebp,ebp
  400722:	49 89 d1             	mov    r9,rdx
  400725:	5e                   	pop    rsi
  400726:	48 89 e2             	mov    rdx,rsp
  400729:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40072d:	50                   	push   rax
  40072e:	54                   	push   rsp
  40072f:	49 c7 c0 f0 0a 40 00 	mov    r8,0x400af0
  400736:	48 c7 c1 80 0a 40 00 	mov    rcx,0x400a80
  40073d:	48 c7 c7 07 08 40 00 	mov    rdi,0x400807
  400744:	ff 15 a6 08 20 00    	call   QWORD PTR [rip+0x2008a6]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40074a:	f4                   	hlt    
  40074b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400750 <_dl_relocate_static_pie>:
  400750:	f3 c3                	repz ret 
  400752:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400759:	00 00 00 
  40075c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400760 <deregister_tm_clones>:
  400760:	55                   	push   rbp
  400761:	b8 78 10 60 00       	mov    eax,0x601078
  400766:	48 3d 78 10 60 00    	cmp    rax,0x601078
  40076c:	48 89 e5             	mov    rbp,rsp
  40076f:	74 17                	je     400788 <deregister_tm_clones+0x28>
  400771:	b8 00 00 00 00       	mov    eax,0x0
  400776:	48 85 c0             	test   rax,rax
  400779:	74 0d                	je     400788 <deregister_tm_clones+0x28>
  40077b:	5d                   	pop    rbp
  40077c:	bf 78 10 60 00       	mov    edi,0x601078
  400781:	ff e0                	jmp    rax
  400783:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400788:	5d                   	pop    rbp
  400789:	c3                   	ret    
  40078a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400790 <register_tm_clones>:
  400790:	be 78 10 60 00       	mov    esi,0x601078
  400795:	55                   	push   rbp
  400796:	48 81 ee 78 10 60 00 	sub    rsi,0x601078
  40079d:	48 89 e5             	mov    rbp,rsp
  4007a0:	48 c1 fe 03          	sar    rsi,0x3
  4007a4:	48 89 f0             	mov    rax,rsi
  4007a7:	48 c1 e8 3f          	shr    rax,0x3f
  4007ab:	48 01 c6             	add    rsi,rax
  4007ae:	48 d1 fe             	sar    rsi,1
  4007b1:	74 15                	je     4007c8 <register_tm_clones+0x38>
  4007b3:	b8 00 00 00 00       	mov    eax,0x0
  4007b8:	48 85 c0             	test   rax,rax
  4007bb:	74 0b                	je     4007c8 <register_tm_clones+0x38>
  4007bd:	5d                   	pop    rbp
  4007be:	bf 78 10 60 00       	mov    edi,0x601078
  4007c3:	ff e0                	jmp    rax
  4007c5:	0f 1f 00             	nop    DWORD PTR [rax]
  4007c8:	5d                   	pop    rbp
  4007c9:	c3                   	ret    
  4007ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004007d0 <__do_global_dtors_aux>:
  4007d0:	80 3d a9 08 20 00 00 	cmp    BYTE PTR [rip+0x2008a9],0x0        # 601080 <completed.7698>
  4007d7:	75 17                	jne    4007f0 <__do_global_dtors_aux+0x20>
  4007d9:	55                   	push   rbp
  4007da:	48 89 e5             	mov    rbp,rsp
  4007dd:	e8 7e ff ff ff       	call   400760 <deregister_tm_clones>
  4007e2:	c6 05 97 08 20 00 01 	mov    BYTE PTR [rip+0x200897],0x1        # 601080 <completed.7698>
  4007e9:	5d                   	pop    rbp
  4007ea:	c3                   	ret    
  4007eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4007f0:	f3 c3                	repz ret 
  4007f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4007f6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4007fd:	00 00 00 

0000000000400800 <frame_dummy>:
  400800:	55                   	push   rbp
  400801:	48 89 e5             	mov    rbp,rsp
  400804:	5d                   	pop    rbp
  400805:	eb 89                	jmp    400790 <register_tm_clones>

0000000000400807 <main>:
  400807:	55                   	push   rbp
  400808:	48 89 e5             	mov    rbp,rsp
  40080b:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  400812:	89 bd 4c ff ff ff    	mov    DWORD PTR [rbp-0xb4],edi
  400818:	48 89 b5 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rsi
  40081f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400826:	00 00 
  400828:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40082c:	31 c0                	xor    eax,eax
  40082e:	48 8b 05 43 08 20 00 	mov    rax,QWORD PTR [rip+0x200843]        # 601078 <stdout@GLIBC_2.2.5>
  400835:	be 00 00 00 00       	mov    esi,0x0
  40083a:	48 89 c7             	mov    rdi,rax
  40083d:	e8 6e fe ff ff       	call   4006b0 <setbuf@plt>
  400842:	48 8d 35 bf 02 00 00 	lea    rsi,[rip+0x2bf]        # 400b08 <_IO_stdin_used+0x8>
  400849:	48 8d 3d ba 02 00 00 	lea    rdi,[rip+0x2ba]        # 400b0a <_IO_stdin_used+0xa>
  400850:	e8 9b fe ff ff       	call   4006f0 <fopen@plt>
  400855:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
  40085c:	48 8b 95 78 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x88]
  400863:	48 8d 45 b0          	lea    rax,[rbp-0x50]
  400867:	be 40 00 00 00       	mov    esi,0x40
  40086c:	48 89 c7             	mov    rdi,rax
  40086f:	e8 5c fe ff ff       	call   4006d0 <fgets@plt>
  400874:	48 b8 74 68 69 73 20 	movabs rax,0x2073692073696874
  40087b:	69 73 20 
  40087e:	48 ba 61 20 72 61 6e 	movabs rdx,0x6d6f646e61722061
  400885:	64 6f 6d 
  400888:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
  40088c:	48 89 55 98          	mov    QWORD PTR [rbp-0x68],rdx
  400890:	48 b8 20 73 74 72 69 	movabs rax,0x2e676e6972747320
  400897:	6e 67 2e 
  40089a:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  40089e:	c6 45 a8 00          	mov    BYTE PTR [rbp-0x58],0x0
  4008a2:	48 c7 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],0x0
  4008a9:	00 00 00 00 
  4008ad:	c7 85 64 ff ff ff 00 	mov    DWORD PTR [rbp-0x9c],0x0
  4008b4:	00 00 00 
  4008b7:	eb 7a                	jmp    400933 <main+0x12c>
  4008b9:	bf 80 00 00 00       	mov    edi,0x80
  4008be:	e8 1d fe ff ff       	call   4006e0 <malloc@plt>
  4008c3:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
  4008ca:	48 83 bd 68 ff ff ff 	cmp    QWORD PTR [rbp-0x98],0x0
  4008d1:	00 
  4008d2:	75 0e                	jne    4008e2 <main+0xdb>
  4008d4:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  4008db:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
  4008e2:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  4008e9:	48 be 43 6f 6e 67 72 	movabs rsi,0x73746172676e6f43
  4008f0:	61 74 73 
  4008f3:	48 bf 21 20 59 6f 75 	movabs rdi,0x662072756f592021
  4008fa:	72 20 66 
  4008fd:	48 89 30             	mov    QWORD PTR [rax],rsi
  400900:	48 89 78 08          	mov    QWORD PTR [rax+0x8],rdi
  400904:	48 b9 6c 61 67 20 69 	movabs rcx,0x203a73692067616c
  40090b:	73 3a 20 
  40090e:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  400912:	c6 40 18 00          	mov    BYTE PTR [rax+0x18],0x0
  400916:	48 8d 55 b0          	lea    rdx,[rbp-0x50]
  40091a:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  400921:	48 89 d6             	mov    rsi,rdx
  400924:	48 89 c7             	mov    rdi,rax
  400927:	e8 e4 fd ff ff       	call   400710 <strcat@plt>
  40092c:	83 85 64 ff ff ff 01 	add    DWORD PTR [rbp-0x9c],0x1
  400933:	83 bd 64 ff ff ff 06 	cmp    DWORD PTR [rbp-0x9c],0x6
  40093a:	0f 8e 79 ff ff ff    	jle    4008b9 <main+0xb2>
  400940:	bf 80 00 00 00       	mov    edi,0x80
  400945:	e8 96 fd ff ff       	call   4006e0 <malloc@plt>
  40094a:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
  40094e:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  400952:	48 be 53 6f 72 72 79 	movabs rsi,0x5420217972726f53
  400959:	21 20 54 
  40095c:	48 bf 68 69 73 20 77 	movabs rdi,0x276e6f7720736968
  400963:	6f 6e 27 
  400966:	48 89 30             	mov    QWORD PTR [rax],rsi
  400969:	48 89 78 08          	mov    QWORD PTR [rax+0x8],rdi
  40096d:	48 b9 74 20 68 65 6c 	movabs rcx,0x7920706c65682074
  400974:	70 20 79 
  400977:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  40097b:	c7 40 18 6f 75 3a 20 	mov    DWORD PTR [rax+0x18],0x203a756f
  400982:	c6 40 1c 00          	mov    BYTE PTR [rax+0x1c],0x0
  400986:	48 8d 55 90          	lea    rdx,[rbp-0x70]
  40098a:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  40098e:	48 89 d6             	mov    rsi,rdx
  400991:	48 89 c7             	mov    rdi,rax
  400994:	e8 77 fd ff ff       	call   400710 <strcat@plt>
  400999:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
  4009a0:	48 89 c7             	mov    rdi,rax
  4009a3:	e8 d8 fc ff ff       	call   400680 <free@plt>
  4009a8:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  4009ac:	48 89 c7             	mov    rdi,rax
  4009af:	e8 cc fc ff ff       	call   400680 <free@plt>
  4009b4:	c7 85 60 ff ff ff 00 	mov    DWORD PTR [rbp-0xa0],0x0
  4009bb:	00 00 00 
  4009be:	c6 85 5f ff ff ff 00 	mov    BYTE PTR [rbp-0xa1],0x0
  4009c5:	48 8d 3d 4c 01 00 00 	lea    rdi,[rip+0x14c]        # 400b18 <_IO_stdin_used+0x18>
  4009cc:	e8 bf fc ff ff       	call   400690 <puts@plt>
  4009d1:	48 8d 3d 66 01 00 00 	lea    rdi,[rip+0x166]        # 400b3e <_IO_stdin_used+0x3e>
  4009d8:	b8 00 00 00 00       	mov    eax,0x0
  4009dd:	e8 de fc ff ff       	call   4006c0 <printf@plt>
  4009e2:	48 8d 85 60 ff ff ff 	lea    rax,[rbp-0xa0]
  4009e9:	48 89 c6             	mov    rsi,rax
  4009ec:	48 8d 3d 55 01 00 00 	lea    rdi,[rip+0x155]        # 400b48 <_IO_stdin_used+0x48>
  4009f3:	b8 00 00 00 00       	mov    eax,0x0
  4009f8:	e8 03 fd ff ff       	call   400700 <__isoc99_scanf@plt>
  4009fd:	48 8d 3d 47 01 00 00 	lea    rdi,[rip+0x147]        # 400b4b <_IO_stdin_used+0x4b>
  400a04:	b8 00 00 00 00       	mov    eax,0x0
  400a09:	e8 b2 fc ff ff       	call   4006c0 <printf@plt>
  400a0e:	48 8d 85 5f ff ff ff 	lea    rax,[rbp-0xa1]
  400a15:	48 89 c6             	mov    rsi,rax
  400a18:	48 8d 3d 34 01 00 00 	lea    rdi,[rip+0x134]        # 400b53 <_IO_stdin_used+0x53>
  400a1f:	b8 00 00 00 00       	mov    eax,0x0
  400a24:	e8 d7 fc ff ff       	call   400700 <__isoc99_scanf@plt>
  400a29:	8b 85 60 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa0]
  400a2f:	48 63 d0             	movsxd rdx,eax
  400a32:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  400a39:	48 01 c2             	add    rdx,rax
  400a3c:	0f b6 85 5f ff ff ff 	movzx  eax,BYTE PTR [rbp-0xa1]
  400a43:	88 02                	mov    BYTE PTR [rdx],al
  400a45:	bf 80 00 00 00       	mov    edi,0x80
  400a4a:	e8 91 fc ff ff       	call   4006e0 <malloc@plt>
  400a4f:	48 89 45 88          	mov    QWORD PTR [rbp-0x78],rax
  400a53:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  400a57:	48 83 c0 10          	add    rax,0x10
  400a5b:	48 89 c7             	mov    rdi,rax
  400a5e:	e8 2d fc ff ff       	call   400690 <puts@plt>
  400a63:	b8 00 00 00 00       	mov    eax,0x0
  400a68:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  400a6c:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  400a73:	00 00 
  400a75:	74 05                	je     400a7c <main+0x275>
  400a77:	e8 24 fc ff ff       	call   4006a0 <__stack_chk_fail@plt>
  400a7c:	c9                   	leave  
  400a7d:	c3                   	ret    
  400a7e:	66 90                	xchg   ax,ax

0000000000400a80 <__libc_csu_init>:
  400a80:	41 57                	push   r15
  400a82:	41 56                	push   r14
  400a84:	49 89 d7             	mov    r15,rdx
  400a87:	41 55                	push   r13
  400a89:	41 54                	push   r12
  400a8b:	4c 8d 25 6e 03 20 00 	lea    r12,[rip+0x20036e]        # 600e00 <__frame_dummy_init_array_entry>
  400a92:	55                   	push   rbp
  400a93:	48 8d 2d 6e 03 20 00 	lea    rbp,[rip+0x20036e]        # 600e08 <__do_global_dtors_aux_fini_array_entry>
  400a9a:	53                   	push   rbx
  400a9b:	41 89 fd             	mov    r13d,edi
  400a9e:	49 89 f6             	mov    r14,rsi
  400aa1:	4c 29 e5             	sub    rbp,r12
  400aa4:	48 83 ec 08          	sub    rsp,0x8
  400aa8:	48 c1 fd 03          	sar    rbp,0x3
  400aac:	e8 9f fb ff ff       	call   400650 <_init>
  400ab1:	48 85 ed             	test   rbp,rbp
  400ab4:	74 20                	je     400ad6 <__libc_csu_init+0x56>
  400ab6:	31 db                	xor    ebx,ebx
  400ab8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  400abf:	00 
  400ac0:	4c 89 fa             	mov    rdx,r15
  400ac3:	4c 89 f6             	mov    rsi,r14
  400ac6:	44 89 ef             	mov    edi,r13d
  400ac9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  400acd:	48 83 c3 01          	add    rbx,0x1
  400ad1:	48 39 dd             	cmp    rbp,rbx
  400ad4:	75 ea                	jne    400ac0 <__libc_csu_init+0x40>
  400ad6:	48 83 c4 08          	add    rsp,0x8
  400ada:	5b                   	pop    rbx
  400adb:	5d                   	pop    rbp
  400adc:	41 5c                	pop    r12
  400ade:	41 5d                	pop    r13
  400ae0:	41 5e                	pop    r14
  400ae2:	41 5f                	pop    r15
  400ae4:	c3                   	ret    
  400ae5:	90                   	nop
  400ae6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  400aed:	00 00 00 

0000000000400af0 <__libc_csu_fini>:
  400af0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400af4 <_fini>:
  400af4:	48 83 ec 08          	sub    rsp,0x8
  400af8:	48 83 c4 08          	add    rsp,0x8
  400afc:	c3                   	ret    
