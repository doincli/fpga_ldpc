onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib H1_1_opt

do {wave.do}

view wave
view structure
view signals

do {H1_1.udo}

run -all

quit -force
