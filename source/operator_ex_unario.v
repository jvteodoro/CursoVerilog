module operator_ex_unario();
	
	wire signed [3:0] val = -4;
	wire signed [3:0] val2 = 4;
	wire signed [3:0] plus_val = +val;
	wire signed [3:0] minus_val = -val;
	wire signed [3:0] plus_val2 = +val2;
	wire signed [3:0] minus_val2 = -val2;

	initial begin
		$display("val: %d\nplus_val: %d\nminus_val: %d\n", val, plus_val, minus_val);
		$display("val2: %d\nplus_val2: %d\nminus_val2: %d", val2, plus_val2, minus_val2);
	end

endmodule
