#!/bin/bash

BINDLE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if ! [ -f ~/.bash_profile ]; then touch ~/.bash_profile; fi
bindle_hook=". $BINDLE_PATH/bindle_profile"
if ! grep -q "^$bindle_hook$" ~/.bash_profile
then
	echo $bindle_hook >> ~/.bash_profile
        echo -e "\033[0;32mHooked dotfiles in by adding a line to ~/.bash_profile\033[0m"
else
	echo -e "\033[0;32mThe dotfiles in $BINDLE_PATH are already hooked into ~/.bash_profile.\nYou need do this only once; future changes will be loaded automatically.\033[0m"
fi
