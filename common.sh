#!/bin/sh

updatePackageList(){
  pprint "Updating packages..."
  sudo apt-get update
}

installShell(){
  pprint "Installing ZSH shell"
  sudo apt-get install zsh
  pprint "Installing oh-my-zsh..."
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
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
    sudo apt-get install unity-tweak-tool gnome-tweak-tool
}

installPaperTheme(){
    sudo add-apt-repository ppa:snwh/pulp
    updatePackageList
    sudo apt-get install paper-gtk-theme
    sudo apt-get install paper-icon-theme
    wprint "Please change theme to `paper` from Tweak Tool."
}

installSynapse(){
    updatePackageList
    sudo apt-get install synapse
}
