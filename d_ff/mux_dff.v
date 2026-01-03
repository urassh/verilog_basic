module mux_dff(
    input wire clock,
    input wire data,
    input wire select,
    output reg out
);
    always @(posedge clock) begin
        out <= select ? data : out;
    end
endmodule
