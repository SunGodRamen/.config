# .config Directory README

### Overview
This repository contains a comprehensive set of configuration files and scripts designed to streamline the setup and usage of various tools and environments including Ubuntu, Termux, Windows, and more. With 1164 directories and 3414 files, it offers a robust framework for managing a wide range of applications and settings.

### Structure
The .config directory is organized into several subdirectories, each serving a specific purpose:
- alias/: Contains aliases based on operating system and enabled apps.
- apps/: Hosts application-specific settings and installation of apps based on operating system.
- paths/: Path configurations for different environments.
- bash/: Includes bashrc for Bash shell configurations.
- bin/: Contains scripts and programs.
- init-config: Entry point to the configuration scripts.
- nvim/: Configuration files for Neovim, including files for plugins, key mappings, and general settings.
- oh-my-zsh/: Custom configurations for Oh My Zsh, including themes and plugins.
- os-config: Script to determine current operating system.

- zsh/: Contains zshrc for Zsh configurations.

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
source ~/.config/init-config
```

This will set the CONFIG environment variable and source the init-config script, which in turn loads various configurations such as paths, app settings, and aliases.

### Customize as Needed:
Feel free to modify or extend any configurations according to your personal preferences or requirements.

### Note
Some configurations are specific to certain operating systems or environments. Ensure that you're using the relevant configurations for your setup.
It's recommended to backup your current configurations before applying these settings.