[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

alias vi='vim'

alias adblog='adb logcat -v threadtime'
alias adblogc='adb logcat -C -v threadtime'
alias adbbug='adb bugreport'
alias adbkmsg='adb shell cat /proc/kmsg'
alias adblkmsg='adb shell cat /proc/last_kmsg'

alias cls='clear'

# kill all tmux session
alias alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
