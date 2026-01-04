.PHONY: problem1 clean

problem1:
	iverilog -o problem1.out problem1.v tb_problem1.v
	vvp problem1.out

problem2:
	iverilog -o problem2.out problem2.v tb_problem2.v
	vvp problem2.out


clean:
	rm -f *.out wave.vcd
