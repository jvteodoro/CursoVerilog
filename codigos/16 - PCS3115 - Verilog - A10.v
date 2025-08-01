/* Esse circuito seleciona um entre quatro sinais de entrada (inta, intb, intc, intd) 
com base em quatro sinais de seleção (sa, sb, sc, sd) e um sinal de controle m */

/* A saída y será inta, se sa for o primeiro prioritário e assim por diante...*/

module solucao (m, inta, intb, intc, intd, sa, sb, sc, sd, y);
    input m, inta, intb, intc, intd, sa, sb, sc, sd;
    output y;


    wire w1;
    wire [3:0] w2;
    wire [1:0] w3;
    wire w4;

    assign w2[0] = sa;
    assign w2[1] = sb;
    assign w2[2] = sc;
    assign w2[3] = sd;

    codprisimples U1(w2, m, w3);
    muxsimples U2(inta, intb, w3[0], w1);
    muxsimples U3(intc, intd, w3[0], w4);

    muxsimples U4(w1, w4, w3[1], y);


endmodule

// O juiz contém os módulos codprisimples e muxsimples fornecidos com este arquivo
/* ^^^^^ comando do albertini */
