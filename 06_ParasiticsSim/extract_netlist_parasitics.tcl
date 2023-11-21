box 0 0 0 0
load ../03_Layout/opamp_cascode.mag
extract do local
select top cell
extract all
ext2spice hierarchy on
ext2spice scale off
ext2sim labels on
ext2sim
extresist tolerance 10
extresist
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -d -o design/opamp_cascode.spice
quit -noprompt
