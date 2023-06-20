onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib coe4_1_opt

do {wave.do}

view wave
view structure
view signals

do {coe4_1.udo}

run -all

quit -force
