if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

fish_add_path ~/.local/bin

zoxide init --cmd cd fish | source

thefuck --alias | source

# opam configuration
source /home/leo/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

fish_add_path /home/leo/.spicetify
abbr --add dotfiles "/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
