module d_ff(
    input clock,
    input data,
    output reg out
);
    always @(posedge clock) begin
        out <= data;
    end
endmodule
