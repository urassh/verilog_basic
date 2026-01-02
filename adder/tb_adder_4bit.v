module tb_adder_4bit;
    reg [3:0] reg_a;
    reg [3:0] reg_b;
    wire [3:0] wire_sum;
    wire wire_carry;

    adder_4bit unit_adder_4bit_test (
        .a(reg_a),
        .b(reg_b),
        .sum(wire_sum),
        .carry(wire_carry)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(1, tb_adder_4bit);

        // Test case 1: 0 + 0 = 0
        reg_a = 4'b0000;
        reg_b = 4'b0000;
        #2

        // Test case 2: 1 + 1 = 2
        reg_a = 4'b0001;
        reg_b = 4'b0001;
        #2

        // Test case 3: 5 + 3 = 8
        reg_a = 4'b0101;
        reg_b = 4'b0011;
        #2

        // Test case 4: 7 + 7 = 14
        reg_a = 4'b0111;
        reg_b = 4'b0111;
        #2

        // Test case 5: 15 + 1 = 16 (overflow, carry = 1)
        reg_a = 4'b1111;
        reg_b = 4'b0001;
        #2

        // Test case 6: 15 + 15 = 30 (overflow, carry = 1)
        reg_a = 4'b1111;
        reg_b = 4'b1111;
        #2

        // Test case 7: 8 + 7 = 15
        reg_a = 4'b1000;
        reg_b = 4'b0111;
        #2

        // Test case 8: 10 + 5 = 15
        reg_a = 4'b1010;
        reg_b = 4'b0101;
        #2

        $finish;
    end
endmodule
