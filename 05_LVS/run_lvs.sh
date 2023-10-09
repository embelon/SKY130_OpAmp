#!/bin/bash
cp -u ../03_Layout/opamp_cascode*.spice .
sed '/^C/d' < opamp_cascode_layout.spice > opamp_cascode_layout_noC.spice
netgen -batch lvs "opamp_cascode.spice opamp_cascode" "opamp_cascode_layout_noC.spice opamp_cascode" $PDK_ROOT/sky130A/libs.tech/netgen/sky130A_setup.tcl 


