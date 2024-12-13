clean:
	rm -rf xcelium.d *.log *.history *.key
	rm -rf worklib cds.lib hdl.var
	rm -rf *.lib *.shm

set:
	mkdir ./worklib
	touch ./cds.lib
	touch ./hdl.var
	chmod +x cds.lib
	chmod +x hdl.var
	echo "define SN74LS11_lib ./worklib" >> cds.lib
	echo "define WORK SN74LS11_lib" >> hdl.var

compile:
	xmvlog -MESS -linedebug ./*.v

elab:
	xmelab -MES -access rwc tb_SN72LS11

sim:
	xmsim tb_SN72LS11 -gui&

all: clean set compile elab sim
