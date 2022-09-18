module HDC ( IN, POS, FC, OUT );
  parameter l = 1000;
  parameter r = 100;
  input [l-1:0] IN;
  input [l-1:0] POS;
  input [l*r-1:0] FC;
  // output [r:0] OUT;
  output [l*r-1:0] OUT;

  wire [l-1:0] midIN;
  wire [l*r-1:0] midOUT;
  assign midIN = POS ^ IN;
  genvar i;
  // generate
  for (i = 0; i < r ; i = i + 1) begin
    assign OUT [l*(i+1)-1:l*i] = FC [l*(i+1)-1:l*i] ^ midIN;
      // always @(posedge sysclk) begin
      //     temp[i] <= 1'b0;
      // end  
  end
  // endgenerate
  

endmodule


// module HDC ( A, B, S );
//   input [1111:0] A;
//   input [1111:0] B;
//   output [1111:0] S;

//   assign S = A^B;
// endmodule