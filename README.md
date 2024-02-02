# Anthony's Dotfiles
This repo contains my personal dotfiles and configurations for my personal systems.
It uses stow to symlink the directory and files to the original location while being
able to manage the dotfiles efficiently. For reference a video [Dotfiles Stow](https://www.youtube.com/watch?v=y6XCebnB9gs)

## Usage
To use the repo clone the repo into the `$HOME` directory then enter the directory
and execute the command `stow --adopt .`. This will create all the required simlinks
in the parent directory allowing for easy transfer and setup of configs.

## Mac Version
The main branch contains the dotfiles for my personal MacOS setup and is slightly
different to my linux setup.

### Important Plugins and Tools
This is a list of important plugins and tools that are used and some are required
to be installed when using the configs to allow for proper functionality.

- tpm (Tmux plugin manager)
- fd (Rust Find rewrite)
- fzf (Fuzzy Finder)
- zsh (Shell)
- oh-my-zsh (Shell customizations and plugins)
- dust (File size tool)
- nvim (Vim Editor)
- packman (Nvim package manager)
- alacritty (Terminal Emulator)
- Tmux (Terminal Multiplexer)
- Nerd Font (Terminal Font)
- lazygit (Terminal git manager)

## Linux Version
The second branch `linux` contains all the configurations required for my personal
Arch linux setup.

### Important Plugins and Tools
This is a list of important plugins and tools that are used and some are required
to be installed when using the configs to allow for proper functionality. All the 
previous plugins are still required with a few extra.

- rofi (Spotlight Search)
- polybar (Upgraded status bar)
- i3 (Window Manager)
- btop (System Monitoring)
- Thunar (File manager)
