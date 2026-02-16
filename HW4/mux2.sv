module mux2(

	input logic [31:0] d0,
	input logic [31:0] d1,
	input logic s0,
	output logic [31:0] out
	
);

	assign out = s0 ? d1 : d0;

endmodule
