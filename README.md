# Ivan 

## Fix wifi (ubuntu 16.04, xiaomi laptop)
    sudo sh -c 'echo "blacklist acer_wmi" >> /etc/modprobe.d/xiaomi.conf'

## soft
#### Linux
    sudo apt-get install language-pack-en-base language-pack-zh-hans \
    geany vim exuberant-ctags terminator gitk libevent-dev tmux unzip git \
    zip curl unrar zsh exfat-fuse exfat-utils

#### Mac:
    curl -LsSf http://github.com/mxcl/homebrew/tarball/master | sudo tar xvz -C/usr/local --strip 1
    brew doctor
    brew install git
    brew install tmux
    brew install autojump
    brew tap phinze/cask
    brew install brew-cask
    brew cask install iterm2
    iterm2 settings--> General Command: /usr/local/bin/tmux -u
    brew cask install google-chrome
    brew tap homebrew/dupes
    brew install homebrew/dupes/grep
    brew install lsusb
    brew install minicom
    brew install vscode
    brew install unrar
    brew install python
    brew install pip
    brew install p7zip

## Ubuntu  Compaile Android ROM
    sudo apt-get install ccache automake flex lzop bison \
    gperf build-essential zlib1g-dev zlib1g-dev:i386 \
    g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev \
    libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush \
    schedtool dpkg-dev liblz4-tool make optipng maven libssl-dev \
    pwgen libswitch-perl policycoreutils minicom libxml-sax-base-perl \
    libxml-simple-perl bc libc6-dev-i386 lib32ncurses5-dev \
    x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev xsltproc uuid-dev

## Android USB
    sudo cp ~/.dotfiles/android_env/usbconfig/51-android.rules /etc/udev/rules.d/
    sudo cp ~/.dotfiles/android_env/usbconfig/70-android.rules /etc/udev/rules.d/

## Android repo
    curl https://storage.googleapis.com/git-repo-downloads/repo > /opt/bin/repo
    add /opt/bin into PATH

## Git
    git config --global alias.logc "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an, %cd)%Creset' --abbrev-commit --date=short"
    git config --global color.ui auto
    git config --global user.name "Ivan Huang"
    git config --global user.email xxxxx@gmail.com
    git config --global core.editor vim
    git config --global alias.cm "commit -s"
    git config --global alias.cp cherry-pick
    git config --global alias.ck checkout

    git clone git@github.com:ivan19871002/dotfiles.git ~/.dotfiles

## Vim
    git clone git@github.com:ivan19871002/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

## Terminator
    gsettings set org.gnome.desktop.default-applications.terminal exec   /usr/bin/terminator
    gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
    ln -s ~/.dotfiles/terminator/config ~/.config/terminator/config

## Fonts
    git clone git@github.com:powerline/fonts.git
    cd fonts
    ./install.sh

## Tmux
#### Mac and Linux
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

## Python
    mkdir -p ~/.pip
    ln -s ~/.dotfiles/python/pip.conf ~/.pip/pip.conf

## Minicom
    sudo cp ~/.dotfiles/minicom/70-ttyusb.rules /etc/udev/rules.d/

## Zsh
    curl -L https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | ZSH=~/.dotfiles/zsh sh
    chsh -s /bin/zsh

    git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.dotfiles/zsh/custom/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.dotfiles/zsh/custom/plugins/zsh-autosuggestions
    git clone git://github.com/wting/autojump.git
    cd autojump
    ./install.py

    vim ~/.zshrc
    plugins=(
      git
      colored-man-pages
      tmux
      catimg
      extract
      audojump
      z
      command-not-found
      history-substring-search
      zsh-autosuggestions
      zsh-syntax-highlighting
    )
    source $HOME/.dotfiles/zsh-config/aliases.zsh

## Google Chrome
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    or
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable

## v2ray
    https://github.com/v2ray/v2ray-core/releases
    https://www.v2ray.com/chapter_00/install.html

## Input method
    http://pinyin.sogou.com/linux/
    sudo apt-get install fcitx fcitx-libs fcitx-libs-qt libopencc1
    sudo dpkg -i sogoupinyin.deb
    if error
    sudo apt-get remove sogoupinyin
    sudo apt-get install missing-libs
    then install sogoupinyin.deb

    or google pinyin
    sudo apt-get install fcitx-googlepinyin

## For sogou input
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8D5A09DC9B929006

## For Chinese
    export LANG=en_US
    xdg-user-dirs-gtk-update

## For smba
    sudo apt-get install nfs-common cifs-utils
    example:
    sudo mount -t cifs //www.xxxx.com/ftp /data/ftp -o username=anonymous,password='',uid=1000,gid=1000
    sudo mount -t cifs //www.xxxx.com/ftp /data/ftp -o username=yourname,password=yourpassword,uid=1000,gid=1000
## For time
    sudo apt-get install ntpdate
    sudo ntpdate time.windows.com
    sudo hwclock --localtime --systohc

