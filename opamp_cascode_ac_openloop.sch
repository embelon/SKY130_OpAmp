v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 -560 -460 -540 {
lab=Vin}
N -520 -480 -520 -460 {
lab=GND}
N -520 -560 -520 -540 {
lab=VCC}
N -460 -480 -460 -460 {
lab=GND}
N 20 -320 40 -320 {
lab=Vout}
N -120 -240 -120 -220 {
lab=GND}
N -340 -140 -320 -140 {
lab=Vin}
N -260 -140 -140 -140 {
lab=Vfb}
N -220 -160 -220 -140 {
lab=Vfb}
N -220 -280 -220 -220 {
lab=Vinm}
N -220 -280 -200 -280 {
lab=Vinm}
N -220 -360 -200 -360 {
lab=Vin}
N -240 -360 -220 -360 {
lab=Vin}
N -240 -280 -220 -280 {
lab=Vinm}
N -220 -140 -220 -120 {
lab=Vfb}
N -160 -420 -160 -400 {
lab=VBIAS_A}
N -140 -420 -140 -400 {
lab=VBIAS_B}
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
N -320 -560 -320 -540 {
lab=VBIAS_A}
N -380 -480 -380 -460 {
lab=GND}
N -380 -560 -380 -540 {
lab=IBIAS}
N -320 -480 -320 -460 {
lab=GND}
N -260 -560 -260 -540 {
lab=VBIAS_B}
N -260 -480 -260 -460 {
lab=GND}
C {devices/lab_pin.sym} 40 -320 0 1 {name=p6 lab=Vout}
C {devices/vsource.sym} -520 -510 0 0 {name=V3 value=1.8}
C {devices/code_shown.sym} 160 -350 0 0 {name=sim only_toplevel=false value="
.control
  save all
  ac dec 10 1 1G
  let T = v(Vfb) / v(Vinm)
  let mag = db(T)
  let phase = 180*cph(T)/pi
  plot mag phase xlog
.endc
"}
C {devices/code_shown.sym} 160 -450 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -520 -460 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -460 -460 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -120 -220 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 20 -180 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -460 -510 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -120 -420 3 1 {name=p1 lab=VCC}
C {devices/capa.sym} 20 -250 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -520 -560 3 1 {name=p4 lab=VCC}
C {devices/lab_pin.sym} -460 -560 3 1 {name=p5 lab=Vin}
C {devices/lab_pin.sym} -240 -360 2 1 {name=p7 lab=Vin}
C {devices/vsource.sym} -220 -190 2 0 {name=V1 value="DC=0V AC=1V"}
C {devices/res.sym} -110 -140 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -290 -140 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -340 -140 2 1 {name=p2 lab=Vin}
C {devices/lab_pin.sym} -240 -280 2 1 {name=p3 lab=Vinm}
C {devices/lab_pin.sym} -220 -120 1 1 {name=p8 lab=Vfb}
C {devices/lab_pin.sym} -140 -420 3 1 {name=p9 lab=VBIAS_B}
C {devices/lab_pin.sym} -160 -420 3 1 {name=p10 lab=VBIAS_A}
C {devices/lab_pin.sym} -160 -220 1 1 {name=p11 lab=IBIAS}
C {devices/gnd.sym} -380 -460 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -320 -460 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} -320 -510 0 0 {name=V5 value=0}
C {devices/lab_pin.sym} -380 -560 3 1 {name=p12 lab=IBIAS}
C {devices/lab_pin.sym} -320 -560 3 1 {name=p13 lab=VBIAS_A}
C {devices/gnd.sym} -260 -460 0 0 {name=l7 lab=GND}
C {devices/vsource.sym} -260 -510 0 0 {name=V6 value=0.9}
C {devices/lab_pin.sym} -260 -560 3 1 {name=p14 lab=VBIAS_B}
C {devices/isource.sym} -380 -510 0 0 {name=I0 value=5.1u}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -120 -320 0 0 {name=x1}
