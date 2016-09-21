#!/bin/sh

GREEN='\033[0;32m'
RED='\033[0;33m'
BLUE='\033[0;36m'
END='\033[0m' # No Color
BOLD='\033[1m'

# make a pretty print function print out line
pprint(){
  printf "\n${GREEN}${BOLD}$1${END}\n"
}

wprint(){
  printf "\n${BLUE}${BOLD}$1${END}\n"
}

eprint(){
  printf "\n${RED}${BOLD}$1${END}\n"
}

prompt(){
    read -p "Do you wish to install $1?" yn
    case $yn in
        [Yy]* ) return 1; break;;
        [Nn]* ) return 0;;
        * ) return 1;;
    esac
}

# include common
. ./common.sh
