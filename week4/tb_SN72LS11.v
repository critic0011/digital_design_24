`timescale 1ns / 1ps

module tb_SN72LS11;

// signal init
reg in_1A, in_1B, in_1C;
reg in_2A, in_2B, in_2C;
reg in_3A, in_3B, in_3C;

wire out_1Y, out_2Y, out_3Y;

// DUT instantiation

SN72LS11 DUT(

	.out_1Y(out_1Y),
	.out_2Y(out_2Y),
	.out_3Y(out_3Y),

	.in_1A(in_1A),
	.in_1B(in_1B),
	.in_1C(in_1C),

	.in_2A(in_2A),
	.in_2B(in_2B),
	.in_2C(in_2C),

	.in_3A(in_3A),
	.in_3B(in_3B),
	.in_3C(in_3C)
);
// Input stimulus
initial
begin
	// t = 0ns
	in_1A = 1'b0; in_1B = 1'b0; in_1C = 1'b0;
	
	// t = 10ns
	#10
	in_1A = 1'b0; in_1B = 1'b0; in_1C = 1'b1;

	// t = 20ns
	#10	
	in_1A = 1'b0; in_1B = 1'b1; in_1C = 1'b0;

	// t = 30ns
	#10
	in_1A = 1'b0; in_1B = 1'b1; in_1C = 1'b1;

	// t = 40ns
	#10
	in_1A = 1'b1; in_1B = 1'b0; in_1C = 1'b0;

	// t = 50ns
	#10
	in_1A = 1'b1; in_1B = 1'b0; in_1C = 1'b1;

	// t = 60ns
	#10
	in_1A = 1'b1; in_1B = 1'b1; in_1C = 1'b0;

	// t = 70ns
	#10
	in_1A = 1'b1; in_1B = 1'b1; in_1C = 1'b1;

	#10
	$finish;



end


endmodule
