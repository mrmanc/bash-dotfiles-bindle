dot-file-bindle
===============

See the [blog post](http://markcrossfield.co.uk/2014-03-25-bash-dotfiles-bindle.html).

## Aims

* To not ‘install’ anything
* To be entirely self contained other than a single hook into the user’s profile
* To be removed as easily as removing the single hook and removing the directory
* To be easily extended by adding a single directory, potentially outside the project
* To be updated by simply running `git pull`
* To be ignorant of whether you are on a Mac
* To play nicely with existing profiles and configuration

## Installation

I suggest you fork the repo, so that you can make your own additions. If you do anything cool then give me a shout / send me a pull request and I will look at merging it in.

From wherever you want to check out the project, run:

    git clone https://github.com/[YOUR-USERNAME]/bash-dotfiles-bindle.git
    bash-dotfiles-bindle/install.sh

Done.

To update:

    cd bash-dotfiles-bindle
    git pull

## Features

* Colourised Grep highlighting
* SSH hostname completion from .ssh/known_hosts
* Sensible large .bash_history defaults
* Recording of common typos on the command line for future consideration
* A shortcut to start an HTTP server serving static content from a directory
* Environment variables and functions to output coloured text
* Hostname is set as the tab title (no idea how this will work on non OS X systems, but don’t think I’ve broken my rule…)
