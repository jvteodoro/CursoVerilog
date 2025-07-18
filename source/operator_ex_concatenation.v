module operator_ex_concatenation();
    parameter SIZE = 16;
    reg [3:0] a;
    reg [3:0] b;
    wire [7:0] ab1;
    wire [7:0] ab2;
    wire [SIZE-1:0] ab3;

    assign ab1 = {a,b};
    assign ab2 = {{4{1'b1}},a};
    assign ab3 = {{SIZE-4{1'b1}},a};

    initial begin
        a = 4'b0101;
        b = 4'b1100;
        $display("a: %b; b: %b", a, b);
        $display("ab1: %b\nab2: %b\nab3: %b", ab1, ab2, ab3);
    end
endmodule