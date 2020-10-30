; helloWorld.asm
;
; Author: Noah670
; Date: 28-Oct-2020

global _start

section .text:

_start:
 mov eax, 0x4   ; call the syscall write register to use
 mov ebx, 1     ; file descriptor to use stdout
 mov ecx, notification ; notification for the buffer
 mov edx, notificationLength ; include the notification length
 int 0x80       ; call syscall



 mov eax, 0x1 ; start exit sequence call
 mov ebx, 0
 int 0x80

section .data:
  notification: db "Hello World!", 0xA
  notificationLength: equ $-notification
