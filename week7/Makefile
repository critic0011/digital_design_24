clean:
	rm -rf xcelium.d *.log *.history *.key
	rm -rf worklib cds.lib hdl.var
	rm -rf *.lib  *.shm

set:
	mkdir ./worklib
	touch cds.lib
	touch hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo define MUX4X1_lib ./worklib >> cds.lib
	echo define WORK  MUX4X1_lib >> hdl.var


compile:
	xmvlog -MESS -linedebug ./*.v


elab:
	xmelab -MESS -access +rwc tb_MUX4X1

sim:
	xmsim -MESS tb_MUX4X1 -gui

all:	clean set compile elab sim
