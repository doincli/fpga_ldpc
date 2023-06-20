onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ldpc -L xil_defaultlib -L xpm -L fifo_generator_v13_2_1 -L blk_mem_gen_v8_4_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ldpc xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ldpc.udo}

run -all

endsim

quit -force
