module tb_mux;
    reg  reg_a;
    reg  reg_b;
    reg  reg_select;
    wire wire_out;

    mux unit_mux_test (
        .a(reg_a),
        .b(reg_b),
        .select(reg_select),
        .out(wire_out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_mux);

        reg_a = 1'b0;
        reg_b = 1'b0;
        reg_select = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b0;
        reg_select = 1'b1;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        reg_select = 1'b0;
        #2

        reg_a = 1'b0;
        reg_b = 1'b1;
        reg_select = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        reg_select = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b0;
        reg_select = 1'b1;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        reg_select = 1'b0;
        #2

        reg_a = 1'b1;
        reg_b = 1'b1;
        reg_select = 1'b1;
        #2
        $finish;
    end
endmodule
