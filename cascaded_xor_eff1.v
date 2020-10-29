/* now we would be using an intermediate signal for doing the same operation */

module cascaded_xor_eff1
(
input		[7:0]a,
output		o

);
wire [7:0]p;

assign p[0] = a[0];
assign p[1] = p[0] ^ a[1];
assign p[2] = p[1] ^ a[2];
assign p[3] = p[2] ^ a[3];
assign p[4] = p[3] ^ a[4];
assign p[5] = p[4] ^ a[5];
assign p[6] = p[5] ^ a[6];
assign p[7] = p[6] ^ a[7];
assign o = p[7];

endmodule