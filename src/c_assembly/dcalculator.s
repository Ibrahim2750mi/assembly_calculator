
build/c_assembly/calculator.o:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   0:	68 04 00 00 00       	push   $0x4
   5:	68 08 00 00 00       	push   $0x8
   a:	68 00 00 00 00       	push   $0x0
   f:	68 00 00 00 00       	push   $0x0
  14:	e8 fc ff ff ff       	call   15 <main+0x15>
  19:	83 c4 10             	add    $0x10,%esp
  1c:	83 3d 08 00 00 00 2b 	cmpl   $0x2b,0x8
  23:	74 1b                	je     40 <LAdSuMu>
  25:	83 3d 08 00 00 00 2d 	cmpl   $0x2d,0x8
  2c:	74 12                	je     40 <LAdSuMu>
  2e:	83 3d 08 00 00 00 2a 	cmpl   $0x2a,0x8
  35:	74 09                	je     40 <LAdSuMu>
  37:	83 3d 08 00 00 00 2f 	cmpl   $0x2f,0x8
  3e:	74 4f                	je     8f <LDiv>

00000040 <LAdSuMu>:
  40:	a0 00 00 00 00       	mov    0x0,%al
  45:	2c 30                	sub    $0x30,%al
  47:	8a 15 04 00 00 00    	mov    0x4,%dl
  4d:	80 ea 30             	sub    $0x30,%dl
  50:	83 3d 08 00 00 00 2b 	cmpl   $0x2b,0x8
  57:	74 12                	je     6b <LAdd>
  59:	83 3d 08 00 00 00 2d 	cmpl   $0x2d,0x8
  60:	74 14                	je     76 <LSub>
  62:	83 3d 08 00 00 00 2a 	cmpl   $0x2a,0x8
  69:	74 16                	je     81 <LMul>

0000006b <LAdd>:
  6b:	00 d0                	add    %dl,%al
  6d:	04 30                	add    $0x30,%al
  6f:	a2 0c 00 00 00       	mov    %al,0xc
  74:	eb 37                	jmp    ad <LPrint>

00000076 <LSub>:
  76:	28 d0                	sub    %dl,%al
  78:	04 30                	add    $0x30,%al
  7a:	a2 0c 00 00 00       	mov    %al,0xc
  7f:	eb 2c                	jmp    ad <LPrint>

00000081 <LMul>:
  81:	f6 e2                	mul    %dl
  83:	66 83 c0 30          	add    $0x30,%ax
  87:	66 a3 0c 00 00 00    	mov    %ax,0xc
  8d:	eb 1e                	jmp    ad <LPrint>

0000008f <LDiv>:
  8f:	66 a1 00 00 00 00    	mov    0x0,%ax
  95:	66 83 e8 30          	sub    $0x30,%ax
  99:	8a 15 04 00 00 00    	mov    0x4,%dl
  9f:	80 ea 30             	sub    $0x30,%dl
  a2:	f6 f2                	div    %dl
  a4:	04 30                	add    $0x30,%al
  a6:	a2 0c 00 00 00       	mov    %al,0xc
  ab:	eb 00                	jmp    ad <LPrint>

000000ad <LPrint>:
  ad:	68 0c 00 00 00       	push   $0xc
  b2:	68 09 00 00 00       	push   $0x9
  b7:	e8 fc ff ff ff       	call   b8 <LPrint+0xb>

000000bc <exit>:
  bc:	b8 01 00 00 00       	mov    $0x1,%eax
  c1:	cd 80                	int    $0x80
