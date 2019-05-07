module LFSR_flipflop(Q,D,clk,reset);

input D, clk,reset;
output reg Q;

always @(posedge clk)
begin
  if(reset)
   Q<= 1'b1;
  else	
   Q <= D;
end

endmodule