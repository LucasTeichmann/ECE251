module mux4(

	input logic [31:0] a,
	input logic [31:0] b,
	input logic [31:0] c,
	input logic [31:0] d,
	input logic s0,
	input logic s1,
	output logic [31:0]  y

);

	logic [31:0] mux2_1_out;
	logic [31:0] mux2_2_out;

	mux2 u1 (.out(mux2_1_out), .d0(a), .d1(b), .s0(s0));
	mux2 u2 (.out(mux2_2_out), .d0(c), .d1(d), .s0(s0));
	mux2 u3 (.out(y), .d0(mux2_1_out), .d1(mux2_2_out), .s0(s1));


endmodule

