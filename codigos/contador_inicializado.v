module contador_inicializado (
    input clk,
    output reg [3:0] count
);

    // Inicializa o registrador 'count' com o valor 4
    initial begin
        count = 4'd4;
    end

    // soma 1 no contador a cada borda de subida do clock
    always @(posedge clk) begin
        count <= count + 1;
    end
endmodule
