v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 240 -320 260 {
lab=inp}
N -300 -60 -300 -40 {
lab=GND}
N -300 -140 -300 -120 {
lab=VCC}
N -320 320 -320 340 {
lab=GND}
N 40 200 60 200 {
lab=out}
N -240 320 -240 340 {
lab=GND}
N -200 240 -180 240 {
lab=inm}
N -180 240 -160 240 {
lab=inm}
N -180 140 -180 160 {
lab=inp}
N -180 220 -180 240 {
lab=inm}
N -240 240 -240 260 {
lab=inm}
N -240 240 -200 240 {
lab=inm}
N -180 160 -160 160 {
lab=inp}
N -320 160 -180 160 {
lab=inp}
N -320 160 -320 240 {
lab=inp}
N -80 280 -80 340 {
lab=GND}
N -120 100 -120 120 {
lab=VBIAS_A}
N -100 100 -100 120 {
lab=VBIAS_B}
N -80 100 -80 120 {
lab=VCC}
N -120 280 -120 300 {
lab=IBIAS}
N 40 200 40 240 {
lab=out}
N 40 300 40 340 {
lab=GND}
N 0 200 40 200 {
lab=out}
N -200 -60 -200 -40 {
lab=GND}
N -200 -140 -200 -120 {
lab=IBIAS}
N -140 -60 -140 -40 {
lab=GND}
N -140 -140 -140 -120 {
lab=VBIAS_A}
N -80 -60 -80 -40 {
lab=GND}
N -80 -140 -80 -120 {
lab=VBIAS_B}
C {devices/lab_pin.sym} 60 200 0 1 {name=p6 lab=out}
C {devices/vsource.sym} -300 -90 0 0 {name=V1 value=1.8}
C {devices/code_shown.sym} 140 -110 0 0 {name=sim only_toplevel=false value="
.control
  save all 
  set p_num_list = ( 1 2 5 7 9 10 20 100 )
  set n_num_list = ( 3 4 6 8 11 12 )
  set param_list = ( vds id )
  foreach p_num $p_num_list
    foreach param $param_list
      save @m.x1.xm\{$p_num\}.msky130_fd_pr__pfet_01v8[\{$param\}]
    end
  end
  foreach n_num $n_num_list
    foreach param $param_list
      save @m.x1.xm\{$n_num\}.msky130_fd_pr__nfet_01v8[\{$param\}]
    end
  end
  op
  foreach p_num $p_num_list
    foreach param $param_list
      print @m.x1.xm\{$p_num\}.msky130_fd_pr__pfet_01v8[\{$param\}]
    end
  end
  foreach n_num $n_num_list
    foreach param $param_list
      print @m.x1.xm\{$n_num\}.msky130_fd_pr__nfet_01v8[\{$param\}]
    end
  end 
.endc
"}
C {devices/code_shown.sym} 140 -210 0 0 {name=models
only_toplevel=false
format="tcleval( @value )"
value="
.lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt
"}
C {devices/gnd.sym} -300 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -320 340 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} -80 340 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 40 340 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -320 290 0 0 {name=V4 value=0.9}
C {devices/lab_pin.sym} -300 -140 3 1 {name=p1 lab=VCC}
C {devices/lab_pin.sym} -180 140 3 1 {name=p2 lab=inp}
C {devices/lab_pin.sym} -180 220 3 1 {name=p3 lab=inm}
C {devices/vsource.sym} -240 290 0 0 {name=V2 value=0.9}
C {devices/gnd.sym} -240 340 0 0 {name=l1 lab=GND}
C {devices/capa.sym} 40 270 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {/home/zwierzak/projects/SKY130_OpAmp_GIT/opamp_cascode.sym} -80 200 0 0 {name=x1}
C {devices/lab_pin.sym} -80 100 3 1 {name=p4 lab=VCC}
C {devices/lab_pin.sym} -100 100 3 1 {name=p5 lab=VBIAS_B}
C {devices/lab_pin.sym} -120 100 3 1 {name=p7 lab=VBIAS_A}
C {devices/lab_pin.sym} -120 300 1 1 {name=p8 lab=IBIAS}
C {devices/gnd.sym} -200 -40 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -200 -140 3 1 {name=p9 lab=IBIAS}
C {devices/vsource.sym} -140 -90 0 0 {name=V5 value=0}
C {devices/gnd.sym} -140 -40 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} -140 -140 3 1 {name=p10 lab=VBIAS_A}
C {devices/vsource.sym} -80 -90 0 0 {name=V6 value=1.0}
C {devices/gnd.sym} -80 -40 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -80 -140 3 1 {name=p11 lab=VBIAS_B}
C {devices/isource.sym} -200 -90 0 0 {name=I0 value=5.1u}
