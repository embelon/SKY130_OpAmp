v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 20 120 140 {
lab=#net1}
N 280 20 280 140 {
lab=#net2}
N 280 120 340 120 {
lab=#net2}
N 340 120 340 170 {
lab=#net2}
N 60 120 60 170 {
lab=#net1}
N 60 120 120 120 {
lab=#net1}
N 40 -340 200 -340 {
lab=VCC}
N 200 -340 200 -320 {
lab=VCC}
N 40 -10 80 -10 {
lab=IN_M}
N 320 -10 360 -10 {
lab=IN_P}
N 280 200 280 220 {
lab=VSS}
N 120 200 120 220 {
lab=VSS}
N 200 -340 440 -340 {
lab=VCC}
N -40 -340 40 -340 {
lab=VCC}
N 200 -360 200 -340 {
lab=VCC}
N 200 220 200 240 {
lab=VSS}
N 120 170 140 170 {
lab=VSS}
N 140 170 140 220 {
lab=VSS}
N 260 170 280 170 {
lab=VSS}
N 260 170 260 220 {
lab=VSS}
N 260 -10 280 -10 {
lab=#net3}
N 120 -10 260 -10 {
lab=#net3}
N 200 -290 220 -290 {
lab=VCC}
N 220 -340 220 -290 {
lab=VCC}
N 200 -260 200 -80 {
lab=#net3}
N 320 170 460 170 {
lab=#net2}
N 500 200 500 220 {
lab=VSS}
N 500 100 500 140 {
lab=#net4}
N 500 170 520 170 {
lab=VSS}
N 520 170 520 220 {
lab=VSS}
N 500 70 520 70 {
lab=#net4}
N 520 70 520 120 {
lab=#net4}
N 500 120 520 120 {
lab=#net4}
N -60 170 80 170 {
lab=#net1}
N -100 200 -100 220 {
lab=VSS}
N -100 220 520 220 {
lab=VSS}
N -120 170 -100 170 {
lab=VSS}
N -120 170 -120 220 {
lab=VSS}
N -120 220 -100 220 {
lab=VSS}
N -100 100 -100 140 {
lab=#net5}
N -120 70 -100 70 {
lab=#net5}
N -120 70 -120 120 {
lab=#net5}
N -120 120 -100 120 {
lab=#net5}
N -60 70 460 70 {
lab=VB_B}
N 120 -60 120 -40 {
lab=#net3}
N 120 -60 280 -60 {
lab=#net3}
N 280 -60 280 -40 {
lab=#net3}
N 200 -80 200 -60 {
lab=#net3}
N 200 -60 200 -10 {
lab=#net3}
N 500 -60 500 40 {
lab=OUT}
N -100 -60 -100 40 {
lab=#net6}
N -60 -90 460 -90 {
lab=VB_A}
N -100 -40 -40 -40 {
lab=#net6}
N -40 -190 -40 -40 {
lab=#net6}
N -60 -190 -40 -190 {
lab=#net6}
N -120 -190 -100 -190 {
lab=VCC}
N -120 -240 -120 -190 {
lab=VCC}
N -120 -240 -100 -240 {
lab=VCC}
N -100 -240 -100 -220 {
lab=VCC}
N -100 -340 -100 -240 {
lab=VCC}
N -100 -340 -40 -340 {
lab=VCC}
N 440 -340 500 -340 {
lab=VCC}
N 500 -340 500 -220 {
lab=VCC}
N 500 -190 520 -190 {
lab=VCC}
N 520 -240 520 -190 {
lab=VCC}
N 500 -240 520 -240 {
lab=VCC}
N -100 -160 -100 -120 {
lab=#net7}
N 500 -160 500 -120 {
lab=#net8}
N -260 -260 -260 -220 {
lab=IB}
N -260 -340 -260 -320 {
lab=VCC}
N -260 -340 -100 -340 {
lab=VCC}
N -280 -290 -260 -290 {
lab=VCC}
N -280 -340 -280 -290 {
lab=VCC}
N -280 -340 -260 -340 {
lab=VCC}
N -260 -240 -200 -240 {
lab=IB}
N -200 -290 -200 -240 {
lab=IB}
N -220 -290 -200 -290 {
lab=IB}
N -200 -290 160 -290 {
lab=IB}
N 500 -10 540 -10 {
lab=OUT}
N -40 -190 460 -190 {
lab=#net6}
N 500 -90 520 -90 {
lab=#net8}
N 520 -140 520 -90 {
lab=#net8}
N 500 -140 520 -140 {
lab=#net8}
N -120 -90 -100 -90 {
lab=#net7}
N -120 -140 -120 -90 {
lab=#net7}
N -120 -140 -100 -140 {
lab=#net7}
N -200 -40 -200 -20 {
lab=#net6}
N -200 -40 -100 -40 {
lab=#net6}
N -200 40 -200 220 {
lab=VSS}
N -200 220 -120 220 {
lab=VSS}
N 100 -120 100 -90 {
lab=VB_A}
N 60 40 60 70 {
lab=VB_B}
C {pfet_01v8.sym} 480 -190 0 0 {name=M9
L=15
W=5
nf=1
mult=500
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} -80 -190 0 1 {name=M1
L=15
W=5
nf=1
mult=500
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} 180 -290 0 0 {name=M100
L=3
W=5
nf=1
mult=60
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} -240 -290 0 1 {name=M20
L=3
W=5
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -350 -20 0 0 {name=p1 lab=IN_P}
C {devices/ipin.sym} -350 0 0 0 {name=p2 lab=IN_M}
C {devices/ipin.sym} -350 -200 0 0 {name=p3 lab=VCC}
C {devices/ipin.sym} -350 -170 0 0 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 360 -10 2 0 {name=p6 sig_type=std_logic lab=IN_P}
C {devices/lab_pin.sym} 40 -10 2 1 {name=p7 sig_type=std_logic lab=IN_M}
C {devices/lab_pin.sym} 200 240 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -360 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {devices/opin.sym} -410 60 0 0 {name=p12 lab=OUT}
C {devices/lab_pin.sym} 540 -10 0 1 {name=p13 sig_type=std_logic lab=OUT}
C {pfet_01v8.sym} 480 -90 0 0 {name=M10
L=5
W=5
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} -80 -90 0 1 {name=M2
L=5
W=5
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 100 -120 0 0 {name=p8 sig_type=std_logic lab=VB_A}
C {devices/lab_pin.sym} 60 40 0 0 {name=p11 sig_type=std_logic lab=VB_B}
C {pfet_01v8.sym} 100 -10 0 0 {name=M5
L=0.18
W=5
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} 300 -10 0 1 {name=M7
L=0.18
W=5
nf=1
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} 100 170 0 0 {name=M6
L=1
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} 300 170 0 1 {name=M8
L=1
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} 480 170 0 0 {name=M12
L=1
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} -80 170 0 1 {name=M4
L=1
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} 480 70 0 0 {name=M11
L=3
W=5
nf=1 
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} -80 70 0 1 {name=M3
L=3
W=5
nf=1 
mult=30
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/capa.sym} -200 10 0 0 {name=C1
m=1
value=400f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -260 -220 3 0 {name=p14 sig_type=std_logic lab=IB}
C {devices/ipin.sym} -350 -100 0 0 {name=p15 lab=VB_A}
C {devices/ipin.sym} -350 -80 0 0 {name=p16 lab=VB_B}
C {devices/ipin.sym} -350 -120 0 0 {name=p17 lab=IB}
