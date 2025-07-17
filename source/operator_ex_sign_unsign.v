module operator_ex_sign_unsign();
    wire [3:0] w1 = -4;
    wire [3:0] w2 =  3;
    // O mesmo valor de w1 agora é interpretado como complemento de 2
    wire signed [3:0] sig_w1 = w1;

    wire [3:0] sum = w1+w2;
    // A soma não precisa que os seus valores sejam signed, apenas o data type
    // que receberá o resultado
    wire signed [3:0] sig_sum = w1+w2; 

    initial begin
        $display("w1: dec %d, bin %b", w1, w1);
        $display("w2: dec %d, bin %b", w2, w2);
        $display("signed_w1: dec %d, bin %b", sig_w1, sig_w1);
        $display("Sum: %d, %b", sum, sum);
        $display("Signed sum: %d, %b", sig_sum, sig_sum);
    end

endmodule