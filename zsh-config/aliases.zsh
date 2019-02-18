if [[ `uname` == 'Darwin' ]]; then
    [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

    export CLICOLOR=1
    export LSCOLORS=gxfxaxdxcxegedabagacad
    export PATH="$(brew --prefix sqlite)/bin:$(brew --prefix grep)/bin:$PATH"

    alias grep='grep --color=auto'
else
    [[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh
    [[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
    if [ `uname -r | grep ARCH` ]; then
        source $HOME/.dotfiles/android_env/android_env.sh
        source $HOME/.dotfiles/android_env/init.sh
    fi
source $HOME/.dotfiles/android_env/jdk.sh

fi

#source $HOME/.dotfiles/tmux/tmuxinator.zsh

export PATH="$PATH:$HOME/bin:$HOME/.dotfiles/android_env/bin"
export PATH="$PATH:/opt/bin"
export PATH="$PATH:/work/bin:/work/bin/adb_tool:/work/bin/minidump:/work/bin/mkboot"

alias reposync='repo sync -j$(nproc) --force-sync -c -f --no-tags --no-clone-bundle'

alias vi='vim'

alias cls='clear'
alias ll='ls -l'
alias la='ls -la'

export EDITOR='vim'
# kill all tmux session
alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
alias rlusb="sudo modprobe -r usbhid && sudo modprobe usbhid"

# minicom
alias uartlog="sudo minicom -c on -C uart-log-$(date +%Y-%m-%d_%H:%M:%S).log"
