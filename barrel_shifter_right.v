/* barell shifter right with the three properties that is rotatate ,logic  and arthimatic  shift 
and the signals used are 
:-
lar -logic atithematic and rotate
amt -by the amount for which the data to be shifted
*/

module barrel 
(
input 		[2:0]amt,
input 		[1:0]lar,
input 		[7:0]a,
output reg 	[7:0]o
);

reg [7:0] rot_result,logic_result,arith_result;

always @ (*)
fork
	case(amt)
		3'd0: rot_result <= a;
		3'd1: rot_result <= {a[0],a[7:1]};
		3'd2: rot_result <= {a[1:0],a[7:2]};
		3'd3: rot_result <= {a[2:0],a[7:3]};
		3'd4: rot_result <= {a[3:0],a[7:4]};
		3'd5: rot_result <= {a[4:0],a[7:5]};
		3'd6: rot_result <= {a[5:0],a[7:6]};
		3'd7: rot_result <= {a[6:0],a[7]};
	endcase

	case(amt)
		3'd0: logic_result <= a;
		3'd1: logic_result <= {1'b0,a[7:1]};
		3'd2: logic_result <= {2'b0,a[7:2]};
		3'd3: logic_result <= {3'b0,a[7:3]};
		3'd4: logic_result <= {4'b0,a[7:4]};
		3'd5: logic_result <= {5'b0,a[7:5]};
		3'd6: logic_result <= {6'b0,a[7:6]};
		3'd7: logic_result <= {7'b0,a[7]};
	endcase

	case(amt)
		3'd0: arith_result <= a;
		3'd1: arith_result <= {a[7],a[7:1]};
		3'd2: arith_result <= {{2{a[7]}},a[7:2]};
		3'd3: arith_result <= {{3{a[7]}},a[7:3]};
		3'd4: arith_result <= {{4{a[7]}},a[7:4]};
		3'd5: arith_result <= {{5{a[7]}},a[7:5]};
		3'd6: arith_result <= {{6{a[7]}},a[7:6]};
		3'd7: arith_result <= {{7{a[7]}},a[7]};
	endcase	

	case(lar)
		2'b00: o <= logic_result;
		2'b01: o <= arith_result;
		2'b10: o <=  rot_result;
		2'b11: o <=  rot_result;
	endcase
join

endmodule