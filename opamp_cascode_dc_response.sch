v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -360 -40 -360 -20 {
lab=inp}
N -410 -160 -410 -140 {
lab=GND}
N -410 -240 -410 -220 {
lab=VCC}
N -360 40 -360 60 {
lab=GND}
N -130 -240 -130 -160 {
lab=VCC}
N -130 -240 -100 -240 {
lab=VCC}
N 60 -80 80 -80 {
lab=out}
N -280 40 -280 60 {
lab=GND}
N 60 -80 60 -20 {
lab=out}
N 60 40 60 80 {
lab=GND}
N -240 -40 -220 -40 {
lab=inm}
N -220 -40 -200 -40 {
lab=inm}
N -220 -140 -220 -120 {
lab=inp}
N -220 -60 -220 -40 {
lab=inm}
N -280 -40 -280 -20 {
lab=inm}
N -280 -40 -240 -40 {
lab=inm}
N -220 -120 -200 -120 {
lab=inp}
N -360 -120 -220 -120 {
lab=inp}
N -360 -120 -360 -40 {
lab=inp}
N -410 -240 -130 -240 {
lab=VCC}
N 0 -80 60 -80 {
lab=out}
C {devices/lab_pin.sym} 80 -80 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -410 -190 0 0 {name=V1 value=1.8}
C {devices/code_shown.sym} 130 -150 0 0 {name=sim only_toplevel=false value="
.save v(inm),v(inp),v(out)
.dc V4 0.97 1.0 0.000001
"}
C {devices/code_shown.sym} 130 -250 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -410 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -360 60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -130 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 60 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -360 10 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -100 -240 0 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -140 3 1 {name=p2 lab=inp}
C {devices/lab_pin.sym} -220 -60 3 1 {name=p3 lab=inm}
C {devices/vsource.sym} -280 10 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -280 60 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 60 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -80 0 0 {name=x1}
