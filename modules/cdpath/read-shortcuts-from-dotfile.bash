#!/bin/bash

if [ -e ~/.cdpath ]
then
  export CDPATH="$(cat ~/.cdpath)"
fi
