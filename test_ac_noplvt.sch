v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 0 -460 20 {
lab=inp}
N -200 120 -140 120 {
lab=inm}
N -80 120 0 120 {
lab=out}
N -500 -160 -500 -140 {
lab=GND}
N -500 -240 -500 -220 {
lab=VCC}
N -460 80 -460 100 {
lab=GND}
N -420 -120 -200 -120 {
lab=inp}
N -500 -240 -130 -240 {
lab=VCC}
N -130 -240 -130 -160 {
lab=VCC}
N 0 -80 140 -80 {
lab=out}
N 0 120 20 120 {
lab=out}
N 20 -80 20 120 {
lab=out}
N -130 -240 -100 -240 {
lab=VCC}
N -220 120 -200 120 {
lab=inm}
N 140 -80 160 -80 {
lab=out}
N -400 120 -400 140 {
lab=GND}
N 140 -80 140 -20 {
lab=out}
N 140 40 140 80 {
lab=GND}
N -460 -120 -460 0 {
lab=inp}
N -460 -120 -420 -120 {
lab=inp}
N -220 -40 -220 120 {
lab=inm}
N -240 -40 -220 -40 {
lab=inm}
N -220 -40 -200 -40 {
lab=inm}
N -220 -140 -220 -120 {
lab=inp}
N -220 -60 -220 -40 {
lab=inm}
N -400 40 -400 60 {
lab=#net1}
N -400 -40 -300 -40 {
lab=#net1}
N -400 -40 -400 40 {
lab=#net1}
C {devices/lab_pin.sym} 160 -80 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -500 -190 0 0 {name=V1 value=1.8}
C {devices/code_shown.sym} 230 -160 0 0 {name=sim only_toplevel=false value="
.save v(inp),v(inm),v(out)
.ac dec 10 10 1G

.control
  run
  let dbAB=db(out/inm)
  let phAB=180/pi*ph(out/inm)
  plot dbAB
  plot phAB
  meas ac db0 when dbAB=0
  meas ac phm find phAB at=db0
.endc
"}
C {devices/code_shown.sym} 230 -260 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -500 -140 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -460 100 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -130 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 140 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -460 50 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -100 -240 0 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -220 -140 3 1 {name=p2 lab=inp}
C {devices/lab_pin.sym} -220 -60 3 1 {name=p3 lab=inm}
C {devices/vsource.sym} -400 90 0 0 {name=V2 value="DC=0.0 AC=1"}
C {devices/gnd.sym} -400 140 0 0 {name=l1 lab=GND}
C {devices/capa.sym} -270 -40 3 0 {name=C2
m=1
value=10mF
footprint=1206
device="ceramic capacitor"}
C {devices/res_ac.sym} -110 120 1 0 {name=R5
value=1
ac=1G
m=1}
C {devices/capa.sym} 140 10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {/home/zwierzak/projects/Sky130_OpAmp/opamp_noplvt.sym} -100 -80 0 0 {name=x1}
