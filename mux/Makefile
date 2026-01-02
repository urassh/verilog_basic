.PHONY: mux clean

mux:
	iverilog -o mux.out mux.v tb_mux.v
	vvp mux.out

clean:
	rm -f *.out wave.vcd
