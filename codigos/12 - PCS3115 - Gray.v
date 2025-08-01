/* O código Gray é um sistema de numeração em que dois números consecutivos diferem por apenas um bit, 
o que é útil em sistemas digitais para evitar erros durante transições */


module grayenc (
    input [3:0] Nbin,
    output [3:0] Ngray
);

    assign Ngray[3] = Nbin[3] & ( Nbin[2] | Nbin[1] | Nbin[0] ) | ( ~Nbin[3] & ~Nbin[2] & ~Nbin[1] & ~Nbin[0] ) ;
    assign Ngray[2] = ( Nbin[3] & ~Nbin[2] ) | ( ~Nbin[3] & Nbin[2] & (Nbin[1] | Nbin[0]) ) | ( Nbin[3] & ~Nbin[1] & ~Nbin[0] );
    assign Ngray[1] = ( Nbin[2] & ~Nbin[1] ) | ( Nbin[2] & ~Nbin[0]) | ( ~Nbin[2] & Nbin[1] & Nbin[0] );
    assign Ngray[0] = Nbin[1] ^ Nbin[0];
endmodule


