/* designing a cascaded form of xor gates to implement an equation*/
module cascaded_xor
(
input 		[7:0]a,
output		o

);

assign o = a[0] ^ a[1] ^ a[1] ^ a[2] ^ a[3] ^ a[4] ^ a[5]  ^ a[6] ^ a[7];

endmodule