

# Create and clear output directori
if {$::argc > 0} {
  for {set i 0} {$i < $argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--project_dir" { incr i; set project_dir [lindex $::argv $i]}
    }
  }
}
set board "arty-a7-35"
file mkdir $project_dir

set script_path [ file dirname [ file normalize [ info script ] ] ]

switch $board {
  "arty-a7-35" {
    set a7part "xc7a35ticsg324-1L"
    set a7prj ${board}-test-setup
  }
}

# Create project
create_project -part $a7part -force $project_dir

#set_property board_part digilentinc.com:${board}:part0:1.0 [current_project]
if { [catch {set_property board_part digilentinc.com:${board}:part0:1.0 [current_project]}] } {
    # Setting board failed
    puts "# ERROR: board_part couldn't be set, please install board_part using: Tools->Vivado Store...->Digilent Inc->Single Part->Arty A7-35->Install..."
}
set_property target_language VHDL [current_project]

# Define filesets

## Core: NEORV32
add_files -norecurse [glob "$script_path/../neorv32/rtl/core/*.vhd"] 
add_files -norecurse "$script_path/../neorv32/rtl/core/mem/neorv32_dmem.default.vhd"
add_files -norecurse "$script_path/../neorv32/rtl/core/mem/neorv32_imem.default.vhd"
set_property library neorv32 [get_files [glob "$script_path/../neorv32/rtl/core/*.vhd"]]
set_property library neorv32 [get_files [glob "$script_path/../neorv32/rtl/core/mem/neorv32_*mem.default.vhd"]]

## Design: processor subsystem template, and (optionally) BoardTop and/or other additional sources
set fileset_design "$script_path/../neorv32/rtl/test_setups/neorv32_test_setup_bootloader.vhd"

## Constraints
set fileset_constraints [glob "$script_path/../neorv32/setups/vivado/arty-a7-test-setup/*.xdc"]

## Simulation-only sources
set fileset_sim "$script_path/../testbench/neorv32_tb.sv"

# Add source files

## Design
add_files $fileset_design

## Constraints
add_files -fileset constrs_1 $fileset_constraints

## Simulation-only
add_files -fileset sim_1 $fileset_sim

set_property top neorv32_test_setup_bootloader [current_fileset]
set_property top neorv32_tb [get_filesets sim_1]
set_property -name {xsim.simulate.runtime} -value {0} -objects [get_filesets sim_1]

# Run synthesis
#launch_runs synth_1 -jobs 4
#wait_on_run synth_1

