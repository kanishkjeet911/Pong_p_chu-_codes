/* Creating a classic priority priority encoder with cascading style*/
module priority_encoder
(
input 		[15:0]r,
output reg	[3:0]code,
output reg	active

);

always @ *
fork
	if(r[15] == 1'b1)
		code = 4'b1111;
	else if(r[14] == 1'b1)
		code = 4'b1110;
	else if(r[13] == 1'b1)
		code = 4'b1101;
	else if(r[12] == 1'b1)
		code = 4'b1100;
	else if(r[11] == 1'b1)
		code = 4'b1011;
	else if(r[10] == 1'b1)
		code = 4'b1010;
	else if(r[9] == 1'b1)
		code = 4'b1001;
	else if(r[8] == 1'b1)
		code = 4'b1000;
	else if(r[7] == 1'b1)
		code = 4'b0111;
	else if(r[6] == 1'b1)
		code = 4'b0110;
	else if(r[5] == 1'b1)
		code = 4'b0101;
	else if(r[4] == 1'b1)
		code = 4'b0100;
	else if(r[3] == 1'b1)
		code = 4'b0011;
	else if(r[2] == 1'b1)
		code = 4'b0010;
	else if(r[1] == 1'b1)
		code = 4'b0001;
	else
		code = 4'b0000;


active = r[15] | r[14] |r[13] | r[12]| r[11] | r[10] | r[9] | r[8]
	 | r[7] | r[6] | r[5] | r[4] | r[3] | r[2] | r[1] | r[0];


join
endmodule