set fish_greeting "( .-.)"

alias ls "ls -G -p"
alias la "ls -a"
alias l "ls -l"
alias ll "ls -l"
alias lla "ll -a"
alias g "git"
# alias vim "nvim"

# BINARIES
set -gx EDITOR nvim
set -gx PATH bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH node_modules/.bin $PATH

# EXA OVERRIDES
alias ll "exa -l"
alias l "exa -l"
alias ls "ll"

