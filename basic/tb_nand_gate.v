module tb_nand_gate;
    reg  reg_a;
    reg  reg_b;
    wire wire_out;

    nand_gate unit_nand_gate_test (
        .a(reg_a),
        .b(reg_b),
        .out(wire_out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_nand_gate);

        reg_a = 1'b0;
        reg_b = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        #2
        $finish;
    end
endmodule
