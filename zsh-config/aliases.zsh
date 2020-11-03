if [[ `uname` == 'Darwin' ]]; then
    export CLICOLOR=1
    export LSCOLORS=gxfxaxdxcxegedabagacad
    export PATH="$(brew --prefix sqlite)/bin:$(brew --prefix grep)/bin:$HOME/.dotfiles/android_env/android-platform-tools/darwin:$HOME/.dotfiles/android_env/bin/darwin:$PATH"
    alias grep='grep --color=auto'
else
    export PATH="$HOME/.dotfiles/android_env/bin/linux:$HOME/.dotfiles/android_env/android-platform-tools/linux:$PATH"
fi

export PATH="/opt/bin:$HOME/bin:$HOME/.dotfiles/android_env/bin:$PATH"

alias reposync='repo sync -j4 -c --no-tags --no-clone-bundle'
alias findm="grep -rnws --include='*.[mb][kp]' 'LOCAL_MODULE\|LOCAL_PACKAGE_NAME\|name:'"

alias vi='vim'
export EDITOR='vim'

# kill all tmux session
#source $HOME/.dotfiles/tmux/tmuxinator.zsh
alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
alias rlusb="sudo modprobe -r usbhid && sudo modprobe usbhid"

# minicom
#alias uartlog="sudo minicom -c on -C uart-log-$(date +%Y-%m-%d_%H:%M:%S).log"
source $HOME/.dotfiles/minicom/myminicom.sh
