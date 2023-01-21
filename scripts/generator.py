#!/usr/bin/env-python3
import platform
from .verifier import Verifier
from pathlib import Path
import os
import sys


class Generator(Verifier):

    def __init__(self, vivado_path):
        super().__init__(vivado_path)
        self.__script_path = Path(os.path.dirname(os.path.realpath(__file__)))

    def build(self):
        self.__generate_project()

    def __generate_project(self):
        self.logger.debug("Vivado path: " + str(self.vivado_path))
        self.logger.info("Generating Vivado project for Neorv32 testing...")

        soucre = self.__script_path.joinpath('create_project.tcl')
        self.project_path = Path(os.getcwd()).joinpath('vivado')
        project_name = self.project_path.joinpath('neorv32_verify')

        cmd = [ 
            self.vivado_path,
            '-mode', 'batch',
            '-nojournal', '-nolog',
            '-source', soucre,
            '-tclargs',
                '--project_dir', project_name
            ]

        self.run_command(cmd)
        return