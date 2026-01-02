module tb_half_adder;
    reg  reg_a;
    reg  reg_b;
    wire wire_sum;
    wire wire_carry;

    half_adder unit_half_adder_test (
        .a(reg_a),
        .b(reg_b),
        .sum(wire_sum),
        .carry(wire_carry)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_half_adder);

        reg_a = 1'b0;
        reg_b = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        #2
        $finish;
    end
endmodule
