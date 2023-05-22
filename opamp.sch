v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 70 400 70 {
lab=M5VG}
N -40 100 -40 140 {
lab=M5VG}
N -40 120 40 120 {
lab=M5VG}
N 40 70 40 120 {
lab=M5VG}
N 0 170 80 170 {
lab=M6VD}
N 120 20 120 140 {
lab=M6VD}
N 280 20 280 140 {
lab=M7VD}
N 280 120 340 120 {
lab=M7VD}
N 320 170 400 170 {
lab=M7VD}
N 340 120 340 170 {
lab=M7VD}
N 60 120 60 170 {
lab=M6VD}
N 60 120 120 120 {
lab=M6VD}
N 440 100 440 140 {
lab=OUT}
N 120 -80 120 -40 {
lab=M6VS}
N 280 -80 280 -40 {
lab=M6VS}
N 120 -80 280 -80 {
lab=M6VS}
N 200 -140 200 -80 {
lab=M6VS}
N 80 -210 160 -210 {
lab=M9VG}
N 40 -180 40 -160 {
lab=M9VG}
N 40 -160 100 -160 {
lab=M9VG}
N 100 -210 100 -160 {
lab=M9VG}
N 200 -180 200 -140 {
lab=M6VS}
N 40 -160 40 -140 {
lab=M9VG}
N -40 20 -40 40 {
lab=VCC}
N 440 20 440 40 {
lab=VCC}
N 40 -80 40 -60 {
lab=VSS}
N 40 -260 40 -240 {
lab=VCC}
N 40 -260 200 -260 {
lab=VCC}
N 200 -260 200 -240 {
lab=VCC}
N 40 -10 80 -10 {
lab=IN-}
N 320 -10 360 -10 {
lab=IN+}
N -40 200 -40 220 {
lab=VSS}
N -40 220 440 220 {
lab=VSS}
N 440 200 440 220 {
lab=VSS}
N 280 200 280 220 {
lab=VSS}
N 120 200 120 220 {
lab=VSS}
N 440 -260 440 20 {
lab=VCC}
N 200 -260 440 -260 {
lab=VCC}
N -40 -260 -40 20 {
lab=VCC}
N -40 -260 40 -260 {
lab=VCC}
N 200 -280 200 -260 {
lab=VCC}
N 200 220 200 240 {
lab=VSS}
N 440 120 480 120 {
lab=OUT}
N 120 170 140 170 {
lab=VSS}
N 140 170 140 220 {
lab=VSS}
N 260 170 280 170 {
lab=VSS}
N 260 170 260 220 {
lab=VSS}
N 440 170 460 170 {
lab=VSS}
N 460 170 460 220 {
lab=VSS}
N 440 220 460 220 {
lab=VSS}
N -60 170 -40 170 {
lab=VSS}
N -60 170 -60 220 {
lab=VSS}
N -60 220 -40 220 {
lab=VSS}
N 440 70 460 70 {
lab=VCC}
N 460 20 460 70 {
lab=VCC}
N 440 20 460 20 {
lab=VCC}
N 260 -10 280 -10 {
lab=M6VS}
N 120 -10 260 -10 {
lab=M6VS}
N 20 -210 40 -210 {
lab=VCC}
N 20 -260 20 -210 {
lab=VCC}
N 200 -210 220 -210 {
lab=VCC}
N 220 -260 220 -210 {
lab=VCC}
N -60 70 -40 70 {
lab=VCC}
N -60 20 -60 70 {
lab=VCC}
N -60 20 -40 20 {
lab=VCC}
N 200 -60 200 -10 {
lab=M6VS}
N 200 -80 200 -60 {
lab=M6VS}
N 100 -240 100 -210 {
lab=M9VG}
N 40 50 40 70 {
lab=M5VG}
N 200 -120 220 -120 {
lab=M6VS}
N 120 120 140 120 {
lab=M6VD}
N 260 120 280 120 {
lab=M7VD}
C {pfet_01v8.sym} 420 70 0 0 {name=M5
L=15
W=40
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} -20 70 0 1 {name=M8
L=15
W=40
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} 180 -210 0 0 {name=M9
L=3
W=20
nf=1
mult=10
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} 60 -210 0 1 {name=M10
L=3
W=20
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/isource.sym} 40 -110 0 0 {name=I0 value=3.5u}
C {devices/ipin.sym} -200 -20 0 0 {name=p1 lab=IN+}
C {devices/ipin.sym} -200 0 0 0 {name=p2 lab=IN-}
C {devices/ipin.sym} -200 -110 0 0 {name=p3 lab=VCC}
C {devices/ipin.sym} -200 -80 0 0 {name=p4 lab=VSS}
C {devices/lab_pin.sym} 40 -10 0 0 {name=p6 sig_type=std_logic lab=IN-}
C {devices/lab_pin.sym} 360 -10 0 1 {name=p7 sig_type=std_logic lab=IN+}
C {devices/lab_pin.sym} 40 -60 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 240 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -280 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {devices/opin.sym} -260 100 0 0 {name=p12 lab=OUT}
C {devices/lab_pin.sym} 480 120 0 1 {name=p13 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 100 -240 0 1 {name=p5 sig_type=std_logic lab=M9VG}
C {devices/lab_pin.sym} 40 50 0 1 {name=p11 sig_type=std_logic lab=M5VG}
C {devices/lab_pin.sym} 220 -120 0 1 {name=p14 sig_type=std_logic lab=M6VS}
C {devices/lab_pin.sym} 140 120 0 1 {name=p15 sig_type=std_logic lab=M6VD}
C {devices/lab_pin.sym} 260 120 0 0 {name=p16 sig_type=std_logic lab=M7VD}
C {pfet_01v8.sym} 300 -10 0 1 {name=M7
L=0.25
W=25
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {pfet_01v8.sym} 100 -10 0 0 {name=M6
L=0.25
W=25
nf=1
mult=3
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {nfet_01v8.sym} 420 170 0 0 {name=M2
L=15
W=40
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
C {nfet_01v8.sym} -20 170 0 1 {name=M4
L=15
W=40
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
C {nfet_01v8.sym} 100 170 0 0 {name=M1
L=15
W=40
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
C {nfet_01v8.sym} 300 170 0 1 {name=M3
L=15
W=40
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
