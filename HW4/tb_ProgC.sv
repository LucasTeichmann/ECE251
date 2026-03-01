`timescale 1ns/1ps

module tb_register_n;

	localparam int Width = 32; 
	logic clk;
	logic rst_n;
	logic en;
	logic [Width - 1: 0] d;
	logic [Width - 1: 0] q;

register_n #(.Width(Width)) dut(

	.clk(clk),
	.rst_n(rst_n),
	.en(en),
	.d(d),
	.q(q)

);

initial clk = 0;
	always #5 clk = ~clk;

initial d = 32'h00000000;
	always #10 d = ~d;

initial en = 1;
	always #20 en = ~en;

initial rst_n = 1; 
	always #40 rst_n = ~rst_n;

initial begin 

	$display("time | clk | rst_n | en | d | q");
	$monitor("t=%0t | clk=%b | d=%h | en=%b | rst_n=%b | q=%h", $time, clk, d, en, rst_n, q);

	#80;

	$finish;

	end 

endmodule


