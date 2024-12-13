`timescale 1ns / 1ps

module MUX4X1(
	//portlist
	out,
	i0,
	i1,
	i2,
	i3,
	s1,
	s0
);

output out;
input i0;
input i1;
input i2;
input i3;
input s1;
input s0;


assign out = (i0 & ~s1 & ~s0) | (i1 & ~s1 & s0) | (i2 & s1 & ~s0) | (i3 & s1 & s0);



/*
//internal signal
wire y0, y1, y2, y3;
wire s1n, s0n;

//s1n s0n
not (s1n, s1);
not (s0n, s0);


//design 1st level: (3 input AND gate)
and (y0, i0, s1n, s0n);
and (y1, i1, s1n, s0);
and (y2, i2, s1, s0n);
and (y3, i3, s1, s0);

//desing 2st level: (4 input or gate)
or (out, y0, y1, y2, y3);



*/

endmodule
