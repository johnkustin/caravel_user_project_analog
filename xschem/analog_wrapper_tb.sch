v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -290 510 -290 { lab=#net1}
N 300 -250 430 -250 { lab=GND}
N 510 -250 510 -150 { lab=GND}
N 510 -150 780 -150 { lab=GND}
N 780 -190 780 -150 { lab=GND}
N 690 -190 690 -150 { lab=GND}
N 300 -210 400 -210 { lab=#net2}
N 480 -270 480 -210 { lab=#net2}
N 480 -270 690 -270 { lab=#net2}
N 690 -270 690 -250 { lab=#net2}
N 300 10 450 10 { lab=io_analog[10:0]}
N 780 -270 850 -270 { lab=gpio_analog[5]}
N 780 -270 780 -250 { lab=gpio_analog[5]}
N 300 30 470 30 { lab=GND}
N 300 50 410 50 { lab=GND}
N 550 30 630 30 { lab=io_clamp_high[2:0]}
N 780 -150 810 -150 { lab=GND}
N 530 10 660 10 { lab=io_analog[10:0]}
N 430 -250 510 -250 { lab=GND}
N 400 -210 480 -210 { lab=#net2}
N 470 30 550 30 { lab=GND}
N 460 10 530 10 { lab=io_analog[10:0]}
N 410 50 490 50 { lab=io_clamp_low[2:0]}
N 300 -50 620 -50 { lab=io_oeb[26:0]}
N 300 -70 480 -70 { lab=io_out[26:0]}
N 300 -270 400 -270 { lab=#net3}
N 300 -230 400 -230 { lab=#net4}
N 300 -190 400 -190 { lab=#net5}
N 300 -190 400 -190 { lab=#net5}
N 300 -170 400 -170 { lab=#net6}
N 290 -150 390 -150 { lab=#net7}
N 290 -130 390 -130 { lab=#net8}
N 290 -110 390 -110 { lab=#net9}
N 300 -90 400 -90 { lab=#net10}
N 300 -30 400 -30 { lab=gpio_analog[17:0]}
N 300 -10 400 -10 { lab=#net11}
N 300 70 400 70 { lab=#net12}
N -60 -290 -0 -290 { lab=#net13}
N -60 -270 0 -270 { lab=#net14}
N -60 -250 0 -250 { lab=#net15}
N -60 -230 0 -230 { lab=#net16}
N -60 -210 0 -210 { lab=#net17}
N -60 -210 0 -210 { lab=#net17}
N -60 -190 0 -190 { lab=#net18}
N -60 -190 0 -190 { lab=#net18}
N -60 -170 0 -170 { lab=#net19}
N -60 -150 0 -150 { lab=#net20}
N -60 -130 0 -130 { lab=#net21}
N -60 -110 0 -110 { lab=#net22}
N -60 -90 0 -90 { lab=#net23}
N -60 -70 0 -70 { lab=#net24}
N -60 -50 0 -50 { lab=#net25}
N 450 10 460 10 { lab=io_analog[10:0]}
N 630 30 810 30 { lab=GND}
N 490 50 810 50 { lab=GND}
N 810 -150 810 50 { lab=GND}
N 400 -30 650 -30 { lab=gpio_analog[17:0]}
N 660 -40 780 -40 { lab=gpio_analog[4]}
N 670 -20 780 -20 { lab=gpio_analog[5]}
N 650 -30 660 -10 { lab=gpio_analog[17:0]}
N 850 -270 850 -20 { lab=gpio_analog[5]}
N 780 -20 850 -20 { lab=gpio_analog[5]}
C {user_analog_project_wrapper.sym} 150 -110 0 0 {name=x1}
C {devices/bus_connect.sym} 650 -30 1 1 {name=l1 lab=gpio_analog[4]}
C {devices/gnd.sym} 730 -150 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 570 30 0 0 {name=l11 sig_type=std_logic lab=io_clamp_high[2:0]}
C {devices/lab_pin.sym} 570 10 0 0 {name=l12 sig_type=std_logic lab=io_analog[10:0]}
C {devices/lab_pin.sym} 480 50 0 0 {name=l9 sig_type=std_logic lab=io_clamp_low[2:0]}
C {devices/lab_pin.sym} 450 -50 0 0 {name=l4 sig_type=std_logic lab=io_oeb[26:0]}
C {devices/lab_pin.sym} 450 -70 0 0 {name=l5 sig_type=std_logic lab=io_out[26:0]}
C {devices/code_shown.sym} 920 -130 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130_fd_pr__model__pnp.model.spice
.control
tran 1n 11u
plot V(vccd1) V(gpio_analog[5]) V(gpio_analog[4])
.endc"}
C {devices/bus_connect.sym} 660 -10 1 1 {name=l3 lab=gpio_analog[5]}
C {devices/lab_pin.sym} 550 -30 0 0 {name=l8 sig_type=std_logic lab=gpio_analog[17:0]}
C {devices/vsource.sym} 690 -220 0 1 {name=V1 net_name=true value="1.8 pwl 0us 0 5us 1.8"}
C {devices/vsource.sym} 780 -220 0 0 {name=V2 net_name=true value="0 pulse(0V 1.8V 6us 1us 1us 1us)"}
