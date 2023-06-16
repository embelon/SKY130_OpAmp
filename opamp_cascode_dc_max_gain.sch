v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -400 -220 -400 -200 {
lab=GND}
N -400 -300 -400 -280 {
lab=VCC}
N -400 40 -400 60 {
lab=GND}
N -130 -240 -130 -160 {
lab=VCC}
N 60 -80 80 -80 {
lab=out}
N 60 20 60 60 {
lab=GND}
N -220 -40 -200 -40 {
lab=inm}
N -220 -140 -220 -120 {
lab=inp}
N -220 -60 -220 -40 {
lab=inm}
N -220 -120 -200 -120 {
lab=inp}
N 0 -80 60 -80 {
lab=out}
N -400 -300 -130 -300 {
lab=VCC}
N -130 -300 -130 -240 {
lab=VCC}
N -130 -300 -100 -300 {
lab=VCC}
N -400 -120 -400 -20 {
lab=#net1}
N -400 -120 -380 -120 {
lab=#net1}
N -320 -120 -220 -120 {
lab=inp}
N -260 -40 -220 -40 {
lab=inm}
N 60 -80 60 -40 {
lab=out}
N -400 -40 -320 -40 {
lab=#net1}
N 20 -220 20 -200 {
lab=GND}
N 20 -300 20 -280 {
lab=Vdiff}
C {devices/lab_pin.sym} 80 -80 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -400 -250 0 0 {name=Vcc value=1.8}
C {devices/code_shown.sym} 130 -150 0 0 {name=sim only_toplevel=false value="
.control
  save all
  dc Vdiff 0.02 0.03 0.00001
  plot deriv(v(out)) vs Vdiff retraceplot
.endc
"}
C {devices/code_shown.sym} 130 -250 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -400 -200 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -400 60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -130 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 60 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -100 -300 0 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -140 3 1 {name=p2 lab=inp}
C {devices/lab_pin.sym} -220 -60 3 1 {name=p3 lab=inm}
C {devices/vsource.sym} -400 10 0 0 {name=Vcm value=0.985}
C {devices/capa.sym} 60 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -80 0 0 {name=x1}
C {devices/asrc.sym} -290 -40 3 0 {name=B1 function="v=v(Vdiff)"}
C {devices/vsource.sym} 20 -250 0 0 {name=Vdiff value=0}
C {devices/gnd.sym} 20 -200 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 20 -300 0 1 {name=p4 lab=Vdiff}
C {devices/asrc.sym} -350 -120 1 1 {name=B2 function="v=v(Vdiff)"}
