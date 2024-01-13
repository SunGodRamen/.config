# .config Directory README

### Overview
This repository contains a comprehensive set of configuration files and scripts designed to streamline the setup and usage of various tools and environments including Ubuntu, Termux, Windows, and more.

## Setup Instructions
To set up these configurations on your system, follow these steps:

### Clone the Repository:
Clone this repository into your home directory so that the path $HOME/.config is created with all the files and directories.

### Initialize submodules
Recursively update the submodules such as oh my zsh and VimPlug.
```
git submodule update --init --recursive
```

### Initialize Configurations:
Add the following line to your shell's initialization file (.bashrc, .zshrc, etc.):
```
source `/.config/init-config
```

### Update new config content
Copy the content of your existing dotfiles to the new locations in the config to reduce clutter.

# Structure
The .config directory is organized into several subdirectories, each serving a specific purpose:
    .config
    ├── alias:
    │   Contains alias configurations.
    ├── apps:
    │   Contains application-specific settings.
    ├── bin:
    │   Contains scripts and programs.
    ├── paths:
    │   Contains path aliases.
    └── init:
        A script to export the CONFIG environment variable.

## Operating Systems
The os-type script determines the operating system the config is running on and currently recognizes the following systems:
- UBUNTU
- DARWIN (MacOS)
- WINDOWS (Cygwin|Git Bash)
- ANDROID (Termux)

Configuration options can be set on a per system basis by adding them to a file with the OS name to the os-config directories.

## Include App Configs
App configurations are included on a per operating system basis. Apps are excluded by default and included by defining the proper app variables in the os config in the apps/os-config directory.