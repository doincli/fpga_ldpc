onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib H1_3_opt

do {wave.do}

view wave
view structure
view signals

do {H1_3.udo}

run -all

quit -force
