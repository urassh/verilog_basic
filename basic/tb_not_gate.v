module tb_not_gate;
    reg  reg_a;
    wire wire_out;

    not_gate unit_not_gate_test (
        .a(reg_a),
        .out(wire_out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_not_gate);

        reg_a = 1'b0;
        #2

        reg_a = 1'b1;
        #2
        $finish;
    end
endmodule
