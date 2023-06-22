v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 -360 -440 -340 {
lab=Vin}
N -500 -280 -500 -260 {
lab=GND}
N -500 -360 -500 -340 {
lab=VCC}
N -440 -280 -440 -260 {
lab=GND}
N 0 -80 140 -80 {
lab=Vout}
N 20 -80 20 120 {
lab=Vout}
N 140 -80 160 -80 {
lab=Vout}
N 140 -80 140 -20 {
lab=Vout}
N 140 40 140 80 {
lab=GND}
N 140 -460 140 -400 {
lab=VoutQ}
N 0 -460 140 -460 {
lab=VoutQ}
N 140 -340 140 -300 {
lab=GND}
N -130 -380 -130 -350 {
lab=GND}
N -130 -200 -130 -160 {
lab=VCC}
N -130 -580 -130 -540 {
lab=VCC}
N -240 -420 -200 -420 {
lab=VoutQ}
N -240 -420 -240 -280 {
lab=VoutQ}
N 20 -460 20 -280 {
lab=VoutQ}
N -240 -280 20 -280 {
lab=VoutQ}
N -340 -140 -340 -120 {
lab=Vin}
N -340 -120 -200 -120 {
lab=Vin}
N -340 -520 -340 -500 {
lab=Vin}
N -340 -500 -200 -500 {
lab=Vin}
N -130 0 -130 20 {
lab=GND}
N -40 160 20 160 {
lab=Vout}
N 20 120 20 160 {
lab=Vout}
N -260 160 -220 160 {
lab=#net1}
N -260 -40 -260 160 {
lab=#net1}
N -260 -40 -200 -40 {
lab=#net1}
N -160 160 -100 160 {
lab=#net2}
N 140 -460 160 -460 {
lab=VoutQ}
N -130 160 -130 200 {
lab=#net2}
N -130 260 -130 280 {
lab=GND}
C {devices/lab_pin.sym} 160 -80 0 1 {name=p6 lab=Vout}
C {devices/vsource.sym} -500 -310 0 0 {name=V3 value=1.8}
C {devices/code_shown.sym} 260 -300 0 0 {name=sim only_toplevel=false value="
.param B=0
.control
  ac dec 10 1 1G
  alterparam B=1
  reset
  ac dec 10 1 1G
  setplot new
  set curplottitle=OpenLoopGain
  let frequency = ac1.frequency
  let T = (ac1.i(V2) + ac2.i(V1)) / (ac1.i(V1) + ac2.i(V2))
  let mag = db(T)
  let phase = 180*cph(T)/pi
  plot mag phase xlog
.endc
"}
C {devices/code_shown.sym} 260 -400 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -500 -260 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -440 -260 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -130 20 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 140 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -440 -310 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -130 -200 3 1 {name=p1 lab=VCC}
C {devices/vsource.sym} -70 160 1 0 {name=V2 value="DC=0 AC=\{B\}"}
C {devices/gnd.sym} -130 280 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 140 10 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -130 -350 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -500 -360 3 1 {name=p4 lab=VCC}
C {devices/lab_pin.sym} -440 -360 3 1 {name=p5 lab=Vin}
C {devices/lab_pin.sym} -340 -140 3 1 {name=p7 lab=Vin}
C {devices/capa.sym} 140 -370 0 0 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 140 -300 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -130 -580 3 1 {name=p8 lab=VCC}
C {devices/lab_pin.sym} -340 -520 3 1 {name=p9 lab=Vin}
C {devices/vsource.sym} -190 160 3 0 {name=V1 value="DC=0 AC=\{1-B\}"}
C {devices/lab_pin.sym} 160 -460 0 1 {name=p2 lab=VoutQ}
C {devices/asrc.sym} -130 230 0 0 {name=B1 function="v=V(VoutQ)"}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -460 0 0 {name=x2}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -80 0 0 {name=x1}
