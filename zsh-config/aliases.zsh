if [[ `uname` == 'Darwin' ]]; then
    [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

    export CLICOLOR=1
    export LSCOLORS=gxfxaxdxcxegedabagacad
    export PATH="$(brew --prefix sqlite)/bin:$(brew --prefix grep)/bin:$PATH"

    alias grep='grep --color=auto'
else
    [[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
    [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
fi

#source $HOME/.dotfiles/tmux/tmuxinator.zsh
source $HOME/.dotfiles/zsh-config/fbi.sh

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/opt/bin"

alias vi='vim'

alias logcat='python ~/.dotfiles/colored-adb-logcat.py'
alias kmsg='adb shell cat /proc/kmsg'
alias lastkmsg='adb shell cat /proc/last_kmsg'

alias cls='clear'
alias ll='ls -l'
alias la='ls -la'

export EDITOR='vim'
# kill all tmux session
alias alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
