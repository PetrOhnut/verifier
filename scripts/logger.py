import logging
import sys

# Logging formatter supporting colorized output
class LogFormatter(logging.Formatter):

    COLOR_CODES = {
        logging.CRITICAL: "\033[1;35m", # bright/bold magenta
        logging.ERROR:    "\033[1;31m", # bright/bold red
        logging.WARNING:  "\033[1;33m", # bright/bold yellow
        logging.INFO:     "\033[0;37m", # white / light gray
        logging.DEBUG:    "\033[1;30m"  # bright/bold black / dark gray
    }

    RESET_CODE = "\033[0m"

    def __init__(self, color, *args, **kwargs):
        super(LogFormatter, self).__init__(*args, **kwargs)
        self.color = color

    def format(self, record, *args, **kwargs):
        if (self.color == True and record.levelno in self.COLOR_CODES):
            record.color_on  = self.COLOR_CODES[record.levelno]
            record.color_off = self.RESET_CODE
        else:
            record.color_on  = ""
            record.color_off = ""
        return super(LogFormatter, self).format(record, *args, **kwargs)

# Setup logging
def setup_logging(logfile_file):

    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    console_log_output = sys.stdout
    console_handler = logging.StreamHandler(console_log_output)
    console_handler.setLevel("DEBUG") # only accepts uppercase level namesse
    console_formatter = LogFormatter(fmt="%(color_on)s[%(created)d] [%(threadName)s] [%(levelname)-8s] %(message)s%(color_off)s", color=True)
    console_handler.setFormatter(console_formatter)
    logger.addHandler(console_handler)

    # Create log file handler
    try:
        logfile_handler = logging.FileHandler(logfile_file)
    except Exception as exception:
        print("Failed to set up log file: %s" % str(exception))
        return False
    
    logfile_handler.setLevel("DEBUG") # only accepts uppercase level names
    logfile_formatter = LogFormatter(fmt="%(color_on)s[%(created)d] [%(threadName)s] [%(levelname)-8s] %(message)s%(color_off)s", color=False)
    logfile_handler.setFormatter(logfile_formatter)
    logger.addHandler(logfile_handler)

    # Success
    return logger