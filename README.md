# Ivan 

## Fix wifi (ubuntu 16.04, xiaomi laptop)
    sudo sh -c 'echo "blacklist acer_wmi" >> /etc/modprobe.d/xiaomi.conf'

##Linux:
    sudo apt-get install -y language-pack-en-base
    sudo apt-get install -y language-pack-zh-hans
    sudo apt-get install -y geany
    sudo apt-get install -y vim
    sudo apt-get install -y exuberant-ctags
    sudo apt-get install -y terminator
    sudo apt-get install -y gitk

## Ubuntu 16.04  Compaile Android ROM
    sudo apt-get install git ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven libssl-dev

## install JDK on ubuntu
    jdk8
    sudo apt-get install openjdk-8-jdk

    jdk7
    sudo add-apt-repository ppa:openjdk-r/ppa
    sudo apt-get update
    sudo apt-get install openjdk-7-jdk


## Update the default Java version - optional
    sudo update-alternatives --config java
    sudo update-alternatives --config javac

    or 

    https://github.com/ivan19871002/dotfiles/blob/master/android_env/jdk.sh

## android repo
    curl https://storage.googleapis.com/git-repo-downloads/repo > /opt/bin/repo
    add /opt/bin into PATH

####Mac:
    curl -LsSf http://github.com/mxcl/homebrew/tarball/master | sudo tar xvz -C/usr/local --strip 1
    brew doctor
    brew install git
    brew install tmux
    brew install autojump
    brew install ruby
    brew tap phinze/cask
    brew install brew-cask
    brew cask install iterm2
    iterm2 settings--> General Command: /usr/local/bin/tmux -u
    brew cask install google-chrome
    brew tap homebrew/dupes
    brew install homebrew/dupes/grep


## git
    git config --global alias.logc "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an, %cd)%Creset' --abbrev-commit --date=short"
    git config --global color.ui auto
    git config --global user.name "Ivan Huang"
    git config --global user.email xxxxx@gmail.com
    git config --global core.editor vim
    git config --global alias.cm "commit -s"
    git config --global alias.cp cherry-pick
    git config --global alias.ck checkout

    git clone git@github.com:ivan19871002/dotfiles.git ~/.dotfiles

## vim
    git clone git@github.com:ivan19871002/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh

## terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec   /usr/bin/terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
	sudo apt-get install -y nautilus-actions-config-tool
	ln -s ~/.dotfiles/terminator/config ~/.config/terminator/config

新建动作“在终端中打开(E)” ，
选中“显示选择右键菜单中的项目”和“Display item in location context menu”。
命令路径中填“/usr/bin/terminator”，参数放空，工作目录填“%d/%b”。

## rvm, ruby 2.2.2
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=2.2.2
    gem sources -a https://ruby.taobao.org/
    gem sources --remove https://rubygems.org/

## tmuxinator
    gem install tmuxinator

## tmux
####Linux:
    wget https://github.com/libevent/libevent/releases/download/release-2.0.22-stable/libevent-2.0.22-stable.tar.gz
    tar vxzf libevent-2.0.22-stable.tar.gz -C ./
    cd libevent-2.0.22-stable
    ./configure --prefix=/usr && make
    sudo make install

    git clone git@github.com:tmux/tmux.git
    cd tmux
    sh autogen.sh
    ./configure --prefix=/usr && make
    sudo make install

####Mac and Linux
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

## zsh
    sudo apt-get install -y zsh
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | ZSH=~/.dotfiles/zsh sh
    chsh -s /bin/zsh
    git clone git://github.com/joelthelion/autojump.git
    cd autojump
    ./install.py

    打开~/.zshrc
    修改插件
    plugins=(git autojump tmux tmuxinator gem terminator rake ruby)
    添加
    source ~/.dotfiles/zsh-config/aliases.zsh
    修改主题
    ln -s ~/.dotfiles/zsh-config/raj.zsh-theme ~/.dotfiles/zsh/themes/raj.zsh-theme
    ZSH_THEME="raj"
    export EDITOR='vim'

## Fonts
    git clone git@github.com:powerline/fonts.git
    cd fonts
    ./install.sh
    终端选项中字体都选择Meslo LG S for Powerline

## github pages
    gem install jekyll
    sudo apt-get install -y nodejs
    git clone git@github.com:ivan19871002/ivan19871002.github.com.git
    cd ivan19871002.github.com
    jekyll serve

## other (ubuntu 14.04 or later)
    sudo apt-get install -y libswitch-perl
    sudo apt-get install -y android-tools-fastboot
    sudo apt-get install -y android-tools-adb
    sudo apt-get install -y pwgen

## adb fastb , Mac OS X
    brew install android-platform-tools
    
## soft
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb

    or

    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable

## SS
   sudo add-apt-repository ppa:hzwhuang/ss-qt5
   sudo apt-get update
   sudo apt-get install shadowsocks-qt5

   or

   sudo apt-get install python-pip
   pip install shadowsocks
   sslocal -c /PATH/shadowsocks.json

## redsocks
    sudo apt-get install redsocks

## ubuntu-mate-desktop
    sudo apt-get install ubuntu-mate-desktop 
    sudo apt-add-repository ppa:ubuntu-mate-dev/xenial-mate
    sudo apt-get update
    sudo apt-get dist-upgrade 

## Input method
    http://pinyin.sogou.com/linux/
    sudo apt-get install fcitx fcitx-libs fcitx-libs-qt libopencc1
    sudo dpkg -i sogoupinyin.deb
    if error
    sudo apt-get remove sogoupinyin
    sudo apt-get install missing-libs
    then install sogoupinyin.deb

## For sogou input
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 8D5A09DC9B929006

## For Chinese
    export LANG=en_US
    xdg-user-dirs-gtk-update
