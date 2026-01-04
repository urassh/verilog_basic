module tb_problem5;
    reg        i_clk = 0;
    reg [1:0]  i_ctrl = 0;
    reg [15:0] i_data_0;
    reg [15:0] i_data_1;
    reg [15:0] i_data_2;
    reg [15:0] i_data_3;
    wire [15:0] o_data;

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end

    problem5 DUT(
        .i_clk(i_clk),
        .i_ctrl(i_ctrl),
        .i_data_0(i_data_0),
        .i_data_1(i_data_1),
        .i_data_2(i_data_2),
        .i_data_3(i_data_3),
        .o_data(o_data)
    );

    always #1 begin
        i_clk <= ~i_clk;
    end

    initial begin
        i_ctrl = 2'b0;
        i_data_0 = 15'h5;
        i_data_1 = 15'h4;
        i_data_2 = 15'h3;
        i_data_3 = 15'h2;
        #10

        i_ctrl = 2'b01;
        i_data_0 = 15'h5;
        i_data_1 = 15'h4;
        i_data_2 = 15'h3;
        i_data_3 = 15'h2;
        #10

        i_ctrl = 2'b10;
        i_data_0 = 15'h5;
        i_data_1 = 15'h4;
        i_data_2 = 15'h3;
        i_data_3 = 15'h2;
        #10

        i_ctrl = 2'b11;
        i_data_0 = 15'h5;
        i_data_1 = 15'h4;
        i_data_2 = 15'h3;
        i_data_3 = 15'h2;
        #10

        #100
        $finish;
    end
endmodule
