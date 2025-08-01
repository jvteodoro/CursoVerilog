`timescale 100ns/1ps

module solucao_tb();

    reg m, inta, intb, intc, intd, sa, sb, sc, sd;
    wire y;

    solucao test (m, inta, intb, intc, intd, sa, sb, sc, sd, y);

    initial begin
        inta = 1'b0; intb = 1'b0; intc = 1'b0; intd = 1'b0;
        sa = 1'b1; sb = 1'b0; sc = 1'b0; sd = 1'b0;
        m = 1'b1;

        #10;

        $display("m = %b  intabcd = %b%b%b%b  sabcd = %b%b%b%b  y = %b", m, inta, intb, intc, intd, sa, sb, sc, sd, y);

    end
endmodule