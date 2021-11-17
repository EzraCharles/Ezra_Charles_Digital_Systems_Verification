if [file exists work] {vdel -all}
vlib work
vlog +define+posRST -f files.f
onbreak {resume}
set NoQuitOnFinish 1
vsim -voptargs=+acc work.FlipFlopD
#do wave.do
run 130ms
