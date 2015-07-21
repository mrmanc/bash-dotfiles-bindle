#!/bin/bash

# Record commands immediately so you don't lose them if the session terminates
addPromptCommand 'history -a; history -c; history -r;'

# Include the time stamp with commands
export HISTTIMEFORMAT='%F %T '

# Ignore super secret commands starting with a space
export HISTCONTROL=ignorespace

# All the history.
export HISTSIZE=10000

# Append instead of replacing
shopt -s histappend
