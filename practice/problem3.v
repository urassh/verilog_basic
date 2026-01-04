module problem3(
    input   [15:0] i_p0,
    input   [15:0] i_p1,
    output wire [15:0] o_p
);
    assign o_p = ~i_p0 & i_p1;
endmodule
