module tb_full_adder;
    reg reg_a;
    reg reg_b;
    reg reg_carry_in;
    wire wire_sum;
    wire carry_out;

    full_adder unit_full_adder_test (
        .a(reg_a),
        .b(reg_b),
        .carry_in(reg_carry_in),
        .sum(wire_sum),
        .carry_out(carry_out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb_full_adder);

        reg_a = 1'b0;
        reg_b = 1'b0;
        reg_carry_in = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b0;
        reg_carry_in = 1'b1;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        reg_carry_in = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        reg_carry_in = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        reg_carry_in = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        reg_carry_in = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        reg_carry_in = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        reg_carry_in = 1'b1;
        #2
        $finish;
    end
endmodule
