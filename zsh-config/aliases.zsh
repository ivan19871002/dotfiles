[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
source $HOME/.dotfiles/tmux/tmuxinator.zsh

alias vi='vim'

alias logcat='python ~/.dotfiles/colored-adb-logcat.py'
alias kmsg='adb shell cat /proc/kmsg'
alias lastkmsg='adb shell cat /proc/last_kmsg'

alias cls='clear'

export EDITOR='vim'
# kill all tmux session
alias alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
