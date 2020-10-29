/* same as the full comparator eff1 but the equal the circuit is smaller and works faster*/

module full_comparator_eff2 #(parameter width = 8)
(
input		[width-1:0]a,
input		[width-1:0]b,
output		agtb,
output		altb,
output		aeqb
);

wire eq ;
wire lt;

assign eq	 = (a ==b ) ? 1 :0;
assign lt	 =  (a<b) ? 1 : 0;

assign aeqb 	 = eq;
assign altb 	 = lt;
assign agtb 	 = !(eq || lt);

endmodule