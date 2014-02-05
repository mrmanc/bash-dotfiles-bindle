#!/bin/bash

# Keep a note of commands you can't type for use in future aliases

function err_handle {
  status=$?
  if [[ $status -eq 127 ]]; then
    read date time cmd args <<< $(history | tail -1 | sed 's/^ *[0-9]* *//')
    echo $cmd >> ~/.bash_misspelled_command_history
  fi
}
trap 'err_handle' ERR
