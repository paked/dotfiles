import argparse
import os
import shutil
import stat

programs = {'i3': ['.i3'], 'vim': ['.vimrc', '.vim']}

DESTINATION = os.environ["HOME"] + "/dotfilestest/"

def install(name):
    if not name in programs:
        return
    program = programs[name]
    
    for config in program:
        start_path = os.path.abspath(config)
        end_path = DESTINATION + config

        if os.path.isdir(start_path):
            shutil.copytree(start_path, end_path)    
        else:
            shutil.copy(start_path, end_path)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-u',
                        '--update',
                        nargs='*',
                        help='What you want to install, blank for all',
                        required=True)
    args = parser.parse_args()
    if args.update:
        if len(args.update) == 0:
            for program in programs:
                install(program)
        else:
            for program in args.update:
                install(program)
        
    print(parser.parse_args().update)
