/* three conditions are mutually exclusive and therefore  we can have third conditon if 2 are known*/

module full_comparator_eff1 #(parameter width = 8)
(
input		[width-1:0]a,
input		[width-1:0]b,
output		agtb,
output		altb,
output		aeqb
);
wire gt; //equal condition
wire lt; //less than condition

assign gt	= (a == b) ? 1 : 0;

assign lt 	=  a<b ? 1 : 0;

assign agtb	=  gt;

assign altb 	=  lt;

assign aeqb 	= !(gt || lt); // (thought !(agtb || altb) will also work )this is the why took wires so as to avoid assigning output to another output


endmodule