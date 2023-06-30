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
N -400 -120 -400 -20 {
lab=#net1}
N -400 -120 -380 -120 {
lab=#net1}
N 0 -80 0 -40 {
lab=out}
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
N -220 100 -20 100 {
lab=out}
N -20 -80 -20 100 {
lab=out}
N -320 -120 -200 -120 {
lab=inp}
N -240 -140 -240 -120 {
lab=inp}
N -220 -40 -220 100 {
lab=out}
N -220 -40 -200 -40 {
lab=out}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -500 -310 0 0 {name=Vcc value=1.8}
C {devices/code_shown.sym} 0 -280 0 0 {name=sim only_toplevel=false value="
.control
  save all
  ac dec 10 1 1G
  plot v(out)
  meas ac period when v(out)=0.707 fall=1
  let freq = 1/period
  echo bandwidth = $&freq Hz
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
C {devices/lab_pin.sym} -240 -140 3 1 {name=p2 lab=inp}
C {devices/vsource.sym} -400 10 0 0 {name=Vcm value=0.9}
C {devices/capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} -350 -120 1 0 {name=Vdiff value="0 AC 1"}
C {devices/lab_pin.sym} -500 -360 3 1 {name=p5 lab=VCC}
C {devices/lab_pin.sym} -160 -180 3 1 {name=p7 lab=VBIAS_A}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p8 lab=VBIAS_B}
C {devices/lab_pin.sym} -160 20 1 1 {name=p9 lab=IBIAS}
C {devices/vsource.sym} -280 -310 0 0 {name=VbA value=0}
C {devices/gnd.sym} -280 -260 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -220 -310 0 0 {name=Vb_B value=1.0}
C {devices/gnd.sym} -220 -260 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -220 -360 3 1 {name=p10 lab=VBIAS_B}
C {devices/lab_pin.sym} -280 -360 3 1 {name=p11 lab=VBIAS_A}
C {devices/isource.sym} -340 -310 0 0 {name=Ib value=5.1u}
C {devices/gnd.sym} -340 -260 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -340 -360 3 1 {name=p12 lab=IBIAS}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -120 -80 0 0 {name=x1}
