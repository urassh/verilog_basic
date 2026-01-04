module problem4(
    input i_clk,
    input i_rst,
    output reg [15:0] o_p
);
    parameter HEX_0 = 16'h0000;
    parameter HEX_1 = 16'h0001;
    wire [15:0] w_p;

    assign w_p = i_rst ? HEX_0 : (o_p + HEX_1);

    always @(posedge i_clk) begin
        o_p <= w_p;
    end    
endmodule
