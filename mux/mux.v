module mux;
    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, mux);
    end

    reg register_a;
    reg register_b;
    reg select;

    wire wire_out;

    assign wire_out = select ? register_b : register_a;

    initial begin
        register_a = 1'b0;
        register_b = 1'b0;
        select     = 1'b0;
        #2

        register_a = 1'b0;
        register_b = 1'b0;
        select     = 1'b1;
        #2

        register_a = 1'b0;
        register_b = 1'b1;
        select     = 1'b0;
        #2
        
        register_a = 1'b0;
        register_b = 1'b1;
        select     = 1'b1;
        #2

        register_a = 1'b1;
        register_b = 1'b0;
        select     = 1'b0;
        #2

        register_a = 1'b1;
        register_b = 1'b0;
        select     = 1'b1;
        #2

        register_a = 1'b1;
        register_b = 1'b1;
        select     = 1'b0;
        #2

        register_a = 1'b1;
        register_b = 1'b1;
        select     = 1'b1;
        #2
        $finish;
    end
endmodule
