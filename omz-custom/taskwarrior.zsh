#!/usr/bin/env  zsh
export TASKRC=~/.config/taskwarrior/.taskrc

function taskp() {
    if [ -f "$(pwd)/.task/.taskrc" ]; then
        task rc:$(pwd)/.taskrc "$@"
    else
        task "$@"
    fi
}

#   Create a custom .taskrc file in your project directory:
#       touch /path/to/your/project/.task/.taskrc
#   Edit the custom .taskrc file and add the following lines:
#       data.location=/path/to/your/project/.task
#       hooks.location=/path/to/your/project/.task/hooks
