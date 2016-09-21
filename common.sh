#!/bin/sh

updatePackageList(){
  pprint "Updating packages..."
  sudo apt-get update
}

installShell(){
  pprint "Installing ZSH shell"
  sudo apt-get install zsh
  pprint "Installing oh-my-zsh..."
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zs
  chsh -s `which zsh`
  pprint "Downloading powerline fonts..."
  git clone https://github.com/powerline/fonts.git && pprint "Installing powerline fonts..." && cd fonts/ && ./install.sh && cd ../ && rm -rf fonts/
  wprint "Please change your font from terminal profile settings."
}

installGit(){
    pprint "Installing git..."
    sudo apt-get install git
}

installComposer(){
    curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
}

installTweakTool(){
    sudo apt install unity-tweak-tool
}

installPaperTheme(){
    sudo add-apt-repository ppa:snwh/pulp
    updatePackageList
    sudo apt-get install paper-gtk-theme
    sudo apt-get install paper-icon-theme
    wprint "Please change theme to `paper` from Tweak Tool."
}

installSynapse(){
    sudo add-apt-repository ppa:noobslab/apps
    updatePackageList
    sudo apt-get install indicator-synapse
}