#if { $argc != 2 } {
#	puts "this script requires two command line arguments:"
#	puts "<prom file path> <prm file path>"
#	exit
#} else {
#	set binfile [lindex $argv 0]
#	set prmfile [lindex $argv 1]
#	puts $binfile
#	puts $prmfile
#}
if { $argc != 1 } {
	puts "this script requires one command line argument: <prom file path>"
	exit
} else {
	set binfile [lindex $argv 0]
	puts $binfile
}
open_hw
connect_hw_server
open_hw_target
current_hw_device [get_hw_devices xc7k160t_0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices xc7k160t_0] 0]
create_hw_cfgmem -hw_device [lindex [get_hw_devices xc7k160t_0] 0] [lindex [get_cfgmem_parts {mt25ql256-spi-x1_x2_x4}] 0]
refresh_hw_device [lindex [get_hw_devices xc7k160t_0] 0]

set_property PROGRAM.ADDRESS_RANGE  {use_file} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.FILES [list $binfile] [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
#set_property PROGRAM.PRM_FILE {$prmfile} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.UNUSED_PIN_TERMINATION {pull-none} [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.BLANK_CHECK  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.ERASE  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.CFG_PROGRAM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.VERIFY  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
#set_property PROGRAM.CHECKSUM  1 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
set_property PROGRAM.CHECKSUM  0 [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
startgroup
if {![string equal [get_property PROGRAM.HW_CFGMEM_TYPE  [lindex [get_hw_devices xc7k160t_0] 0]] [get_property MEM_TYPE [get_property CFGMEM_PART [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]]]] }  { create_hw_bitstream -hw_device [lindex [get_hw_devices xc7k160t_0] 0] [get_property PROGRAM.HW_CFGMEM_BITFILE [ lindex [get_hw_devices xc7k160t_0] 0]]; program_hw_devices [lindex [get_hw_devices xc7k160t_0] 0]; };
program_hw_cfgmem -hw_cfgmem [ get_property PROGRAM.HW_CFGMEM [lindex [get_hw_devices xc7k160t_0] 0]]
