#!/bin/bash

## Update
sudo apt update && sudo apt upgrade


## based install
sudo apt-get install build-essential clang g++ libdbus-1-dev libgtk2.0-dev \
                     libnotify-dev libgnome-keyring-dev libgconf2-dev \
                     libasound2-dev libcap-dev libcups2-dev libxtst-dev \
                     libxss1 libnss3-dev gcc-multilib g++-multilib curl \
                     gperf bison libncurses5-dev automake android-tools-adb \
                     android-tools-fastboot python3-pip uget vlc geany aria2 \
                     screenfetch tmux screen gedit redshift lynx inxi transmission-gtk \
                     rar unrar aptitude && sudo aptitude install autotools-dev \
                     libgtk2.0-dev libscim-dev libtool cmake build-essential \
                     opencc mercurial ibus fcitx fcitx-config-gtk fcitx-googlepinyin \
                     proxychains snapd


## Git + ZSH
## http://blog.csdn.net/gatieme/article/details/52741221
sudo add-apt-repository ppa:git-core/ppa && sudo apt update && sudo apt install git 
sudo apt install zsh && chsh -s /bin/zsh && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


## Vimplus
## if not succeed please run: rm -rf ~/.vim/bundle/YouCompleteMe then unpack YCM.tar into ~/.vim/bundle and run sudo ./install.py --clang-complete
dir=$HOME/temp
if [ -d $dir ]
then
    cd $dir
    if [ -d vimplus ]
    then
        cd vimplus/
        ./install
    fi
else
    mkdir -p $HOME/temp
    git clone https://github.com/chxuan/vimplus.git && cd vimplus && ./install.sh
fi


## mini Game
## 俄罗斯方块 打蜜蜂
## sudo apt install bastet ninvaders 


## icon theme
## sudo add-apt-repository ppa:noobslab/themes && sudo apt-get update && sudo apt-get install flatabulous-theme
sudo add-apt-repository ppa:papirus/papirus && sudo apt-get update && sudo apt-get install papirus-icon-theme
## sudo apt-get install --install-recommends arc-kde adapta-kde
## sudo add-apt-repository ppa:noobslab/icons && sudo apt-get update && sudo apt-get install ultra-flat-icons


## Intel + Nvida
## https://linuxstory.org/how-to-resolve-the-driver-issue-for-dual-video-card-users/
## sudo add-apt-repository ppa:nilarimogard/webupd8 && sudo apt-get update && sudo apt-get install prime-indicator


## Update Kernel
## http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.15-rc3/
## sudo dpkg -i *.deb


## dev-env
    ## node + npm
        ## cd /media/ianpasm/ianpasmer/g1thu6/third/node-9.4.0/ && sudo ./configure && sudo make && sudo make install 
        ## cd /media/ianpasm/ianpasmer/g1thu6/third/npm-5.6.0/ && sudo make && sudo make install   

    ## go
        #sudo tar -C /target-path/ -zxvf go*.tar.gz
        #cd && mkdir workplace && cd workplace && mkdir go && cd go && mkdir /bin /pkg/ src 
        #export 'GOPATH=~/workplace/go' > /etc/profile

    ## java
        sudo add-apt-repository ppa:webupd8team/java && sudo apt update && sudo apt install oracle-java8-installer && sudo apt-get install oracle-java8-set-default && source /etc/profile

    ## rust (need long time to download and build)
        #cd /media/ianpasm/ianpasmer/develop/ && unzip rust*.zip && cd rust* && sudo ./x.py build && sudo ./x.py install


## Idea Dev
## ultimate: sudo apt install intellij-idea-ultimate
## Package Installation:
##      tar zxvf xxxxxx.tar.gz
##      sudo mkdir -p /opt/xxxxxx
##      sudo mv xxxxxx/ /opt/xxxxxx
##      sudo ln -s /opt/xxxxxx/bin/xxxxxx.sh /usr/local/bin/xxxxxx
## boot: xxxxxx
## uninstallation: sudo rm /opt/xxxxxx/ -R    
## or use command as follows: tar -C /target-path/ -zxvf xxxx.tar.gz to unpack it
## perference: http://blog.csdn.net/mrgong_/article/details/77200225
## sudo apt-add-repository ppa:mmk2410/intellij-idea && sudo apt update && sudo apt install intellij-idea-community
# cd /media/ianpasm/ianpasmer/develop/ 



