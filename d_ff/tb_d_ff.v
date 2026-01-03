module tb_d_ff;
    reg clock = 1'b0;
    reg data;
    wire out;

    always #1 begin
        clock = ~clock;
    end

    d_ff uut (
        .clock(clock),
        .data(data),
        .out(out)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_d_ff);
    end

    initial begin
        data = 1'b0;
        #5;
        data = 1'b1;
        #5;
        data = 1'b0;
        #5;
        data = 1'b1;
        #10;
        $finish;
    end
endmodule
