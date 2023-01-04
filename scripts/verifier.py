#!/usr/bin/env-python3

import os
import subprocess
import logging

class Verifier:

    def __init__(self, vivado_path, project_path = ""):
        self.logger = logging.getLogger()
        self.vivado_path = vivado_path
        self.project_path = project_path

    def run_command(self, cmd):
        self.logger.info(f"Running command: {cmd}")

        with subprocess.Popen(cmd, universal_newlines=True, 
                            stdin = subprocess.PIPE, 
                            stdout = subprocess.PIPE) as proc:
            for line in proc.stdout:
                print(line, end='')

        proc.wait()
        return