## Android Studio
## http://blog.csdn.net/yy1300326388/article/details/46351669


## Snap Application
## More application you can visited snapcraft.io
## sudo snap install spotify boa phpstorm --classic webstorm --classic goland --classic datagrip --classic marsshooter auryo djv


## Install Nerd Font
## 安装之后设置自体为nerhttps://github.com/powerline/fonts.gitd系列，并安装完整字体(不同字体可能需要不同的完整安装)，需要反复设置和安装完整字体并设置系统字体为英文
## 2018-01-07 
## 	Default Font: Arimo Nerd Font Regular 11
## 	Document Font: Arimo Nerd Font Regular 10
## 	Monospace Font: 10
##   #common font:  Droid Sans Mono For Powerline Nerd Font Regular/AurulentSansMono Nerd Font Regular/LiterationMono Nerd Font Book
##                  Bitstream Vera Sans Mono Nerd Roman/Cusine Nerd Font Reegular/FantasqueSansMono Nerd Font Regular/InconsolataLGC Nerd Font Medimu
##   #beauty font:  CodeNewRoman Nerd Font Book(arrow has a problem)/InconsolataLGC Nerd Font Italic/Knack Nerd Font Regular
##  Titlebar Font: Arimo Nerd Font Regular 12
function nerd_font
{
    if [ -d $dir/nerd-fonts ]
    then
        cd $dir/nerd-fonts && sudo ./install.sh
    else
        git clone https://github.com/ryanoasis/nerd-fonts.git $dir
        cd $dir/nerd-fonts && sudo ./install.sh
    fi
}

## Install Powerline Font
function powerline_font 
{
    if [ -d $dir/fonts ]
    then
        cd $dir/fonts && sudo ./install.sh
    else
        git clone https://github.com/powerline/fonts.git $dir
        cd $dir/fonts && sudo ./install.sh
    fi
}


## Vim
## git clone https://github.com/vim/vim.git && cd src && sudo make distclean && sudo make && sudo make install
## ./configure --enable-multibyte --enable-python3interp=yes --enable-pythoninterp=yes   --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu  --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu
## fix icon:installed compeleted languages support!!!! https://github.com/file-icons/source
## cd ~/temp/vim && sudo make distclean && ./configure --enable-multibyte --enable-python3interp=yes --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu  --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu && cd src && sudo make && sudo make install


## Shadowsocks(unsupport chacha20-ietf-poly1305)
## Recommand use command line version of python or shadowsocks-libv
## sudo add-apt-repository ppa:hzwhuang/ss-qt5 && sudo apt update && sudo apt install shadowsocks-qt5
## shadowsocks-libev
## https://github.com/shadowsocks/shadowsocks-libev#installation
## best way to build /build4ss-libev
sudo apt-get install software-properties-common -y && sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y && sudo apt-get update && sudo apt install shadowsocks-libev
## shadowsocks-python
## https://github.com/shadowsocks/shadowsocks/tree/master#install
## sudo apt-get install python-pip && pip install git+https://github.com/shadowsocks/shadowsocks.git@master



## Persepolis Download Manager
## sudo add-apt-repository ppa:persepolis/ppa && sudo apt update && sudo apt install persepolis


## Wd-dict
sudo pip3 install bs4 lxml && cd /media/ianpasm/ianpasmer/g1thu6/third/wudao-dict/wudao-dict/ && sudo bash setup.sh 


## Musicbox
## Source Install
##  git clone https://github.com/darknessomi/musicbox.git && cd musicbox
##  python3 setup.py install
## Install Directly
sudo pip3 install NetEase-MusicBox && sudo apt install mpg123 


## tweak tool for unity
#sudo add-apt-repository ppa:freyja-dev/unity-tweak-tool-daily && sudo apt update && sudo apt upgrade


## Sublime-text
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && sudo apt-get install apt-transport-https
# stable
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# dev
#echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt update && sudo apt install sublime-text


sudo apt update && sudo apt upgrade
