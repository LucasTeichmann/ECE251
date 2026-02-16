`timescale 1ns/1ps

module tb_q1;

logic [31:0] d0;
logic [31:0] d1;
logic s0; 
logic [31:0] out;

mux2 dut(
	
	.d0(d0),
	.d1(d1),
	.s0(s0),
	.out(out)

);


initial begin 

	d0 = 32'h00000000; 
	d1 = 32'h11111111;
	s0 = 1;

	$display("time | d0 | d1 | s0 | out");
	$monitor("t=%0t | d0=%h | d1=%h | s0=%h | out=%h", $time, d0, d1, s0, out);

	#5;

	s0 = 0;

	#5;

$finish;

end

endmodule

