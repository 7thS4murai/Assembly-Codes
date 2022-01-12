bits 64

; Hello World!

%define write_number    mov rax, 1
%define exit_number     mov rax, 60
%define stdoutt         mov rdi, 1

section .rodata
  msg:    db   `Hello World!\n`
  MSG_SIZE equ $-msg    ; calculation to get string size.


section .text

global _start
_start: 
  write_number
  stdoutt
  mov rsi, msg
  mov rdx, MSG_SIZE
  syscall
  
  exit_number
  xor rdi, rdi
  syscall
 

