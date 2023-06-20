onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+decode -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.decode xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {decode.udo}

run -all

endsim

quit -force
