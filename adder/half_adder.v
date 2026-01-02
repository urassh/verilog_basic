module half_adder(
    input wire wire_a,
    input wire wire_b,
    output wire wire_sum,
    output wire wire_carry
);
    assign wire_sum = wire_a ^ wire_b;
    assign wire_carry = wire_a & wire_b;
endmodule
