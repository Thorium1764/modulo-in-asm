section .data

section .text
   global _start

_start:
   ; empty for now


_modulo: ; rdi: divident , rsi: divisor
   mov rax, rdi
   cqo
   idiv rsi
   mov rax, rdx
   test rax, rax ; some weird bitwise shit
   jge .done
   add rax, rsi

_bigmodulo:


_nthbit: ; num in rax , n in rcx , result in rbx
   mov rbx, rax
   shr rbx, cl
   and rbx, 1
   ret

.done
   ret

   
