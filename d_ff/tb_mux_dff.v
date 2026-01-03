module rb_dff;
    reg clock = 1'b0;
    reg data = 1'b0;
    reg select = 1'b0;
    wire out;

    always #1 begin
        clock = ~clock;
    end

    mux_dff uut (
        .clock(clock),
        .data(data),
        .select(select),
        .out(out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, rb_dff);
    end

    initial begin
        // Test sequence
        data = 1'b0; select = 1'b0; #5; // out should remain 0
        data = 1'b1; select = 1'b1; #5; // out should become 1
        data = 1'b0; select = 1'b1; #5; // out should become 0
        data = 1'b1; select = 1'b0; #5; // out should remain 0
        data = 1'b1; select = 1'b1; #5; // out should become 1
        $finish;
    end
endmodule
