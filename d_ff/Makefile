.PHONY: d_ff clean

d_ff:
	iverilog -o d_ff.out d_ff.v tb_d_ff.v
	vvp d_ff.out

mux_dff:
	iverilog -o mux_dff.out mux_dff.v tb_mux_dff.v
	vvp mux_dff.out

clean:
	rm -f *.out wave.vcd
