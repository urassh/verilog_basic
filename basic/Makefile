.PHONY: and_gate or_gate nand_gate not_gate xor_gate clean

and_gate:
	iverilog -o and_gate.out and_gate.v tb_and_gate.v
	vvp and_gate.out

or_gate:
	iverilog -o or_gate.out or_gate.v tb_or_gate.v
	vvp or_gate.out

nand_gate:
	iverilog -o nand_gate.out nand_gate.v tb_nand_gate.v
	vvp nand_gate.out

not_gate:
	iverilog -o not_gate.out not_gate.v tb_not_gate.v
	vvp not_gate.out

xor_gate:
	iverilog -o xor_gate.out xor_gate.v tb_xor_gate.v
	vvp xor_gate.out

clean:
	rm -f *.out wave.vcd
