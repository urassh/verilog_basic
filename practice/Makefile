.PHONY: problem1 problem2 problem3 problem4 problem5 problem6 clean

problem1:
	iverilog -o problem1.out problem1.v tb_problem1.v
	vvp problem1.out

problem2:
	iverilog -o problem2.out problem2.v tb_problem2.v
	vvp problem2.out

problem3:
	iverilog -o problem3.out problem3.v tb_problem3.v
	vvp problem3.out

problem4:
	iverilog -o problem4.out problem4.v tb_problem4.v
	vvp problem4.out

problem5:
	iverilog -o problem5.out problem5.v tb_problem5.v
	vvp problem5.out

problem6:
	iverilog -o problem6.out problem6.v tb_problem6.v
	vvp problem6.out

clean:
	rm -f *.out wave.vcd
