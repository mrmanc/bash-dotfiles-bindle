dot-file-bindle
===============

See the [blog post](http://markcrossfield.co.uk/2014-03-25-bash-dotfiles-bindle.html)

## Aims

* To not ‘install’ anything
* To be entirely self contained other than a single hook into the user’s profile
* To be removed as easily as removing the single hook and removing the directory
* To be easily extended by adding a single directory, potentially outside the project
* To be ignorant of whether you are on a Mac
* To play nicely with existing profiles and configuration

## Features

* Colourised Grep highlighting
* SSH hostname completion from .ssh/known_hosts
* Sensible large .bash_history defaults
* Recording of common typos on the command line for future consideration
* A shortcut to start an HTTP server serving static content from a directory
* Environment variables and functions to output coloured text
