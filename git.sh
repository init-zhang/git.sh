alias g='git'
alias gs='g status'
alias ga='g add'
alias gaa='g add .'
alias gl='g log --oneline'
alias gp='g pull'
alias gpu='g push'
alias gb='g branch'
alias gch='g checkout'
alias gr='g remote'
alias gd='g diff'
alias gca='g commit --amend'

function gc() {
    if [ -z "$*" ]; then
        g commit
    else
        g commit -m "$*"
    fi
}

# Format: git@github.com:init-zhang/git.sh.git
function gcl() {
    if [ -z $2 ]; then
        g clone git@github.com:init-zhang/$1.git
    else
        g clone git@github.com:$1/$2.git
    fi
}

function gcg() {
    grep-select "$1" "$(gb | cut -c 3-)" "gch"
}

alias edit-g="vim ${BASH_SOURCE}"
