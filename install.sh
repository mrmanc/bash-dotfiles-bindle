#!/bin/bash

BINDLE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Use .bashrc to ensure that non login shells get the bindle. See http://bit.ly/bashrc-bash_profile
# BASHRC is interactive non login only
BASHRC=~/.bashrc

# BASH_PROFILE is login only
BASH_PROFILE=~/.bash_profile

if ! [ -f $BASHRC ]; then touch $BASHRC; fi
[[ ! -r $BASH_PROFILE ]] && touch $BASH_PROFILE
if ! grep -q "\.bashrc" $BASH_PROFILE; then
	echo -e "[[ -r $BASHRC ]] && . $BASHRC" >> $BASH_PROFILE
 	echo -e "\033[0;32mAdded a call from $BASH_PROFILE to $BASHRC to hook into non login shells\033[0m"
fi


bindle_hook=". $BINDLE_PATH/bindle_profile"
if ! grep -q "^$bindle_hook$" $BASHRC
then
	echo $bindle_hook >> $BASHRC
        echo -e "\033[0;32mHooked dotfiles in by adding a line to $BASHRC\033[0m"
else
	echo -e "\033[0;32mThe dotfiles in $BINDLE_PATH are already hooked into $BASHRC.\nYou need do this only once; future changes will be loaded automatically.\033[0m"
fi
