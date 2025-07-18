module operator_ex_reduction();
    reg [3:0] a;
    wire red_and = &a;
    wire red_or = |a;
    wire red_xor = ^a;
    wire red_nand = ~&a;
    wire red_nor = ~|a;
    wire red_xnor = ~^a;

    initial begin 
        $monitor("&: %b; |: %b; ^: %b; ~&: %b; ~|: %b; ~^: %b", red_and, red_or, red_xor, red_nand, red_nor, red_xnor);
        a = 4'b0000;
        #1 a = 4'b0101;
        #1 a = 4'b1111;
        #1 a = 4'b0100;
    end
endmodule