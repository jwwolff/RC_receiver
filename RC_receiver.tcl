transcript off
#stop previous simulations
quit -sim	

# select a directory for creation of the work directory
cd {Z:\ECE501\Sequential Logic\RC_receiver}
vlib work
vmap work work

# compile the program and test-bench files
vcom ../sim_mem_init/sim_mem_init.vhd
vcom ../hex_to_7_seg/hex_to_7_seg.vhd
vcom RC_receiver_students.vhd
vcom test_RC_receiver.vhd 

# initializing the simulation window and adding waves to the simulation window
vsim test_RC_receiver
add wave sim:/test_RC_receiver/dev_to_test/*
 
# define simulation time
run 8265 ns
# zoom out
wave zoom full