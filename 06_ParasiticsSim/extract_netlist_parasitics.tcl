box 0 0 0 0
load ../03_Layout/opamp_cascode.mag
select top cell
expand
flatten opamp_cascode_flat
load opamp_cascode_flat
cellname delete opamp_cascode
cellname rename opamp_cascode_flat opamp_cascode
select top cell
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -d -o opamp_cascode.spice
quit -noprompt
