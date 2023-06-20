onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ldpc_opt

do {wave.do}

view wave
view structure
view signals

do {ldpc.udo}

run -all

quit -force
