v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -680 -380 -680 -360 {
lab=Vin}
N -740 -300 -740 -280 {
lab=GND}
N -740 -380 -740 -360 {
lab=VCC}
N -680 -300 -680 -280 {
lab=GND}
N 20 -80 20 120 {
lab=Vout}
N 80 -80 100 -80 {
lab=Vout}
N 80 -80 80 -20 {
lab=Vout}
N 80 40 80 80 {
lab=GND}
N 80 -460 80 -400 {
lab=VoutQ}
N 80 -340 80 -300 {
lab=GND}
N -100 -380 -100 -350 {
lab=GND}
N -240 -420 -240 -280 {
lab=VoutQ}
N 20 -460 20 -280 {
lab=VoutQ}
N -240 -280 20 -280 {
lab=VoutQ}
N -100 0 -100 20 {
lab=GND}
N -40 160 20 160 {
lab=Vout}
N 20 120 20 160 {
lab=Vout}
N -160 160 -100 160 {
lab=#net1}
N 80 -460 100 -460 {
lab=VoutQ}
N -130 160 -130 200 {
lab=#net1}
N -130 260 -130 280 {
lab=GND}
N -100 -180 -100 -160 {
lab=VCC}
N -20 -80 20 -80 {
lab=Vout}
N 20 -80 80 -80 {
lab=Vout}
N -240 160 -220 160 {
lab=#net2}
N -240 -40 -240 160 {
lab=#net2}
N -240 -40 -180 -40 {
lab=#net2}
N -240 -120 -180 -120 {
lab=Vin}
N -240 -420 -180 -420 {
lab=VoutQ}
N -20 -460 20 -460 {
lab=VoutQ}
N 20 -460 80 -460 {
lab=VoutQ}
N -100 -560 -100 -540 {
lab=VCC}
N -240 -500 -180 -500 {
lab=Vin}
N -500 -300 -500 -280 {
lab=GND}
N -500 -380 -500 -360 {
lab=VBIAS_A}
N -440 -300 -440 -280 {
lab=GND}
N -440 -380 -440 -360 {
lab=VBIAS_B}
N -120 -180 -120 -160 {
lab=VBIAS_B}
N -140 -180 -140 -160 {
lab=VBIAS_A}
N -140 -560 -140 -540 {
lab=VBIAS_A}
N -120 -560 -120 -540 {
lab=VBIAS_B}
N -140 -380 -140 -360 {
lab=IBIAS}
N -140 -0 -140 20 {
lab=IBIAS}
N -560 -300 -560 -280 {
lab=GND}
N -560 -380 -560 -360 {
lab=IBIAS}
C {devices/lab_pin.sym} 100 -80 0 1 {name=p6 lab=Vout}
C {devices/vsource.sym} -740 -330 0 0 {name=V3 value=1.8}
C {devices/code_shown.sym} -830 0 0 0 {name=sim only_toplevel=false value="
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
C {devices/code_shown.sym} -830 -100 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -740 -280 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -680 -280 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -100 20 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 80 80 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -680 -330 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -100 -180 3 1 {name=p1 lab=VCC}
C {devices/vsource.sym} -70 160 1 0 {name=V2 value="DC=0 AC=\{B\}"}
C {devices/gnd.sym} -130 280 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 80 10 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -100 -350 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -740 -380 3 1 {name=p4 lab=VCC}
C {devices/lab_pin.sym} -680 -380 3 1 {name=p5 lab=Vin}
C {devices/lab_pin.sym} -240 -120 2 1 {name=p7 lab=Vin}
C {devices/capa.sym} 80 -370 0 0 {name=C2
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 80 -300 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -100 -560 3 1 {name=p8 lab=VCC}
C {devices/lab_pin.sym} -240 -500 2 1 {name=p9 lab=Vin}
C {devices/vsource.sym} -190 160 3 0 {name=V1 value="DC=0 AC=\{1-B\}"}
C {devices/lab_pin.sym} 100 -460 0 1 {name=p2 lab=VoutQ}
C {devices/asrc.sym} -130 230 0 0 {name=B1 function="v=V(VoutQ)"}
C {devices/vsource.sym} -500 -330 0 0 {name=V5 value=0}
C {devices/gnd.sym} -500 -280 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -500 -380 3 1 {name=p3 lab=VBIAS_A}
C {devices/vsource.sym} -440 -330 0 0 {name=V6 value=0.9}
C {devices/gnd.sym} -440 -280 0 0 {name=l9 lab=GND}
C {devices/lab_pin.sym} -440 -380 3 1 {name=p10 lab=VBIAS_B}
C {devices/lab_pin.sym} -140 -560 3 1 {name=p11 lab=VBIAS_A}
C {devices/lab_pin.sym} -120 -560 3 1 {name=p12 lab=VBIAS_B}
C {devices/lab_pin.sym} -140 -180 3 1 {name=p13 lab=VBIAS_A}
C {devices/lab_pin.sym} -120 -180 3 1 {name=p14 lab=VBIAS_B}
C {devices/lab_pin.sym} -140 -360 1 1 {name=p15 lab=IBIAS}
C {devices/lab_pin.sym} -140 20 1 1 {name=p16 lab=IBIAS}
C {devices/isource.sym} -560 -330 0 0 {name=I0 value=5.1u}
C {devices/gnd.sym} -560 -280 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -560 -380 3 1 {name=p17 lab=IBIAS}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -80 0 0 {name=x1}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -100 -460 0 0 {name=x2}
