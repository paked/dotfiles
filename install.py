import argparse
import os
import shutil
import stat

PROGRAMS = {'i3': ['.i3'], 'vim': ['.vimrc', '.vim'], 'zsh': ['.zprofile', '.zshrc']}
YES_ANSWERS = ['yes', 'YES', 'y', 'Y']
DESTINATION = os.environ["HOME"]

def install(name):
    if not name in PROGRAMS:
        return
    print("Installing: ", name)
    program = PROGRAMS[name]
    
    for config in program:
        start_path = os.path.abspath(config)
        end_path = DESTINATION + config
        if os.path.exists(end_path):
            _move(end_path, end_path, extra=".old")
        _copy(start_path, end_path)

def _move(start, end, extra=""):
    start_path = start
    end_path = end + extra
    shutil.move(start_path, end_path)

def _copy(start, end, extra=""):
    start_path = start + extra
    end_path = end + extra

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
    parser.add_argument('-p',
                        '--permanent',
                        help='Whether to permanently make the changes to your $HOME dir')
    args = parser.parse_args()
    
    if not args.permanent:
        print("Files being installed in a test directory.")
        DESTINATION = os.path.abspath('test')
    else: 
        answer = input("Location of files to be installed {}/, continue?: ".format(DESTINATION))
        if answer not in YES_ANSWERS:
            print("Terminated configuration.")
            exit

    DESTINATION += "/"

    if len(args.update) == 0:
        for program in PROGRAMS:
            install(program)
    else:
        for program in args.update:
            install(program)

    print("dotfiles installed.")
