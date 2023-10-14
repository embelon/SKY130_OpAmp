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
lab=#net1}
N -220 -120 -200 -120 {
lab=#net2}
N -110 -280 0 -280 {
lab=out}
N 0 -280 0 -80 {
lab=out}
N -380 -120 -380 -80 {
lab=in}
N -380 -120 -360 -120 {
lab=in}
N -380 -80 -380 -40 {
lab=in}
N -380 -40 -360 -40 {
lab=in}
N -300 -40 -220 -40 {
lab=#net1}
N -260 -40 -260 -20 {
lab=#net1}
N -300 -120 -220 -120 {
lab=#net2}
N -260 -280 -260 -120 {
lab=#net2}
N -260 -280 -170 -280 {
lab=#net2}
N -460 -80 -460 -20 {
lab=in}
N -460 -80 -380 -80 {
lab=in}
C {devices/lab_pin.sym} 20 -80 0 1 {name=p6 lab=out}
C {devices/code_shown.sym} 110 -130 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
.control
  alter V1 AC = 1
  save all
  ac dec 10 1 1G
  let CMRR = 11*v(in)/v(out)
  plot db(CMRR)
  meas ac CMRR_1k FIND vdb(CMRR) AT=1k
  meas ac CMRR_100 FIND vdb(CMRR) AT=100
  echo CMRR_100 = $&CMRR_100 dB
  echo CMRR_1k = $&CMRR_1k dB
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
C {../design/opamp_cascode.sym} -120 -80 0 0 {name=x1}
C {corner.sym} 100 -290 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/gnd.sym} -460 -200 0 0 {name=l1 lab=GND}
C {devices/isource.sym} -460 -230 0 0 {name=I0 value=45u}
C {devices/lab_pin.sym} -460 -260 3 1 {name=p3 lab=IBIAS}
C {devices/lab_pin.sym} -380 -120 2 1 {name=p4 lab=in}
C {devices/res.sym} -330 -120 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -460 10 0 0 {name=V1 value=0.9}
C {devices/gnd.sym} -460 40 0 0 {name=l3 lab=GND}
C {devices/res.sym} -330 -40 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -140 -280 1 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -260 10 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -260 40 0 0 {name=l2 lab=GND}
