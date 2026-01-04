module tb_problem6;
    reg [15:0] i_data;
    reg        i_rst;
    reg        i_clk;
    wire [2:0] o_data;

    problem6 DUT(
        .i_data(i_data),
        .i_rst(i_rst),
        .i_clk(i_clk),
        .o_data(o_data)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, DUT);
    end

    always #1 begin
        i_clk = ~i_clk;
    end

    initial begin
        // 初期化
        i_clk = 0;
        i_rst = 1;
        i_data = 16'h0000;
        #10;

        // リセット解除
        i_rst = 0;
        #2;

        // テストケース1: セレクタ = 2'b00, i_data[4:2]を選択
        i_data = 16'b0000_0000_0001_0100;  // [4:2] = 3'b101
        #2;

        // テストケース2: セレクタ = 2'b01, i_data[7:5]を選択
        i_data = 16'b0000_0000_1110_0001;  // [7:5] = 3'b111
        #2;

        // テストケース3: セレクタ = 2'b10, i_data[10:8]を選択
        i_data = 16'b0000_0011_0000_0010;  // [10:8] = 3'b011
        #2;

        // テストケース4: セレクタ = 2'b11, i_data[13:11]を選択
        i_data = 16'b0010_1000_0000_0011;  // [13:11] = 3'b010
        #2;

        // リセットテスト
        i_rst = 1;
        #2;
        i_rst = 0;
        #2;

        $finish;
    end
endmodule
