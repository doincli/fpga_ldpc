onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.coe4_4 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {coe4_4.udo}

run -all

quit -force
