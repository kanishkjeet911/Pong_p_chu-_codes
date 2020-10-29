/* this is an efficient method where the functionality is shared with the three operations as the previous example had 4 muxes */

module barrel_efficient
(
input 		[2:0]amt,
input 		[1:0]lar,
input 		[7:0]a,
output reg 	[7:0]o
);
reg [7:0]shift_temp;

always@(*)
fork
	case(lar)
	2'b00 : shift_temp <=	8'h00;
	2'b01 : shift_temp <=	{8{a[7]}};
	2'b10 : shift_temp <= 	a;
	2'b11 : shift_temp <= 	a;
	endcase

	case(amt)
		3'd0: o <= a;
		3'd1: o <= {shift_temp[0],a[7:1]};
		3'd2: o <= {shift_temp[1:0],a[7:2]};
		3'd3: o <= {shift_temp[2:0],a[7:3]};
		3'd4: o <= {shift_temp[3:0],a[7:4]};
		3'd5: o <= {shift_temp[4:0],a[7:5]};
		3'd6: o <= {shift_temp[5:0],a[7:6]};
		3'd7: o <= {shift_temp[6:0],a[7]};
	endcase


join


endmodule