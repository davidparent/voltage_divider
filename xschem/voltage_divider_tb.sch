v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 510 -160 540 -160 {
lab=GND}
N 540 -160 540 -130 {
lab=GND}
N 620 -110 620 -100 {
lab=GND}
N 620 -180 620 -170 {
lab=Out}
N 510 -180 620 -180 {
lab=Out}
N 660 -250 660 -220 {
lab=GND}
N 660 -330 660 -310 {
lab=VDD}
N 510 -200 540 -200 {
lab=VDD}
N 1030 -150 1060 -150 {
lab=GND}
N 1060 -150 1060 -120 {
lab=GND}
N 1140 -100 1140 -90 {
lab=GND}
N 1140 -170 1140 -160 {
lab=Out_ext}
N 1030 -170 1140 -170 {lab=Out_ext}
N 1030 -190 1060 -190 {
lab=VDD}
N 540 90 570 90 {
lab=GND}
N 570 90 570 120 {
lab=GND}
N 650 140 650 150 {
lab=GND}
N 650 70 650 80 {
lab=Out_ext2}
N 540 70 650 70 {lab=Out_ext2}
N 540 50 570 50 {
lab=VDD}
C {voltage_divider.sym} 360 -180 0 0 {name=x1}
C {devices/vdd.sym} 660 -330 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 540 -130 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 620 -140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 660 -280 0 0 {name=V1 value="pulse(0 3.3 0 1n 1n 1u 2u)" savecurrent=false}
C {devices/gnd.sym} 660 -220 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 620 -100 0 0 {name=l4 lab=GND}
C {devices/vdd.sym} 540 -200 0 0 {name=l5 lab=VDD}
C {devices/lab_wire.sym} 580 -180 0 0 {name=p1 sig_type=std_logic lab=Out}
C {devices/code.sym} 210 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/corner.sym} 460 -370 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 330 -370 0 0 {name=STIMULI
simulator=ngspice
only_toplevel=false 
value=" 

.control
tran 1n 80u
plot VDD Out Out_ext Out_ext2
save all
.endc
"}
C {voltage_divider.sym} 880 -170 0 0 {name=x2
schematic=voltage_divider_ext
compy_sym_def=" .subckt Vdd Out Vss
R0 Out Vss sky130_fd_pr__res_generic_po w=0.33 l=10
R1 Vdd Out sky130_fd_pr__res_generic_po w=0.33 l=10
C0 Out VSUBS 2.68352f
"}
C {devices/gnd.sym} 1060 -120 0 0 {name=l6 lab=GND}
C {devices/capa.sym} 1140 -130 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 1140 -90 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 1060 -190 0 0 {name=l8 lab=VDD}
C {devices/lab_wire.sym} 1100 -170 0 0 {name=p2 sig_type=std_logic lab=Out_ext}
C {voltage_divider.sym} 390 70 0 0 {name=x3
schematic=voltage_divider_ext2
compy_sym_def=" .include /home/voltage_divder/mag/voltage_divider.spice"
"}
C {devices/gnd.sym} 570 120 0 0 {name=l9 lab=GND}
C {devices/capa.sym} 650 110 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 650 150 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 570 50 0 0 {name=l11 lab=VDD}
C {devices/lab_wire.sym} 610 70 0 0 {name=p3 sig_type=std_logic lab=Out_ext2}
