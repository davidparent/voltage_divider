v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 140 -390 140 -340 {
lab=Vdd}
N 140 -280 140 -240 {
lab=Out}
N 140 -180 140 -130 {
lab=xxx}
N 140 -260 190 -260 {
lab=Out}
C {sky130_fd_pr/res_generic_po.sym} 140 -310 0 0 {name=R1
W=.33	
L=10
model=res_generic_po
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 140 -210 0 0 {name=R2
W=.33	
L=10
model=res_generic_po
mult=1}
C {devices/opin.sym} 190 -260 0 0 {name=p1 lab=Out}
C {devices/iopin.sym} 140 -390 0 0 {name=p2 lab=Vdd}
C {devices/iopin.sym} 140 -130 0 0 {name=p3 lab=Vss}
