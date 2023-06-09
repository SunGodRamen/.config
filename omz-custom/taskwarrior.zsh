#!/usr/bin/env  zsh

function taskp() {
    if [ -f "$(pwd)/.taskrc" ]; then
        task rc:$(pwd)/.taskrc "$@"
    else
        export TASKRC=~/.config/taskwarrior/.taskrc
        task "$@"
    fi
}

#   Create a custom .taskrc file in your project directory:
#       touch /path/to/your/project/.task/.taskrc
#   Edit the custom .taskrc file and add the following lines:
#       data.location=/path/to/your/project/.task
#       hooks.location=/path/to/your/project/.task/hooks
