if [file exists work] {vdel -all}
vlib work
vlog -f files.f
onbreak {resume}
set NoQuitOnFinish 1
#vsim -voptargs=+acc work.tb_operators
vsim -voptargs=+acc work.TB_mux2to1 
do wave.do
run 130ms
