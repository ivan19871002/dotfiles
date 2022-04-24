if [[ `uname` == 'Darwin' ]]; then
    export CLICOLOR=1
    export LSCOLORS=gxfxaxdxcxegedabagacad
    export PATH="$(brew --prefix openjdk)/bin:$(brew --prefix sqlite)/bin:$(brew --prefix grep)/bin:$HOME/.dotfiles/android_env/android-platform-tools/darwin:$HOME/.dotfiles/android_env/bin/darwin:$PATH"
    alias grep='grep --color=auto'
    ulimit -S -n 2048
    alias pip=/usr/local/bin/pip3
    alias python=/usr/local/bin/python3
    alias wx="nohup /Applications/WeChat.app/Contents/MacOS/WeChat > /dev/null 2>&1 &"
    export PATH="/usr/local/opt/openjdk/bin:$PATH"
else
    export PATH="$HOME/.dotfiles/android_env/bin/linux:$HOME/.dotfiles/android_env/android-platform-tools/linux:$PATH"
fi

export PATH="$HOME/.local/bin:/opt/bin:$HOME/bin:$HOME/.dotfiles/android_env/bin:$PATH"

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
export REPO_URL="https://mirrors.tuna.tsinghua.edu.cn/git/git-repo"
