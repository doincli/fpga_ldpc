onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib H3_1_opt

do {wave.do}

view wave
view structure
view signals

do {H3_1.udo}

run -all

quit -force
