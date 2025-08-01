module primo(N,F);
    input [3:0] N;
    output reg F;

    wire w1, w2, w3, w4;
    
    and(w1,N[0],~N[1],N[2]);
    and(w2,N[0],N[1],~N[2]);
    and(w3,N[0],N[2],~N[3]);
    and(w4,N[1],~N[2],~N[3]);

    always @(*)
        F = w1 | w2 | w3 | w4;
endmodule