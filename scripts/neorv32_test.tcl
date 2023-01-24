if {$::argc > 0} {
  for {set i 0} {$i < $argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
        "--project_dir" { incr i; set project_dir [lindex $::argv $i]}
        "--input_file" { incr i; set input_file [lindex $::argv $i]}
        "--output_file" { incr i; set output_file [lindex $::argv $i]}
        "--software_file" { incr i; set software_file [lindex $::argv $i]}
        "--config_file" { incr i; set config_file [lindex $::argv $i]}
    }
  }
}


if {[info exists config_file]} {
    #  Slurp up the data file
    if { [catch {set fp [open $config_file r]}] } {
        # Oppening failed
        puts "# ERROR: File $config_file couldn't be open !"
        return $config_file
    }
    set file_data [read $fp]
    close $fp

    # Parsing config file
    set data [split $file_data "\n"]
  
    set i 0
    foreach line $data {
            switch $i {
                0 { 
                    set simulation_time [lindex $line]
                }

                1 {
                    set PWM_filter_en [lindex $line] 
                }
                default {
                   puts "# WARNIGN: Too many parameters in config file, some of them won't be used !" 
                }
            }
             incr i
        }
} else {
    set simulation_time "100ms"
    set PWM_filter_en 0
}

if { $i < 2} {
    puts "# WARNING: Missing parameters in config file, using default configuration !"   
    set simulation_time "100ms"
    set PWM_filter_en 0
} 

set script_path [ file dirname [ file normalize [ info script ] ] ]

open_project $project_dir

if {$software_file != ""} {
    file copy -force $software_file "$script_path/../neorv32/rtl/core/"
}

# Set in/out files 
set_property generic [list input_file=$input_file output_file=$output_file PWM_filter=$PWM_filter_en sim_time=$simulation_time] [get_filesets sim_1]

# Run simulation
## TODO: if is simulation already running -> close it
#launch_simulation -simset [get_filesets sim_1]
if { [catch {launch_simulation -simset [get_filesets sim_1]}] } {
    # Launching simulation failed, already launched
    puts "# WARNIGN: Launching simulation failed, already running"
    close_sim -force
    launch_simulation -simset [get_filesets sim_1]
}
run 1000 ms


