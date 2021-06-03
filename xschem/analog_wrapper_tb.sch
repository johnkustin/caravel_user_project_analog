v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
P 4 5 1410 -300 1410 -210 1520 -210 1520 -300 1410 -300 {}
P 4 5 1590 -200 1500 -200 1500 -90 1590 -90 1590 -200 {}
P 4 6 1110 -10 1110 -460 1820 -460 1820 0 1110 0 1110 -10 {}
P 4 5 110 0 1100 0 1100 -500 110 -500 110 -0 {}
P 4 5 120 -470 320 -470 320 -60 120 -60 120 -470 {}
T {oscilloscope probe} 1380 -330 0 0 0.4 0.4 {}
T {oscilloscope input} 1600 -200 0 0 0.4 0.4 {}
T {150 ohm Series ESD Resistor} 860 -280 0 0 0.3 0.3 {}
T {supply} 1650 -360 0 0 0.4 0.4 {}
T {power on reset pulse} 1120 -120 0 0 0.4 0.4 {}
T {off chip} 1370 -520 0 0 1 1 {}
T {caravan} 480 -560 0 0 1 1 {}
T {management SoC} 150 -490 0 0 0.3 0.3 {}
N 490 -450 700 -450 { lab=#net1}
N 490 -410 620 -410 { lab=GND}
N 490 -370 590 -370 { lab=#net2}
N 490 -150 640 -150 { lab=#net3}
N 490 -130 660 -130 { lab=GND}
N 490 -110 600 -110 { lab=GND}
N 620 -410 700 -410 { lab=GND}
N 590 -370 670 -370 { lab=#net2}
N 600 -110 680 -110 { lab=GND}
N 490 -210 810 -210 { lab=#net4}
N 490 -230 670 -230 { lab=#net5}
N 490 -430 590 -430 { lab=#net6}
N 490 -390 590 -390 { lab=#net7}
N 490 -350 590 -350 { lab=#net8}
N 490 -350 590 -350 { lab=#net8}
N 490 -330 590 -330 { lab=#net9}
N 480 -310 580 -310 { lab=#net10}
N 480 -290 580 -290 { lab=#net11}
N 480 -270 580 -270 { lab=#net12}
N 490 -250 590 -250 { lab=#net13}
N 490 -190 590 -190 { lab=gpio_analog[17:0]}
N 490 -170 590 -170 { lab=#net14}
N 490 -90 590 -90 { lab=#net15}
N 130 -450 190 -450 { lab=#net16}
N 130 -430 190 -430 { lab=#net17}
N 130 -410 190 -410 { lab=#net18}
N 130 -390 190 -390 { lab=#net19}
N 130 -370 190 -370 { lab=#net20}
N 130 -370 190 -370 { lab=#net20}
N 130 -350 190 -350 { lab=#net21}
N 130 -350 190 -350 { lab=#net21}
N 130 -330 190 -330 { lab=#net22}
N 130 -310 190 -310 { lab=#net23}
N 130 -290 190 -290 { lab=#net24}
N 130 -270 190 -270 { lab=#net25}
N 130 -250 190 -250 { lab=#net26}
N 130 -230 190 -230 { lab=#net27}
N 130 -210 190 -210 { lab=#net28}
N 640 -150 650 -150 { lab=#net3}
N 590 -190 840 -190 { lab=gpio_analog[17:0]}
N 860 -180 970 -180 { lab=gpio_analog[5]}
N 840 -190 850 -170 { lab=gpio_analog[17:0]}
N 970 -180 1040 -180 { lab=gpio_analog[5]}
N 850 -200 970 -200 { lab=gpio_analog[4]}
N 1190 -260 1440 -260 { lab=vout}
N 1500 -260 1540 -260 { lab=#net29}
N 1540 -260 1540 -190 { lab=#net29}
N 1630 -360 1630 -340 { lab=#net31}
N 1040 -180 1280 -180 { lab=gpio_analog[5]}
N 1340 -180 1340 -80 { lab=gpio_analog[5]}
N 660 -130 680 -130 { lab=GND}
N 680 -130 680 -110 { lab=GND}
N 1540 -120 1540 -30 { lab=GND}
N 1540 -130 1540 -120 { lab=GND}
N 970 -260 1190 -260 { lab=vout}
N 1280 -180 1340 -180 { lab=gpio_analog[5]}
N 670 -370 1630 -370 { lab=#net2}
N 1630 -370 1630 -360 {}
C {user_analog_project_wrapper.sym} 340 -270 0 0 {name=x1}
C {devices/bus_connect.sym} 840 -190 1 1 {name=l1 lab=gpio_analog[4]}
C {devices/gnd.sym} 700 -410 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} 800 -780 0 0 {name=s1 only_toplevel=false value=".param mc_mm_switch=0
.lib /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /tmp/kustinj/ee272bclone/open_pdks/sky130A/libs.tech/ngspice/sky130_fd_pr__model__pnp.model.spice
.control
tran 1n 11u
plot "V(vccd1)" "V(gpio_analog[5])" "V(vout)" "V(gpio_analog[4])"
.endc"}
C {devices/bus_connect.sym} 850 -170 1 1 {name=l3 lab=gpio_analog[5]}
C {devices/lab_pin.sym} 770 -190 0 0 {name=l8 sig_type=std_logic lab=gpio_analog[17:0]}
C {devices/vsource.sym} 1630 -310 0 0 {name=V1 net_name=true value="1.8 pwl 0us 0 5us 1.8"}
C {devices/vsource.sym} 1340 -60 0 0 {name=V2 net_name=true value="0 pulse(0V 1.8V 6us 1us 1us 1us)"}
C {devices/res.sym} 1470 -260 3 1 {name=R2
value=9e6
footprint=1206
device=resistor
m=1
tc1=0
tc2=0
}
C {devices/gnd.sym} 1540 -30 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 1630 -370 2 0 {name=l7 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 1330 -260 1 0 {name=l10 sig_type=std_logic lab=vout}
C {devices/res.sym} 1540 -160 0 0 {name=R3
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
C {devices/gnd.sym} 680 -110 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1630 -280 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1340 -30 0 0 {name=l9 lab=GND}
