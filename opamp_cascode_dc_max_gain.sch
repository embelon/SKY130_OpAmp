v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -500 -280 -500 -260 {
lab=GND}
N -500 -360 -500 -340 {
lab=VCC}
N -400 40 -400 60 {
lab=GND}
N 0 -80 20 -80 {
lab=out}
N 0 20 0 60 {
lab=GND}
N -220 -40 -200 -40 {
lab=inm}
N -220 -140 -220 -120 {
lab=inp}
N -220 -60 -220 -40 {
lab=inm}
N -220 -120 -200 -120 {
lab=inp}
N -400 -120 -400 -20 {
lab=#net1}
N -400 -120 -380 -120 {
lab=#net1}
N -320 -120 -220 -120 {
lab=inp}
N -260 -40 -220 -40 {
lab=inm}
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
lab=VBIAS_A}
N -140 -180 -140 -160 {
lab=VBIAS_B}
N -120 -180 -120 -160 {
lab=VCC}
N -280 -280 -280 -260 {
lab=GND}
N -280 -360 -280 -340 {
lab=VBIAS_A}
N -220 -280 -220 -260 {
lab=GND}
N -220 -360 -220 -340 {
lab=VBIAS_B}
N -340 -280 -340 -260 {
lab=GND}
N -340 -360 -340 -340 {
lab=IBIAS}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -500 -310 0 0 {name=Vcc value=1.8}
C {devices/code_shown.sym} 0 -280 0 0 {name=sim only_toplevel=false value="
.control
  save all
  dc Vdiff -0.01 0.01 0.000001
  let dVout = deriv(v(out))
  plot dVout vs Vdiff retraceplot
  meas dc maxGain max dVout
.endc
"}
C {devices/code_shown.sym} 0 -380 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -500 -260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -400 60 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -120 60 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 0 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -120 -180 3 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -140 3 1 {name=p2 lab=inp}
C {devices/lab_pin.sym} -220 -60 3 1 {name=p3 lab=inm}
C {devices/vsource.sym} -400 10 0 0 {name=Vcm value=0.985}
C {devices/capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -120 -80 0 0 {name=x1}
C {devices/asrc.sym} -290 -40 3 0 {name=B1 function="v=v(Vdiff)"}
C {devices/vsource.sym} -440 -310 0 0 {name=Vdiff value=0}
C {devices/gnd.sym} -440 -260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -440 -360 3 1 {name=p4 lab=Vdiff}
C {devices/asrc.sym} -350 -120 1 1 {name=B2 function="v=v(Vdiff)"}
C {devices/lab_pin.sym} -500 -360 3 1 {name=p5 lab=VCC}
C {devices/lab_pin.sym} -160 -180 3 1 {name=p7 lab=VBIAS_A}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p8 lab=VBIAS_B}
C {devices/lab_pin.sym} -160 20 1 1 {name=p9 lab=IBIAS}
C {devices/vsource.sym} -280 -310 0 0 {name=VbA value=0}
C {devices/gnd.sym} -280 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -220 -310 0 0 {name=VbB value=0.9}
C {devices/gnd.sym} -220 -260 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -220 -360 3 1 {name=p10 lab=VBIAS_B}
C {devices/lab_pin.sym} -280 -360 3 1 {name=p11 lab=VBIAS_A}
C {devices/isource.sym} -340 -310 0 0 {name=Ib value=5.1u}
C {devices/gnd.sym} -340 -260 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -340 -360 3 1 {name=p12 lab=IBIAS}
