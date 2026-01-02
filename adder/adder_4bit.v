module adder_4bit(
    input wire [3:0] a,
    input wire [3:0] b,
    output wire [3:0] sum,
    output wire carry
);
    wire carry_0;
    wire carry_1;
    wire carry_2;

    half_adder h1 (
        .a(a[0]),
        .b(b[0]),
        .sum(sum[0]),
        .carry(carry_0)
    );

    full_adder f1 (
        .a(a[1]),
        .b(b[1]),
        .carry_in(carry_0),
        .sum(sum[1]),
        .carry_out(carry_1)
    );

    full_adder f2 (
        .a(a[2]),
        .b(b[2]),
        .carry_in(carry_1),
        .sum(sum[2]),
        .carry_out(carry_2)
    );

    full_adder f3 (
        .a(a[3]),
        .b(b[3]),
        .carry_in(carry_2),
        .sum(sum[3]),
        .carry_out(carry)
    );
endmodule
