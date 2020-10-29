/* now we would concatenate p with zero as first term is a[0] itself therefore xoring any number with zero gives the number itself*/
module cascaded_xor_eff2
(
input 		[7:0]a,
output 		y

);
wire [7:0]p;


assign 	p = {p[6:0],0}  ^ a;
assign	y = p[7];



endmodule