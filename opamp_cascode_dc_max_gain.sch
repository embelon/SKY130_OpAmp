v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -400 40 -400 60 {
lab=GND}
N 0 -80 20 -80 {
lab=out}
N 0 20 0 60 {
lab=GND}
N -220 -40 -200 -40 {
lab=Vn}
N -220 -140 -220 -120 {
lab=Vp}
N -220 -60 -220 -40 {
lab=Vn}
N -220 -120 -200 -120 {
lab=Vp}
N -400 -120 -400 -20 {
lab=#net1}
N -260 -40 -220 -40 {
lab=Vn}
N 0 -80 0 -40 {
lab=out}
N -400 -40 -320 -40 {
lab=#net1}
N -440 -280 -440 -260 {
lab=GND}
N -440 -360 -440 -340 {
lab=Vdiff}
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
N -340 -280 -340 -260 {
lab=GND}
N -340 -360 -340 -340 {
lab=IBIAS}
N -400 -120 -380 -120 {
lab=#net1}
N -320 -120 -220 -120 {
lab=Vp}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/code_shown.sym} 130 -210 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
.control
  save all
  dc Vdiff -0.01 0.01 0.00001
  let dVout = deriv(v(out))
  plot dVout vs Vdiff retraceplot
  meas dc maxGain max dVout
  set hcopydevtype = svg
  hardcopy dc_max_gain.svg dVout vs Vdiff
.endc
"}
C {devices/gnd.sym} -400 60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -120 60 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 0 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -120 -180 3 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -140 3 1 {name=p2 lab=Vp}
C {devices/lab_pin.sym} -220 -60 3 1 {name=p3 lab=Vn}
C {devices/vsource.sym} -400 10 0 0 {name=Vcm value=0.985}
C {devices/capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -440 -310 0 0 {name=Vdiff value=0}
C {devices/gnd.sym} -440 -260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -440 -360 3 1 {name=p4 lab=Vdiff}
C {devices/lab_pin.sym} -160 -180 3 1 {name=p7 lab=VB_A}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p8 lab=VB_B}
C {devices/lab_pin.sym} -160 20 1 1 {name=p9 lab=IBIAS}
C {devices/isource.sym} -340 -310 0 0 {name=Ib value=45u
}
C {devices/gnd.sym} -340 -260 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -340 -360 3 1 {name=p12 lab=IBIAS}
C {/home/zwierzak/projects/SKY130_OpAmp/opamp_cascode.sym} -120 -80 0 0 {name=x1}
C {corner.sym} 120 -390 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/asrc.sym} -350 -120 1 0 {name=B1 function="v=v(Vdiff)"}
C {devices/asrc.sym} -290 -40 3 0 {name=B2 function="v=v(Vdiff)"}
