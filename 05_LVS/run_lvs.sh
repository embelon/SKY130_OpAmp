#!/bin/bash

## copy source netlist that layout was based on 
cp -u ../03_Layout/opamp_cascode.spice .

## use magic in batch mode to extract netlist from layout
magic -noconsole -dnull extract_netlist_noparasitics.tcl
## sed '/^C/d' < opamp_cascode_layout.spice > opamp_cascode_layout_noC.spice

## remove ext files
rm *.ext

## compare using netgen
netgen -batch lvs "opamp_cascode.spice opamp_cascode" "opamp_cascode_noparasitics.spice opamp_cascode" $PDK_ROOT/sky130A/libs.tech/netgen/sky130A_setup.tcl

