`timescale 1ns/1ps

module contador_inicializado_tb;

    reg clk;
    wire [3:0] count;

    
    contador_inicializado contador (
        .clk(clk),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        #2;  /

        $display("Tempo | count");
        $monitor("%4t   |   %d", $time, count);

        #50; // roda por 50 ns
        $finish;
    end

endmodule
