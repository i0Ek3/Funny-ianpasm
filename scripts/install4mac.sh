#!/bin/bash


# homebrew & homebrew cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# basic
brew install git zsh tmux 


# set zsh as default bash
#/usr/bin/env
chsh -s /bin/zsh

# oh-my-zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh


# node && nvm
brew install node 
curl -L https://www.npmjs.com/install.sh | sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash




# common sf install
# brew cask install xxxx
brew install gawk cmake llvm proxychains-ng python3 go java fish wget gpg ant maven tomcat jetty hub mysql postgresql gradle mpg123 git-flow
brew postinstall python3
# ruby env rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB ; \curl -sSL https://get.rvm.io | bash -s stable
source $HOME.rvm/scripts/rvm; rvm install ruby

## from github
brew install youtube-dl
brew cask install mark-text
# finder-go
curl -fsSL https://raw.githubusercontent.com/onmyway133/FinderGo/master/install.sh | sh
# ReLaXed
npm i -g relaxedjs



## common 
brew cask install docker qq skype thunder google-chrome iterm2 android-platform-tools


# pip
sudo easy_install pip ; pip install virtualenv django
sudo pip3 install gplaycli asciinema NetEase-Music rebound-cli


# vimplus
git clone  https://github.com/chxuan/vimplus.git ~/.vimplus && cd ~/.vimplus && ./install.sh

# git setting
ssh-keygen -t rsa -b 4096 -C "kno30826@gmail.com"
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa
git config --global user.email "kno30826@gmail.com"
git config --global user.name "i0Ek3"

ecgo "Please go to your github setting page to add SSH key which is under your /home/.ssh/id_rsb.pub"
sleep 10


echo "All done!"


