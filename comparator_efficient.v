/* An effice=ient way in which comparator is used only as compared to previous example where 2 are used" */

module comparator_efficient #(parameter width = 8)
(
input 		[width-1:0]a,
input		[width-1:0]b,
input		mode,
output		agtb  	// a is greater than b then agtb =1

);


wire a1_b0 ;    	// for signed comparison
wire agtb_mag; 		// when the unsigned comparison

assign a1_b0 	= 	((a[width -1]) == 1'b1 && (b[width-1]==1'b0)) ? 1'b1 :1'b0 ;

assign agtb_mag = 	(a[width-2:0] > b[width-2:0]) ? 1'b1 : 1'b0;

assign agtb 	=	(a[width-1] == b[width-1]) ? agtb_mag :(mode ? (!a1_b0):a1_b0);



endmodule