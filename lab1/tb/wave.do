onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Analog-Step -height 84 -max 7.0000000000000009 -min -8.0 /TB_mux2to1/in_a
add wave -noupdate -format Analog-Step -height 84 -max 7.0000000000000009 -min -8.0 /TB_mux2to1/in_b
add wave -noupdate /TB_mux2to1/in_selector
add wave -noupdate -format Analog-Step -height 84 -max 7.0000000000000009 -min -8.0 /TB_mux2to1/o_result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {49000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {256 ns}
