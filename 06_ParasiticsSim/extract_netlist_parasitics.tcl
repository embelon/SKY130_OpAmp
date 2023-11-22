box values 0 0 0 0
load ../03_Layout/opamp_cascode.mag
select top cell
expand
flatten opamp_cascode_flat
load opamp_cascode_flat
cellname delete opamp_cascode
cellname rename opamp_cascode_flat opamp_cascode
select top cell
extract do resistance
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist all
ext2spice lvs
ext2spice cthresh 0.01
ext2spice rthresh 100
ext2spice extresist on
ext2spice resistor tee on
ext2spice format ngspice
ext2spice -d -p . -o opamp_cascode.spice
quit -noprompt
