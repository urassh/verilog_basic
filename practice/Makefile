.PHONY: problem1 clean

problem1:
	iverilog -o problem1.out problem1.v tb_problem1.v
	vvp problem1.out

clean:
	rm -f *.out wave.vcd
