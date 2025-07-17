module operator_ex_shift();
    wire [3:0] a = 8;
    wire signed [3:0] a_sig = 8;
    reg [3:0] b;
    reg [3:0] c;
    reg [3:0] d;
    initial begin
        $display("Right Shift");
        b = a >> 2;
        c = a_sig >>> 2;
        d = a_sig >> 2;
        $display("a: %b\nb: %b\nc: %b\nd: %b", a, b, c, d);
        $display("Left Shift with reg values");
        b = b << 2;
        c = c <<< 2;
        d = d << 2;
        $display("a: %b\nb: %b\nc: %b\nd: %b", a, b, c, d);
        $display("Left shift with wire values");
        b = a << 2;
        c = a_sig <<< 2;
        d = a_sig << 2;
        $display("a: %b\nb: %b\nc: %b\nd: %b", a, b, c, d);

    end
endmodule