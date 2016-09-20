#!/bin/sh

GREEN='\033[0;32m'
RED='\033[0;33m'
END='\033[0m' # No Color
BOLD='\033[1m'

# make a pretty print function print out line
pprint(){
  printf "\n${GREEN}${BOLD}$1${END}\n"
}

eprint(){
  printf "\n${RED}${BOLD}$1${END}\n"
}

updatePackageList(){
  # update package list repository
  pprint "Updating packages..."
  # sudo apt-get update
}

installShell(){
  # pprint "Installing ZSH shell"
  # sudo apt-get install zsh
  # pprint "Installing oh-my-zsh..."
  # wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zs
  # chsh -s `which zsh`
  pprint "Downloading powerline fonts..."
  git clone https://github.com/powerline/fonts.git
  pprint "Installing powerline fonts..."
  wait
  cd fonts/
  ./install.sh
  cd ../
  wait
  rm -rf fonts/
}
