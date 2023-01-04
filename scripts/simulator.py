#!/usr/bin/env-python3
import os 
import time

from .verifier import Verifier
from pathlib import Path

class Simulator(Verifier):

    def __init__(self, vivado_path, test_list, project_path):
        super().__init__(vivado_path, project_path)
        self.__script_path = Path(os.path.dirname(os.path.realpath(__file__)))
        self.test_path = self.__script_path.parents[0].joinpath('testbench')
        self.tests = test_list

    def __run_simulation():
        return

    def __find_file(self, dir_path, name, ending):
        for fname in os.listdir(dir_path):
            if name in fname:
                if fname.endswith(ending):
                    self.logger.debug(name + " for " + Path(dir_path).name + " found: " + fname)
                    return fname
                else:
                    self.logger.error(name + " for " + Path(dir_path).name + " has wrong extension (use "+ ending +"), file: " + fname)
                    return 1
        self.logger.error("Could not find " + name + " file for " + Path(dir_path).name + " check README.md for file naming convention")
        return 1 
    
    def __check_files(self, dir_path):

        files = list()
        input_file = self.__find_file(dir_path, "input_data", ".csv")
        if isinstance(input_file, int):
            return 1 
        else:
            files.append(input_file)

        input_file = self.__find_file(dir_path, "output_data", ".csv")
        if isinstance(input_file, int):
            return 1 
        else:
            files.append(input_file)

        input_file = self.__find_file(dir_path, "application_image", ".vhd")
        if isinstance(input_file, int):
            return 1 
        else:
            files.append(input_file)

        input_file = self.__find_file(dir_path, "config", ".txt")
        if isinstance(input_file, str):
            files.append(input_file)
        else:
            self.logger.warning("Could not find config file for " + Path(dir_path).name + ", simulation will run in default settings, check README.md for more informations")

        return files

    def get_script_path(self):
        return self.__script_path

    def simulate_all(self):
        source = self.get_script_path().joinpath('neorv32_test.tcl')
        #self.logger.info(self.tests[1])
        for test in self.tests:
            self.logger.info("Running " + Path(test).name + " test for Neorv32")
            test_files = self.__check_files(test)
            if isinstance(test_files, int):
                self.logger.warning(Path(test).name + " test is not going to be executed due to previous errors!")
                continue
            else:
                self.logger.info("Checked required files for " + Path(test).name + " test")
        
            cmd = [ 
                Path(self.vivado_path),
                '-mode', 'batch',
                '-nojournal', '-nolog',
                '-source', source,
                '-tclargs',
                    '--project_dir', str(self.project_path)+".xpr",
                    '--input_file', Path(test).joinpath(str(test_files[0])),
                    '--output_file', Path(test).joinpath(str(test_files[1])),
                    '--software_file', Path(test).joinpath(str(test_files[2]))
                ]

            if len(test_files) == 4:
                cmd.append('--config_file')
                cmd.append(Path(test).joinpath(str(test_files[3])))

            self.run_command(cmd)

            return

        return 

    def simulate(self):
        source = self.get_script_path().joinpath('neorv32_test.tcl')
        #self.logger.info(self.tests[1])
        self.logger.info("Running " + Path(self.tests).name + " test for Neorv32")
        test_files = self.__check_files(self.tests)
        if isinstance(test_files, int):
            self.logger.warning(Path(self.tests).name + " test is not going to be executed due to previous errors!")
            return
        else:
            self.logger.info("Checked required files for " + Path(self.tests).name + " test")
    
        cmd = [ 
            Path(self.vivado_path),
            '-mode', 'batch',
            '-nojournal', '-nolog',
            '-source', source,
            '-tclargs',
                '--project_dir', str(self.project_path)+".xpr",
                '--input_file', Path(self.tests).joinpath(str(test_files[0])),
                '--output_file', Path(self.tests).joinpath(str(test_files[1])),
                '--software_file', Path(self.tests).joinpath(str(test_files[2]))
            ]

        if len(test_files) == 4:
            cmd.append('--config_file')
            cmd.append(Path(self.tests).joinpath(str(test_files[3])))

        self.run_command(cmd)

        return

