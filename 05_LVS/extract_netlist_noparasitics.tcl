box 0 0 0 0
load ../03_Layout/opamp_cascode.mag
extract do local
extract all
ext2spice lvs
ext2spice -d -o opamp_cascode_noparasitics.spice
quit -noprompt
