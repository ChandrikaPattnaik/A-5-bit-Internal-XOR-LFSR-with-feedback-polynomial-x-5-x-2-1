module LFSR_Internal_5_bit(clk,reset,S);

input clk,reset;
output [4:0]S;

wire w;
wire [4:0] S;

LFSR_flipflop F0 (.Q(S[0]),.D(S[4]),.clk(clk),.reset(reset));
LFSR_flipflop F1 (.Q(S[1]),.D(S[0]),.clk(clk),.reset(reset));

xor (w,S[1],S[4]);

LFSR_flipflop F2 (.Q(S[2]),.D(w),.clk(clk),.reset(reset));
LFSR_flipflop F3 (.Q(S[3]),.D(S[2]),.clk(clk),.reset(reset));
LFSR_flipflop F4 (.Q(S[4]),.D(S[3]),.clk(clk),.reset(reset));

endmodule