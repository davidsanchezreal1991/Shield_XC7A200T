#!/bin/bash

ghdl -a --std=08 src/display.vhdl
ghdl -a --std=08 sim/display_tb.vhdl
ghdl -e --std=08 display_tb
ghdl -r --std=08 display_tb --vcd=wave/wave.vcd #--stop-time=1us
