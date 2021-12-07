transcript off
#stop previous simulations
quit -sim	

# select a directory for creation of the work directory
cd {C:\_Eric\UD\Teaching\ECE501\Homework\Homework5}
vlib work
vmap work work

# compile the program and test-bench files
vcom ../../Designs/Sequential_Logic/sim_mem_init/sim_mem_init.vhd
vcom ../../Designs/Sequential_Logic/hex_to_7_seg/hex_to_7_seg.vhd
vcom RC_receiver.vhd
vcom test_RC_receiver.vhd 

# initializing the simulation window and adding waves to the simulation window
vsim test_RC_receiver
add wave sim:/test_RC_receiver/dev_to_test/*
 
# define simulation time
run 8265 ns
# zoom out
wave zoom full