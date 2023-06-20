onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ten_bit -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ten_bit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ten_bit.udo}

run -all

endsim

quit -force
