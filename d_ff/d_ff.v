module d_ff(
    input clock,
    input [31:0] a,
    input [31:0] b,
    output reg [31:0] out
);
    reg [31:0] sum;

    assign out = sum;
    always @(posedge clock) begin
        sum <= a + b;
    end
endmodule
