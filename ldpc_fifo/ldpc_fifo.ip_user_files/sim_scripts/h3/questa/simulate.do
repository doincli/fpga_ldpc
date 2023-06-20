onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib h3_opt

do {wave.do}

view wave
view structure
view signals

do {h3.udo}

run -all

quit -force
