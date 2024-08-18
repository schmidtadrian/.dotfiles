fish_vi_key_bindings

abbr s 'sudo'
abbr ss 'sudo systemctl'

abbr g 'git'
abbr ga 'git add'
abbr gc 'git commit -m'
abbr gs 'git status'
abbr gw 'git worktree'
abbr uni '~/Documents/uni/'

abbr p 'ping'
abbr ns 'nslookup'

# See tmux.conf, required for correct colors
alias tmux="export TERM=xterm-256color; /usr/bin/tmux"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fzf --fish | source
