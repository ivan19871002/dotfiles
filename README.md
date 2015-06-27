# Ivan 

    sudo apt-get install -y language-pack-en-base
    sudo apt-get install -y language-pack-zh-hans
    sudo apt-get install -y geany
    sudo apt-get install -y vim
    sudo apt-get install -y exuberant-ctags
    sudo apt-get install -y terminator

    sudo apt-get install openjdk-7-jdk
    sudo apt-get install bison g++-multilib git gperf libxml2-utils make python-networkx zlib1g-dev:i386 zip

## vim
	sh ~/.dotfiles/vimrc/install_awesome_vimrc.sh

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

## terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec   /usr/bin/terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
	sudo apt-get install -y nautilus-actions-config-tool
	ln -s ~/.dotfiles/terminator/config ~/.config/terminator/config

新建动作“在终端中打开(E)” ，
选中“显示选择右键菜单中的项目”和“Display item in location context menu”。
命令路径中填“/usr/bin/terminator”，参数放空，工作目录填“%d/%b”。

## tmux
    wget http://cznic.dl.sourceforge.net/project/levent/libevent/libevent-2.0/libevent-2.0.22-stable.tar.gz
    tar vxzf libevent-2.0.22-stable.tar.gz -C ./
    cd libevent-2.0.22-stable
    ./configure --prefix=/usr && make
    sudo make install

    git clone git@github.com:tmux/tmux.git
    cd tmux
    sh autogen.sh
    ./configure --prefix=/usr && make
    sudo make install
    ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

## zsh
	sudo apt-get install -y zsh
	ZSH=~/.dotfiles/zsh
	sh ~/.dotfiles/zsh/tools/install.sh
	chsh -s /bin/zsh
	git clone git://github.com/joelthelion/autojump.git
	cd autojump
	./install.py

打开~/.zshrc
	修改插件
	plugins=(git autojump)
	source ~/.dotfiles/zsh-config/aliases.zsh
	修改主题
	ln -s ~/.dotfiles/zsh/raj.zsh-theme ~/.dotfiles/zsh/themes/raj.zsh-theme
	ZSH_THEME="raj"
	export EDITOR='vim'

## rvm, ruby 2.2.2, jekyll
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=2.2.2
    gem sources -a https://ruby.taobao.org/
    gem sources --remove https://rubygems.org/

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
    
## soft
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb

    or

    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get update
    sudo apt-get install google-chrome
