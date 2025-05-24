// Inicializa ponteiros
@16384
D=A
@0
M=D        // R0 = início da tela

@24575
D=A
@1
M=D        // R1 = fim da tela

(LOOPCOMECO)
    @KBD
    D=M
    @LOOPTELABRANCA
    D;JEQ
    @LOOPTELAPRETA
    0;JMP

(LOOPTELAPRETA)
    @0
    D=M        // D = endereço atual
    @2
    M=D        // R2 = ponteiro temporário

(PRETA_LOOP)
    @2
    A=M
    M=-1       // liga todos os pixels

    @2
    M=M+1      // ponteiro++

    D=M
    @1
    D=D-M
    @PRETA_LOOP
    D;JLE      // enquanto endereço atual <= fim da tela

    @LOOPCOMECO
    0;JMP

(LOOPTELABRANCA)
    @0
    D=M
    @2
    M=D        // R2 = ponteiro temporário

(BRANCA_LOOP)
    @2
    A=M
    M=0        // limpa pixel

    @2
    M=M+1

    D=M
    @1
    D=D-M
    @BRANCA_LOOP
    D;JLE

    @LOOPCOMECO
    0;JMP

