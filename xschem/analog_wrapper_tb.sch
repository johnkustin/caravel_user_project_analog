v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
P 4 5 1190 -300 1190 -210 1300 -210 1300 -300 1190 -300 {}
P 4 5 1370 -200 1280 -200 1280 -90 1370 -90 1370 -200 {}
T {oscilloscope probe} 1160 -330 0 0 0.4 0.4 {}
T {oscilloscope input} 1380 -200 0 0 0.4 0.4 {}
N 490 -450 700 -450 { lab=#net1}
N 490 -410 620 -410 { lab=GND}
N 700 -410 700 -310 { lab=GND}
N 700 -310 970 -310 { lab=GND}
N 970 -350 970 -310 { lab=GND}
N 880 -350 880 -310 { lab=GND}
N 490 -370 590 -370 { lab=vccd1}
N 670 -430 670 -370 { lab=vccd1}
N 670 -430 880 -430 { lab=vccd1}
N 880 -430 880 -410 { lab=vccd1}
N 490 -150 640 -150 { lab=io_analog[10:0]}
N 970 -430 1040 -430 { lab=gpio_analog[5]}
N 970 -430 970 -410 { lab=gpio_analog[5]}
N 490 -130 660 -130 { lab=GND}
N 490 -110 600 -110 { lab=GND}
N 740 -130 820 -130 { lab=io_clamp_high[2:0]}
N 970 -310 1000 -310 { lab=GND}
N 720 -150 850 -150 { lab=io_analog[10:0]}
N 620 -410 700 -410 { lab=GND}
N 590 -370 670 -370 { lab=vccd1}
N 660 -130 740 -130 { lab=GND}
N 650 -150 720 -150 { lab=io_analog[10:0]}
N 600 -110 680 -110 { lab=io_clamp_low[2:0]}
N 490 -210 810 -210 { lab=io_oeb[26:0]}
N 490 -230 670 -230 { lab=io_out[26:0]}
N 490 -430 590 -430 { lab=#net2}
N 490 -390 590 -390 { lab=#net3}
N 490 -350 590 -350 { lab=#net4}
N 490 -350 590 -350 { lab=#net4}
N 490 -330 590 -330 { lab=#net5}
N 480 -310 580 -310 { lab=#net6}
N 480 -290 580 -290 { lab=#net7}
N 480 -270 580 -270 { lab=#net8}
N 490 -250 590 -250 { lab=#net9}
N 490 -190 590 -190 { lab=gpio_analog[17:0]}
N 490 -170 590 -170 { lab=#net10}
N 490 -90 590 -90 { lab=#net11}
N 130 -450 190 -450 { lab=#net12}
N 130 -430 190 -430 { lab=#net13}
N 130 -410 190 -410 { lab=#net14}
N 130 -390 190 -390 { lab=#net15}
N 130 -370 190 -370 { lab=#net16}
N 130 -370 190 -370 { lab=#net16}
N 130 -350 190 -350 { lab=#net17}
N 130 -350 190 -350 { lab=#net17}
N 130 -330 190 -330 { lab=#net18}
N 130 -310 190 -310 { lab=#net19}
N 130 -290 190 -290 { lab=#net20}
N 130 -270 190 -270 { lab=#net21}
N 130 -250 190 -250 { lab=#net22}
N 130 -230 190 -230 { lab=#net23}
N 130 -210 190 -210 { lab=#net24}
N 640 -150 650 -150 { lab=io_analog[10:0]}
N 820 -130 1000 -130 { lab=GND}
N 680 -110 1000 -110 { lab=GND}
N 1000 -310 1000 -110 { lab=GND}
N 590 -190 840 -190 { lab=gpio_analog[17:0]}
N 860 -180 970 -180 { lab=gpio_analog[5]}
N 840 -190 850 -170 { lab=gpio_analog[17:0]}
N 1040 -430 1040 -180 { lab=gpio_analog[5]}
N 970 -180 1040 -180 { lab=gpio_analog[5]}
N 850 -200 970 -200 { lab=gpio_analog[4]}
N 970 -260 1220 -260 { lab=vout}
N 1280 -260 1320 -260 { lab=#net25}
N 1320 -260 1320 -190 { lab=#net25}
C {user_analog_project_wrapper.sym} 340 -270 0 0 {name=x1}
C {devices/bus_connect.sym} 840 -190 1 1 {name=l1 lab=gpio_analog[4]}
C {devices/gnd.sym} 920 -310 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 760 -130 0 0 {name=l11 sig_type=std_logic lab=io_clamp_high[2:0]}
C {devices/lab_pin.sym} 760 -150 0 0 {name=l12 sig_type=std_logic lab=io_analog[10:0]}
C {devices/lab_pin.sym} 670 -110 0 0 {name=l9 sig_type=std_logic lab=io_clamp_low[2:0]}
C {devices/lab_pin.sym} 640 -210 0 0 {name=l4 sig_type=std_logic lab=io_oeb[26:0]}
C {devices/lab_pin.sym} 640 -230 0 0 {name=l5 sig_type=std_logic lab=io_out[26:0]}
C {devices/code_shown.sym} 1730 -440 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130_fd_pr__model__pnp.model.spice
.control
tran 1n 11u
plot "V(vccd1)" "V(gpio_analog[5])" "V(vout)" "V(gpio_analog[4])"
.endc"}
C {devices/bus_connect.sym} 850 -170 1 1 {name=l3 lab=gpio_analog[5]}
C {devices/lab_pin.sym} 740 -190 0 0 {name=l8 sig_type=std_logic lab=gpio_analog[17:0]}
C {devices/vsource.sym} 880 -380 0 1 {name=V1 net_name=true value="1.8 pwl 0us 0 5us 1.8"}
C {devices/vsource.sym} 970 -380 0 0 {name=V2 net_name=true value="0 pulse(0V 1.8V 6us 1us 1us 1us)"}
C {devices/res.sym} 1250 -260 3 1 {name=R2
value=9e6
footprint=1206
device=resistor
m=1
tc1=0
tc2=0
}
C {devices/gnd.sym} 1320 -130 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 800 -430 0 0 {name=l7 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 1110 -260 1 0 {name=l10 sig_type=std_logic lab=vout}
C {devices/res.sym} 1320 -160 0 0 {name=R3
value=1e6
footprint=1206
device=resistor
m=1
tc1=0
tc2=0
}
C {sky130_fd_pr/res_generic_po.sym} 970 -230 0 0 {name=R4
W=2
L=3.15
model=res_generic_po
spiceprefix=X
mult=1}
