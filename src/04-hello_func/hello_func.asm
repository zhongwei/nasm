SECTION .data
  msg     db      'Hello, brave new world!', 0Ah

SECTION .text

global _start

_start:
  mov     eax, msg
  call    strlen

  mov     edx, eax
  mov     eax, 4
  mov     ebx, 1
  mov     ecx, msg
  int     80H

  mov     eax, 1
  mov     ebx, 0
  int     80h

strlen:
  push    ebx
  mov     ebx, eax

nextchar:
  cmp     byte [eax], 0
  jz      finished
  inc     eax
  jmp     nextchar

finished:
  sub     eax, ebx
  pop     ebx
  ret



