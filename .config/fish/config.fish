if status is-interactive
# Commands to run in interactive sessions can go here
# # Add this line to your .bashrc or a shell script.
source "/home/portocala2/.cache/wal/colors.fish"

set tide_pwd_color_anchors $color4 && set tide_pwd_color_dirs $color4 && set tide_character_color $color4 && set tide_os_color $color4 && set tide_time_color $color4 && set tide_cmd_duration_color $color4
neofetch
set fish_greeting
end
alias inst="sudo pacman -S"
alias up="sudo pacman -Syu"
alias del="sudo pacman -R"
alias clean="sudo pacman -Scc && yay -Scc"
alias c="clear && neofetch"
alias tidecolor="set tide_pwd_color_anchors $ct && set tide_pwd_color_dirs $ct && set tide_character_color $ct&& set tide_os_color $ct && set tide_time_color $ct && set tide_cmd_duration_color $ct"
alias clean2="sudo pacman -Rns $(pacman -Qtdq)"
export PATH="$HOME/.local/bin:$PATH"
