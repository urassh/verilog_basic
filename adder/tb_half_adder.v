module tb_half_adder;
    reg  reg_a;
    reg  reg_b;
    wire sum;
    wire carry_out;

    half_adder unit_half_adder_test (
        .wire_a(reg_a),
        .wire_b(reg_b),
        .wire_sum(sum),
        .wire_carry(carry_out)
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
