v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -1020 -140 -1020 -120 {
lab=GND}
N -620 -260 -600 -260 {
lab=out}
N -620 -160 -620 -120 {
lab=GND}
N -840 -220 -820 -220 {
lab=Vn}
N -840 -320 -840 -300 {
lab=Vp}
N -840 -240 -840 -220 {
lab=Vn}
N -840 -300 -820 -300 {
lab=Vp}
N -1020 -300 -1020 -200 {
lab=#net1}
N -880 -220 -840 -220 {
lab=Vn}
N -620 -260 -620 -220 {
lab=out}
N -1020 -220 -940 -220 {
lab=#net1}
N -1060 -460 -1060 -440 {
lab=GND}
N -1060 -540 -1060 -520 {
lab=Vdiff}
N -740 -180 -740 -120 {
lab=GND}
N -780 -180 -780 -160 {
lab=IBIAS}
N -660 -260 -620 -260 {
lab=out}
N -780 -360 -780 -340 {
lab=VB_A}
N -760 -360 -760 -340 {
lab=VB_B}
N -740 -360 -740 -340 {
lab=VCC}
N -960 -460 -960 -440 {
lab=GND}
N -960 -540 -960 -520 {
lab=IBIAS}
N -1020 -300 -1000 -300 {
lab=#net1}
N -940 -300 -840 -300 {
lab=Vp}
C {devices/lab_pin.sym} -600 -260 0 1 {name=p6 lab=out}
C {devices/code_shown.sym} -490 -390 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
.include ../opamp_cascode.spice
.control
  save all
  dc Vdiff -0.1 0.1 0.00001
  let dVout = deriv(v(out))
  plot dVout vs Vdiff retraceplot
  meas dc maxGain max dVout
  set hcopydevtype = svg
  hardcopy dc_max_gain.svg dVout vs Vdiff
.endc
"}
C {devices/gnd.sym} -1020 -120 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -740 -120 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} -620 -120 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -740 -360 3 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -840 -320 3 1 {name=p2 lab=Vp}
C {devices/lab_pin.sym} -840 -240 3 1 {name=p3 lab=Vn}
C {devices/vsource.sym} -1020 -170 0 0 {name=Vcm value=0.9}
C {devices/capa.sym} -620 -190 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -1060 -490 0 0 {name=Vdiff value=0}
C {devices/gnd.sym} -1060 -440 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -1060 -540 3 1 {name=p4 lab=Vdiff}
C {devices/lab_pin.sym} -780 -360 3 1 {name=p7 lab=VB_A}
C {devices/lab_pin.sym} -760 -360 3 1 {name=p8 lab=VB_B}
C {devices/lab_pin.sym} -780 -160 1 1 {name=p9 lab=IBIAS}
C {devices/isource.sym} -960 -490 0 0 {name=Ib value=45u
}
C {devices/gnd.sym} -960 -440 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -960 -540 3 1 {name=p12 lab=IBIAS}
C {corner.sym} -500 -570 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {devices/asrc.sym} -970 -300 1 0 {name=B1 function="v=v(Vdiff)"}
C {devices/asrc.sym} -910 -220 3 0 {name=B2 function="v=v(Vdiff)"}
C {./opamp_cascode.sym} -740 -260 0 0 {name=x1}
