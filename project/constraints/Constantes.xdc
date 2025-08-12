# Reloj de 50Mhz en PCB
set_property PACKAGE_PIN W19 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 20.000 -name sys_clk -waveform {0.000 10.000} [get_ports clk]

# Pines generales del sistema
set_property PACKAGE_PIN R2 [get_ports rst_n]			# SW5

# Display
set_property PACKAGE_PIN B18 [get_ports {seg[0]}] 		# seg_1
set_property PACKAGE_PIN B21 [get_ports {seg[1]}] 		# seg_2
set_property PACKAGE_PIN E19 [get_ports {seg[2]}] 		# seg_3
set_property PACKAGE_PIN E21 [get_ports {seg[3]}] 		# seg_4
set_property PACKAGE_PIN G17 [get_ports {seg[4]}] 		# seg_5
set_property PACKAGE_PIN E18 [get_ports {seg[5]}] 		# seg_6
set_property PACKAGE_PIN B16 [get_ports {seg[6]}] 		# seg_7
set_property PACKAGE_PIN C15 [get_ports {seg[7]}] 		# seg_8
set_property PACKAGE_PIN A20 [get_ports {ledseg[0]}]	# ledseg_A
set_property PACKAGE_PIN A21 [get_ports {ledseg[1]}]	# ledseg_B
set_property PACKAGE_PIN A16 [get_ports {ledseg[2]}]	# ledseg_C
set_property PACKAGE_PIN C13 [get_ports {ledseg[3]}]	# ledseg_D
set_property PACKAGE_PIN D15 [get_ports {ledseg[4]}]	# ledseg_E
set_property PACKAGE_PIN D19 [get_ports {ledseg[5]}]	# ledseg_F
set_property PACKAGE_PIN F14 [get_ports {ledseg[6]}]	# ledseg_G
set_property PACKAGE_PIN A14 [get_ports {ledseg[7]}]	# ledseg_DP

# Leds
set_property PACKAGE_PIN AB7 [get_ports {led[0]}] 		# led_1
set_property PACKAGE_PIN AB8 [get_ports {led[1]}] 		# led_2
set_property PACKAGE_PIN AB10 [get_ports {led[2]}] 		# led_3
set_property PACKAGE_PIN AA13 [get_ports {led[3]}] 		# led_4
set_property PACKAGE_PIN Y8 [get_ports {led[4]}] 		# led_5
set_property PACKAGE_PIN V9 [get_ports {led[5]}] 		# led_6
set_property PACKAGE_PIN W15 [get_ports {led[6]}] 		# led_7
set_property PACKAGE_PIN AB18 [get_ports {led[6]}] 		# led_8

# Led RGB
set_property PACKAGE_PIN U1 [get_ports {rgb[0]}] 		# rgb_blue
set_property PACKAGE_PIN W1 [get_ports {rgb[1]}] 		# rgb_green
set_property PACKAGE_PIN Y1 [get_ports {rgb[2]}] 		# rgb_red

# Button
set_property PACKAGE_PIN T4 [get_ports {button[0]}] 	# SW2
set_property PACKAGE_PIN U3 [get_ports {button[1]}] 	# SW3
set_property PACKAGE_PIN V4 [get_ports {button[2]}] 	# SW4
set_property PACKAGE_PIN Y3 [get_ports {button[3]}] 	# SW6

# Switch
set_property PACKAGE_PIN AB1 [get_ports {switch[0]}] 	# SW7A
set_property PACKAGE_PIN AB2 [get_ports {switch[1]}] 	# SW7B
set_property PACKAGE_PIN W5 [get_ports {switch[2]}] 	# SW8A
set_property PACKAGE_PIN R6 [get_ports {switch[3]}] 	# SW8B

# Speaker-beep
set_property PACKAGE_PIN T1 [get_ports beep]			# Speaker-beep

# VGA
set_property PACKAGE_PIN AA18 [get_ports {vgar[0]}] 	# vga_red_0
set_property PACKAGE_PIN AA16 [get_ports {vgar[1]}] 	# vga_red_1
set_property PACKAGE_PIN AA15 [get_ports {vgar[2]}] 	# vga_red_2
set_property PACKAGE_PIN AA14 [get_ports {vgar[3]}] 	# vga_red_3
set_property PACKAGE_PIN L14 [get_ports {vgar[4]}] 		# vga_red_4

set_property PACKAGE_PIN AB6 [get_ports {vgag[0]}] 		# vga_green_0
set_property PACKAGE_PIN AB5 [get_ports {vgag[1]}] 		# vga_green_1
set_property PACKAGE_PIN V8 [get_ports {vgag[2]}] 		# vga_green_2
set_property PACKAGE_PIN W7 [get_ports {vgag[3]}] 		# vga_green_3
set_property PACKAGE_PIN Y6 [get_ports {vgag[4]}] 		# vga_green_4
set_property PACKAGE_PIN W6 [get_ports {vgag[5]}] 		# vga_green_5

set_property PACKAGE_PIN AA10 [get_ports {vgab[0]}] 	# vga_blue_0
set_property PACKAGE_PIN AA8 [get_ports {vgab[1]}] 		# vga_blue_1
set_property PACKAGE_PIN AA6 [get_ports {vgab[2]}] 		# vga_blue_2
set_property PACKAGE_PIN AA5 [get_ports {vgab[3]}] 		# vga_blue_3
set_property PACKAGE_PIN AA4 [get_ports {vgab[4]}] 		# vga_blue_4

# Nets
set_property PACKAGE_PIN G22 [get_ports {net[0]}] 		# Net1
set_property PACKAGE_PIN G21 [get_ports {net[1]}] 		# Net2
set_property PACKAGE_PIN D22 [get_ports {net[2]}] 		# Net3
set_property PACKAGE_PIN E22 [get_ports {net[3]}] 		# Net4
set_property PACKAGE_PIN B22 [get_ports {net[4]}] 		# Net5
set_property PACKAGE_PIN C22 [get_ports {net[5]}] 		# Net6
set_property PACKAGE_PIN F19 [get_ports {net[6]}] 		# Net7
set_property PACKAGE_PIN F20 [get_ports {net[7]}] 		# Net8

# EEPROM-HK24C64
set_property PACKAGE_PIN Y4 [get_ports eeprom_scl]		# EEPROM_SCL
set_property PACKAGE_PIN AB3 [get_ports eeprom_sda]		# EEPROM_SDA

# Thermometer-DS18B20
set_property PACKAGE_PIN K13 [get_ports termo]			# Thermometer

# USB-CH340N
set_property PACKAGE_PIN D14 [get_ports usb_tx]			# USB_TX
set_property PACKAGE_PIN A13 [get_ports usb_rx]			# USB_RX

# RTC-DS1307
set_property PACKAGE_PIN B13 [get_ports rtc_scl]		# RTC_SCL
set_property PACKAGE_PIN H13 [get_ports rtc_sda]		# RTC_SDA

# Transceivers_CAN-SN65HVD230
set_property PACKAGE_PIN AA1 [get_ports can_tx]			# CAN_TX
set_property PACKAGE_PIN Y2 [get_ports can_rx]			# CAN_RX

# Transceivers_RS-MAX3490ESA
set_property PACKAGE_PIN V5 [get_ports rs_tx]			# RS_TX
set_property PACKAGE_PIN T6 [get_ports rs_rx]			# RS_RX
