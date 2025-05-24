//Programa: flip.asm
//Troca os valores de ram[0] e ram[1]

//temp = r1
//r1=r0
//r0 = temp

 @1
 D=M
 @temp
 M=D
 
 @0
 D=M
 @1
 M=D
 
 @temp
 D=M
 @0
 M=D
 
 (END)
 @END
 0;JMP
