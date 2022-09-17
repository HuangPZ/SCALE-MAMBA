// module HDC ( IN, POS, FC, OUT );
//   input [10000-1:0] IN;
//   input [10000-1:0] POS;
//   input [10000*1000-1:0] FC;
//   // output [1000:0] OUT;
//   output [10000*1000-1:0] OUT;

//   wire [10000-1:0] midIN;
//   wire [10000*1000-1:0] midOUT;
//   assign midIN = POS ^ IN;
//   genvar i;
//   // generate
//   for (i = 0; i < 1000 ; i = i + 1) begin
//     assign OUT [10000*(i+1)-1:10000*i] = FC [10000*(i+1)-1:10000*i] ^ midIN;
//       // always @(posedge sysclk) begin
//       //     temp[i] <= 1'b0;
//       // end  
//   end
//   // endgenerate
  

// endmodule


module HDC ( A, B, S );
  input [1111:0] A;
  input [1111:0] B;
  output [1111:0] S;

  assign S = A^B;
endmodule