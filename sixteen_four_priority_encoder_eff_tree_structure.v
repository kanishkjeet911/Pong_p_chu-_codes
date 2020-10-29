/* creating the 16 to 4 encoder in tree like structure*/
module four_two_priority
(
input		[3:0]r,
output reg	[1:0]code,
output reg	active

);

always @ *
fork
	if(r[3] == 1'b1)
		code = 2'b11;
	else if(r[2] == 1'b1)
		code = 2'b10;
	else if(r[1] == 1'b1)
		code = 2'b01;
	else
		code = 2'b00;
	
	active = r[3] | r[3] | r[2] | r[1] | r[0];
join

endmodule

module priority_eff
(
input			[15:0]r,
output 			[3:0]code,
output  		active

);
wire  [1:0]code_g0;
wire  [1:0]code_g1;
wire  [1:0]code_g2;
wire  [1:0]code_g3;
wire act0,act1,act2,act3;
reg  [1:0]codex;

four_two_priority a3(.r(r[15:12]) 		,.code(code_g3),.active(act3));
four_two_priority a2(.r(r[11:8]) 		,.code(code_g2),.active(act2));
four_two_priority a1(.r(r[7:4]) 		,.code(code_g1),.active(act1));
four_two_priority a0(.r(r[3:0]) 		,.code(code_g0),.active(act0));
four_two_priority ax(.r({act3,act2,act1,act0}) ,.code(code[3:2]),.active(active)); //second level prority encoder

//MUX FOR THE MSB OF CODE
always @ *
 begin
	case(code[3:2])
	2'b00: codex[1:0] = code_g0;  // why this arrangement is down to up bcoz - msb is being taken as select line
	2'b01: codex[1:0] = code_g1;  // and the is r[3] of basic priority is high then corresponding code 11
	2'b10: codex[1:0] = code_g2;  // but we have choose the 00 from the MUX therefore we need negation of it
	2'b11: codex[1:0] = code_g3;  // or we could just change the order in which the data is being processed
	endcase
 end	

assign code[1:0] = codex;


 
endmodule