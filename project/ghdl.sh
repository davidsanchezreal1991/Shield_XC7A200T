#!/bin/bash

ghdl -a src/display.vhdl
ghdl -a sim/display_tb.vhdl
ghdl -e display_tb
ghdl -r display_tb --vcd=wave/wave.vcd --stop-time=1us
