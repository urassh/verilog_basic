module  (
    input wire a;
    input wire b;
    input wire carry_in;
    output wire sum;
    output wire carry_out;
);
    wire sum_ab;
    wire carry_ab;
    wire carry2;

    half_adder h1 (
        .a(a),
        .b(b),
        .sum(sum_ab),
        .carry(carry_ab)
    );

    half_adder h2 (
        .a(sum_ab),
        .b(carry_in),
        .sum(sum),
        .carry(carry2)
    );

    assign carry_out = carry_ab | carry2;
endmodule
