/* pong_p_chu  comparator 
 here we have two numbers and we do two types of comparison signed and unsigned */

module comparater #(parameter width = 8)
(
input		[width-1:0]a,
input		[width-1:0]b,
input		mode, // mode =1 signed mode =0 unsigned
output	reg	agtb
);


always @ *
begin
	if(mode)
	begin
		if(a>b)
			agtb = 1'b1;
		else
			agtb = 1'b0;
	end
	
	else
	begin
		if(a>b)
			agtb = 1'b1;
		else
			agtb = 1'b0;
	end

end

endmodule