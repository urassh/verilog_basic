.PHONY: half_adder full_adder clean

half_adder:
	iverilog -o half_adder.out half_adder.v tb_half_adder.v
	vvp half_adder.out

full_adder:
	iverilog -o full_adder.out half_adder.v full_adder.v tb_full_adder.v
	vvp full_adder.out

clean:
	rm -f *.out wave.vcd
