v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -80 20 -80 {
lab=out}
N 0 20 0 60 {
lab=GND}
N 0 -80 0 -40 {
lab=out}
N -120 0 -120 60 {
lab=GND}
N -160 0 -160 20 {
lab=IBIAS}
N -40 -80 -0 -80 {
lab=out}
N -160 -180 -160 -160 {
lab=VB_A}
N -140 -180 -140 -160 {
lab=VB_B}
N -120 -180 -120 -160 {
lab=VCC}
N -220 -40 -200 -40 {
lab=Vn}
N -220 -120 -200 -120 {
lab=Vp}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/code_shown.sym} 110 -130 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
Vpos Vp GND 0.9
Vneg Vn GND 0.9
.control
  define Power(x,y) -(x*y)
  save all
  op
  print Power(v(VCC), Vsupply#branch)
.endc
"}
C {devices/gnd.sym} -120 60 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 0 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -120 -180 3 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -120 2 1 {name=p2 lab=Vp}
C {devices/capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -160 -180 3 1 {name=p7 lab=VB_A}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p8 lab=VB_B}
C {devices/lab_pin.sym} -160 20 1 1 {name=p9 lab=IBIAS}
C {/home/zwierzak/projects/SKY130_OpAmp/opamp_cascode.sym} -120 -80 0 0 {name=x1}
C {corner.sym} 100 -290 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/gnd.sym} -280 -200 0 0 {name=l1 lab=GND}
C {devices/isource.sym} -280 -230 0 0 {name=I0 value=4.5u}
C {devices/lab_pin.sym} -280 -260 3 1 {name=p3 lab=IBIAS}
C {devices/lab_pin.sym} -220 -40 2 1 {name=p4 lab=Vn}
