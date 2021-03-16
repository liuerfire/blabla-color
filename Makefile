VIM_OUTPUTS = $(patsubst %.erb,%.vim,$(wildcard *.erb))

.PHONY: all

all: $(VIM_OUTPUTS)

%.vim: %.erb
	erb -T - $< > colors/$@
