onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib decode_opt

do {wave.do}

view wave
view structure
view signals

do {decode.udo}

run -all

quit -force
