module mux(
    input wire a,
    input wire b,
    input wire select,
    output wire out
);
    assign out = select ? b : a;
endmodule
