#!/usr/bin/env python3
import logging
import sys
import os
import argparse
from pathlib import Path
import platform
import shutil

from scripts.logger import setup_logging
from scripts.generator import Generator
from scripts.simulator import Simulator

def dir_path(path):
    if os.path.isdir(path):
        return path
    else:
        raise argparse.ArgumentTypeError(f"readable_dir: {path} is not a valid path")

def target_path(path):
    if os.path.isdir(path):
        return path
    else:
        logging.warning("Target folder for project generation does not exest! Creating...")

def get_test_list():
    test_path = Path(os.path.dirname(os.path.realpath(__file__))).joinpath('testbench').joinpath('test_files')
    test_list = list()
    for root, dirs, files in os.walk(test_path, topdown=False):
        for name in dirs:
            test_list.append(test_path.joinpath(name))
    return test_list

def parse_arguments():
    logging.debug("Parsing input arguments")
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("-gp", "--generate_project", action='store_true',
                        help="Generate Vivado project.")
    group.add_argument("-pp", "--project_path", metavar='PATH', type=Path,
                        help="Path to Noerv32 Vivado project.")
    parser.add_argument('-vp','--vivado_path', metavar='PATH', type=dir_path, required=True,
                        help="Path to Vivado install directory.")
    parser.add_argument('-s','--simulate', metavar='PATH', type=dir_path,
                        help="Path to simulated firmware.")
    parser.add_argument("-v", "--verbosity", type=int, choices=[0, 1, 2], default=1,
                        help="Increase output verbosity")
    args = parser.parse_args()
    logging.debug("Finished argument parsing")
    logging.debug("Verbosity: " + str(args.verbosity))

    #Get OS
    if platform.system().lower() == "windows":
        vivado = 'vivado.bat'
    elif platform.system().lower() == "linux":
        vivado = "vivado"

    args.vivado_path=Path(args.vivado_path).joinpath("bin").joinpath(vivado)
    logging.debug("Path to Vivado: " + str(args.vivado_path))

    return args

def main():
    #Setup Logger
    script_name = os.path.splitext(os.path.basename(sys.argv[0]))[0]
    if (not setup_logging(logfile_file=script_name + ".log")):
        print("Failed to setup logging, aborting.")
        return 1
    
    #Parse arguemnts
    args = parse_arguments()

    #Create Simulator class
    sim = Simulator(args.vivado_path, None, None)

    #Generate project
    if (args.generate_project):
        gen = Generator(args.vivado_path)
        gen.build()
        sim.project_path = gen.project_path
    else:
        sim.project_path = args.project_path

    if (args.simulate):
        #sim = Simulator(args.vivado_path, args.simulate)
        sim.tests = args.simulate
        sim.simulate()
    else:
        #Get test files
        #test_list = get_test_list()
        #sim = Simulator(args.vivado_path, test_list, gen.project_path)
        sim.tests = get_test_list()
        sim.simulate_all()

    return 0

# Call main function///..
if (__name__ == "__main__"):
    sys.exit(main())