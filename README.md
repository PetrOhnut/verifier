# !!!!! NOT UP TO DATE !!!!!!!
# NEORV32 Xilinx Vivado Example testbench setup
## Prerequisites:

- Vivado 2021.2 installed
- digilent Arty-A7 "axc7a35ticsg324-1L" downloaded if there is a need to implement NEORV32 on FPGA

## How To Run

The `create_project.tcl` TCL script in the board subdirectories can be used for creating a complete Vivado project.
If not already available, this script will create a `project` folder in those subdirectories.

Note that you may need to install support for your particular development board through "XHub Stores" menu item within Vivado prior to sourcing the `create_project.tcl` script.

### Creating project

1. start Vivado (in GUI mode)
2. click on "TCL Console" at the bottom
3. use the console to navigate to this folder `cd .../testbench/`, where `create_project.tcl` scripts is located (use `"/"` instead off `"\"` in windows).
4. execute `source create_project.tcl` - this will create the actual Vivado project in `project` folder. 
5. when the Vivado project has openend, you can continue with testing ... [Running test]

### Running test

1. Make sure that you correctly created the project using `create_project.tcl` script and no simulation is already running, if so close it. 
2. click on "TCL Console" at the bottom
3. use the console to navigate to this folder `cd .../testbench/`, where `neorv32_test.tcl` scripts is located (use "/" instead off "\" in windows).
4. edit full paths in example configuration text file `config.txt` with a given structure located in `.../testbench/test_files/example_subfolder/config.txt`.

Configuration file structure:

	<instruction_code_file.vhd>   
	<input_file.csv>
	<output_file.csv>
	<time_of_simulation_in_ns_or_specified_time_unit/all>
	<PWM_filter_enable(0;1)>

Example of configuration file:

	.../test_files/hello_world/neorv32_application_image.vhd
	.../test_files/hello_world/input_data.csv
	.../test_files/hello_world/output_data.csv
	1 ms
	0

5. use commands `set argv <path_to_config_file>` and `set argc 1` to set path to configuration file. You can use prepared file in subfolders `.../testbench/test_files/example_subfolder/config.txt`. 

Example:

	set argv ./test_files/hello_world/config.txt
	set argc 1

6. execute `source neorv32_test.tcl` with specified parameters - this will run the simulation in Vivado3