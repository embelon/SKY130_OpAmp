v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/lab_pin.sym} -130 -160 1 0 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -200 -120 0 0 {name=p3 lab=INP}
C {devices/lab_pin.sym} -200 -40 0 0 {name=p4 lab=INM}
C {devices/lab_pin.sym} 0 -80 0 1 {name=p6 lab=OUT}
C {devices/vsource.sym} -500 -190 0 0 {name=V1 value=1.8}
C {/home/zwierzak/projects/Sky130_OpAmp/opamp.sym} -100 -80 0 0 {name=x1}
C {devices/lab_pin.sym} -500 -220 1 0 {name=p7 lab=VCC}
C {devices/vsource.sym} -500 50 0 0 {name=V2 value=0.9}
C {devices/vsource.sym} -420 50 0 0 {name=V3 value=0.9}
C {devices/lab_pin.sym} -500 20 1 0 {name=p13 lab=INP}
C {devices/lab_pin.sym} -420 20 1 0 {name=p14 lab=INM}
C {devices/capa.sym} 140 50 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 140 20 3 1 {name=p16 lab=OUT}
C {devices/code_shown.sym} 210 -130 0 0 {name=sim1 only_toplevel=false value="
.save all @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm5.msky130_fd_pr__pfet_01v8[vdsat,vds,gm,id]
.save all @m.x1.xm6.msky130_fd_pr__pfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm7.msky130_fd_pr__pfet_01v8_lvt[vdsat,vds,gm,id]
.save all @m.x1.xm8.msky130_fd_pr__pfet_01v8[vdsat,vds,gm,id]
.save all @m.x1.xm9.msky130_fd_pr__pfet_01v8[vdsat,vds,gm,id]
.save all @m.x1.xm10.msky130_fd_pr__pfet_01v8[vdsat,vds,gm,id]

.op

.control
run
print v(vcc)
print v(inm),v(inp),v(out)
print v(x1.m5vg)
print v(x1.m6vd)
print v(x1.m6vs)
print v(x1.m7vd)
print v(x1.m9vg)
.endc
"}
C {devices/code_shown.sym} 210 -230 0 0 {name=models1
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -500 -160 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -500 80 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -420 80 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -130 0 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 140 80 0 0 {name=l6 lab=GND}
