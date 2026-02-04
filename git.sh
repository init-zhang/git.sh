alias g='git'
alias gs='g status'
alias ga='g add'
alias gl='g log --oneline'
alias gpl='g pull'
alias gpu='g push'
alias gb='g branch'
alias gch='g checkout'

function gc() {
    g commit -m "$*"
}
