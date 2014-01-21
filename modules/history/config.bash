#!/bin/bash

# Record commands immediately so you don't lose them if the session terminates
# Why does '$PROMPT_COMMAND;history -a' not work?
export PROMPT_COMMAND='history -a'

# Include the time stamp with commands
export HISTTIMEFORMAT='%F %T '

# Ignore super secret commands starting with a space
export HISTCONTROL=ignorespace

# All the history.
export HISTSIZE=10000

# Append instead of replacing
shopt -s histappend
