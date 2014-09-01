@Initialisation

init:
  MOV R0, #26953125 @What we multiplying
  MOV R2, #0 @Integer accumulation
  MOV R3, #0 @Fractional accumulation
  LDR R7, =0x80000000 @Max signed threshold
  ADDS R1, #2

loop:
  SUBS R1, #1 @Update R1 counter
  CMP R1, #0 @Check for end of multiplication
  BEQ finished
  ADDS R3, R0
  CMP R3, R7 @Check for a "signed" overflow 
  BHS count @If "overflow", correct decimal component and increment int
  B loop @If no "overflow", continue multiplication

count: @Count of the number of "overflows"
  ADDS R2, #1
  SUBS R3, R7
  B loop

finished:
  NOP
  B finished