.PHONY: d_ff clean

d_ff:
	iverilog -o d_ff.out d_ff.v tb_d_ff.v
	vvp d_ff.out

clean:
	rm -f *.out wave.vcd
