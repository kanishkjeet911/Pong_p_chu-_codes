/* make a full comparator with three conditions 
	a>b;	a<b ; a=b;
*/

module full_comparator #(parameter width = 8)
(
input		[width-1:0]a,
input		[width-1:0]b,
output		agtb,
output		altb,
output		aeqb
);


assign agtb 	= a>b ? 1 : 0;

assign altb	= a<b ? 1 : 0;

assign aeqb	= a == b ? 1 : 0;


endmodule 