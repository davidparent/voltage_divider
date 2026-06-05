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
C {voltage_divider.sym} 360 -180 0 0 {name=x1}
C {devices/vdd.sym} 660 -330 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 540 -130 0 0 {name=l2 lab=GND}
C {devices/capa.sym} 620 -140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 660 -280 0 0 {name=V1 value=3 savecurrent=false}
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
plot VDD Out
save all
.endc
"}
