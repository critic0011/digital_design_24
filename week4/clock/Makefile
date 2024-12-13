clean:
	rm -rf *.shm *.log *.key


com:
	xmvlog -MESS -linedebug ./*.v


elab:
	xmelab -MESS -access rwc clock_gen

sim:
	xmsim clock_gen -gui

all: clean com elab sim
