PM12  EQU  0FF2CH
P12  EQU  0FF0CH
P13  EQU  0FF0DH
WDTM  EQU  0FF48H

_main:
  MOVW  AX,#0FEFFH
  MOVW  SP,AX
  MOV  WDTM,70H
  MOV  PM12,#0F7H
loop:
  MOV  P12,#0
  MOV  P13,#1
  CALL  !delay
  MOV  P12,#8
  MOV  P13,#0
  CALL  !delay
  BR  $loop
delay:
  MOV  A,0FFH
delay_loop1:
  MOV  X,0FFH
delay_loop2:
  NOP
  DEC  X
  BNZ  $delay_loop2
  DEC  A
  BNZ  $delay_loop1
  RET
