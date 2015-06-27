# Ivan 

    sudo apt-get install -y language-pack-en-base
    sudo apt-get install -y language-pack-zh-hans
    sudo apt-get install -y git
    sudo apt-get install -y vim
    sudo apt-get install -y exuberant-ctags
    git clone git@github.com:ivan19871002/dotfiles.git ~/.dotfiles

## git
    git config --global alias.logc "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an, %cd)%Creset' --abbrev-commit --date=short"
    git config --global color.ui auto
    git config --global user.name "Ivan Huang"
    git config --global user.email xxxxx@gmail.com
    git config --global core.editor vim
    git config --global alias.cm "commit -s"
    git config --global alias.cp cherry-pick
    git config --global alias.ck checkout

## terminator
	sudo apt-get install -y terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec   /usr/bin/terminator
	gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
	sudo apt-get install -y nautilus-actions-config-tool

新建动作“在终端中打开(E)” ，
选中“显示选择右键菜单中的项目”和“Display item in location context menu”。
命令路径中填“/usr/bin/terminator”，参数放空，工作目录填“%d/%b”。

## zsh
	sudo apt-get install -y zsh
	chsh -s /bin/zsh

## VIM
	sh ~/.dotfiles/vimrc/install_awesome_vimrc.sh

## rvm, ruby 2.2.2, jekyll
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
    curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby=2.2.2
    gem sources -a https://ruby.taobao.org/
    gem sources --remove https://rubygems.org/

### github pages
    gem install jekyll
    sudo apt-get install -y nodejs
    git clone git@github.com:ivan19871002/ivan19871002.github.com.git
    cd ivan19871002.github.com
    jekyll serve
    

## other (ubuntu 14.04 or later)
    sudo apt-get install -y libswitch-perl
    sudo apt-get install -y android-tools-fastboot
    sudo apt-get install -y android-tools-adb
    
