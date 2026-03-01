module register_n #(parameter Width = 32) (

	input logic clk,
	input logic rst_n,
	input logic en,
	input logic [Width-1:0] d,
	output logic [Width-1:0] q
	
);
	always_ff @(posedge clk) begin
		if(!rst_n)
			q <= '0;

		else if (en) 
			q <= d;
	end

endmodule
