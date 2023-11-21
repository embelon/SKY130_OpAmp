#!/bin/bash

## use magic in batch mode to extract netlist from layout
magic -noconsole -dnull extract_netlist_parasitics.tcl

## remove temp files
rm *.ext
rm *.nodes
rm *.sim
