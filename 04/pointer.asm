  // arr=100
  @100
  D=A
  @arr
  M=D
  //n =10
  @10
  D=A
  @n
  M=D
  // inicia i = 0 
  @i
  M=0   //ate aqui não da erro
(LOOP)
  // if (i==n) goto END
  @i
  D=M
  @n
  D=D-M
  @END
  D;JEQ //até aqui ok

  // RAM[arr+i] = -1
  @arr
  D=M
  @i
  A=D+M  //esse cara tá dando erro
  M=-1

  //i++
  @i
  M=M+1
  
  @LOOP
  0;JMP
  
(END)
  @END
  0;JMP







