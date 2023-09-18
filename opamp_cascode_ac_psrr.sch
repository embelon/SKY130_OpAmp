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
lab=Vcm}
N -240 -120 -220 -120 {
lab=Vcm}
N -280 -40 -220 -40 {
lab=Vn}
N -280 -280 -280 -40 {
lab=Vn}
N -280 -280 -170 -280 {
lab=Vn}
N -110 -280 0 -280 {
lab=out}
N 0 -280 0 -80 {
lab=out}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/code_shown.sym} 110 -130 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
.control
  alter Vsupply AC = 1
  save all
  ac dec 10 1 1G
  let invVn = 1/(v(Vcm)-v(Vn))
  plot db(invVn)
  meas ac PSR_1k FIND vdb(invVn) AT=1k
  meas ac PSR_1M FIND vdb(invVn) AT=1Meg
  echo PSRR_1k = $&PSR_1k dB
  echo PSRR_1M = $&PSR_1M dB
.endc
"}
C {devices/gnd.sym} -120 60 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 0 60 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -120 -180 3 1 {name=p1 lab=VCC}
C {devices/capa.sym} 0 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -160 -180 3 1 {name=p7 lab=VB_A}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p8 lab=VB_B}
C {devices/lab_pin.sym} -160 20 1 1 {name=p9 lab=IBIAS}
C {/home/zwierzak/projects/SKY130_OpAmp/opamp_cascode.sym} -120 -80 0 0 {name=x1}
C {corner.sym} 100 -290 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -340 -200 0 0 {name=l1 lab=GND}
C {devices/isource.sym} -340 -230 0 0 {name=I0 value=45u}
C {devices/lab_pin.sym} -340 -260 3 1 {name=p3 lab=IBIAS}
C {devices/lab_pin.sym} -280 -40 2 1 {name=p4 lab=Vn}
C {devices/res.sym} -140 -280 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -340 70 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} -340 100 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -340 40 3 1 {name=p2 lab=Vcm}
C {devices/lab_pin.sym} -240 -120 3 1 {name=p5 lab=Vcm}
