module primo(
    input [3:0] N, 
    output reg F);

    always @(*) begin
        if (N == 4'd2 || N == 4'd3 || N == 4'd5 || 
            N == 4'd7 || N == 4'd11 || N == 4'd13)
            F = 1'b1;
        else
            F = 1'b0;
    end

endmodule
