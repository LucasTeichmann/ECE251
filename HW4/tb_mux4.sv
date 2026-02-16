`timescale 1ns/1ps

module tb_mux4;

	logic [31:0] a;
	logic [31:0] b;
	logic [31:0] c;
	logic [31:0] d;
	logic s0;
	logic s1;
	logic [31:0] y;

mux4 dut(

	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.s0(s0),
	.s1(s1),
	.y(y)

);

initial begin 

	a = 32'h00000000;
	b = 32'h00001111;
	c = 32'h11110000;
	d = 32'h11111111;
	s0 = 0;
	s1 = 0;

	$display("time | a | b | c | d | s0 | s1 | y");
	$monitor("t=%0t | a=%h | b=%h | c=%h | d=%h | s0=%h | s1=%h | y=%h", $time, a, b, c, d, s0, s1, y);

	#5;
	s0 = 1;
	#5;
	s1 = 1;
	#5;
	s0 = 0;
	#5;
	$finish;

	end 

endmodule



