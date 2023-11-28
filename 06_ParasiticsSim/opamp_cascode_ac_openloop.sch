v {xschem version=3.4.1 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -320 40 -320 {
lab=Vout}
N -120 -240 -120 -220 {
lab=GND}
N -340 -140 -320 -140 {
lab=Vp}
N -260 -140 -140 -140 {
lab=Vfb}
N -220 -160 -220 -140 {
lab=Vfb}
N -220 -280 -220 -220 {
lab=Vm}
N -220 -280 -200 -280 {
lab=Vm}
N -220 -360 -200 -360 {
lab=Vp}
N -240 -360 -220 -360 {
lab=Vp}
N -240 -280 -220 -280 {
lab=Vm}
N -220 -140 -220 -120 {
lab=Vfb}
N -160 -420 -160 -400 {
lab=VB_A}
N -140 -420 -140 -400 {
lab=VB_B}
N -120 -420 -120 -400 {
lab=VCC}
N -80 -140 -20 -140 {
lab=Vout}
N -20 -320 -20 -140 {
lab=Vout}
N -40 -320 -20 -320 {
lab=Vout}
N -20 -320 20 -320 {
lab=Vout}
N 20 -320 20 -280 {
lab=Vout}
N 20 -220 20 -180 {
lab=GND}
N -160 -240 -160 -220 {
lab=IBIAS}
N -420 -240 -420 -220 {
lab=GND}
N -420 -320 -420 -300 {
lab=IBIAS}
C {devices/lab_pin.sym} 40 -320 0 1 {name=p6 lab=Vout}
C {devices/code_shown.sym} 200 -380 0 0 {name=sim only_toplevel=false value="
Vsupply VCC GND 1.8
VbiasA VB_A GND 0.2
VbiasB VB_B GND 1.1
Vin Vp GND 0.9
.include ../opamp_cascode.spice
.control
  save all
  ac dec 10 1 1G
  let T = v(Vfb) / v(Vm)
  let mag = db(T)
  let phase = 180*cph(T)/pi
  plot mag phase xlog
  meas ac margin find phase when mag=0
  meas ac GBW when mag=0 
.endc
"}
C {devices/gnd.sym} -120 -220 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 20 -180 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -120 -420 3 1 {name=p1 lab=VCC}
C {devices/capa.sym} 20 -250 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -240 -360 2 1 {name=p7 lab=Vp}
C {devices/vsource.sym} -220 -190 2 0 {name=V1 value="0 AC 1"}
C {devices/res.sym} -110 -140 3 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -290 -140 3 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -340 -140 2 1 {name=p2 lab=Vp}
C {devices/lab_pin.sym} -240 -280 2 1 {name=p3 lab=Vm}
C {devices/lab_pin.sym} -220 -120 1 1 {name=p8 lab=Vfb}
C {devices/lab_pin.sym} -140 -420 3 1 {name=p9 lab=VB_B}
C {devices/lab_pin.sym} -160 -420 3 1 {name=p10 lab=VB_A}
C {devices/lab_pin.sym} -160 -220 1 1 {name=p11 lab=IBIAS}
C {devices/gnd.sym} -420 -220 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -420 -320 3 1 {name=p12 lab=IBIAS}
C {devices/isource.sym} -420 -270 0 0 {name=I0 value=45u}
C {corner.sym} 190 -540 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {./opamp_cascode.sym} -120 -320 0 0 {name=x1}
