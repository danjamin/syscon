syscon
======

my system configuration (e.g. ~/.vimrc)

dependencies
======

Install [Vundle](https://github.com/gmarik/vundle)

installation
======

Backup current vimrc file

    $ cp ~/.vimrc ~/.vimrcbackup
    $ rm ~/.vimrc

Create a symbolic link to vimrc

    $ ln -s `pwd`/vimrc ~/.vimrc

Install Vundle dependencies

    $ vim +PluginInstall +qall

usage
======

The `~/.vimrc` file contains global configurations.
