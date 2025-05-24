//soma um bocado de número
// ram1 = 1+2+3+4+5.....n
// o valor de parada está em r0

  @0
  D=M    //PASSA O VALOR DE R0 PARA D
  @n
  M=D   //passa o valor de R0 PARA A VARIAVEL N R16
  @i  
  M=1   // POEM O INCREMENTER EM i R17
  @sum
  M=0  //seta o valor de SOMA PARA 0 R18
  (LOOP)
  @i
  D=M
  @n
  D=D-M
  @STOP
  D;JGT  //IF I > N GOTO STOP
  
  @sum
  D=M
  @i
  D=D+M
  @sum
  M=D  //SUM += I
  @i
  M=M+1  //I++
  @LOOP
  0;JMP
  
  (STOP)
  @sum
  D=M
  @1
  M=D
  
  (END)
  @END
  0;JMP
  
