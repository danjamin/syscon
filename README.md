syscon
======

my system configuration (e.g. ~/.vimrc)

dependencies
======

Install PHP code sniffer; for example, via [Homebrew](http://brew.sh)

    $ brew install php-code-sniffer

installation
======

Backup current vimrc file

    $ cp ~/.vimrc ~/.vimrcbackup

Create a symbolic link to vimrc

    $ rm ~/.vimrc
    $ ln -s {cwd}/vimrc ~/.vimrc

Install [Vundle](https://github.com/gmarik/vundle)

Install Vundle dependencies

    $ vim +BundleInstall +qall

usage
======

Open vim in your project directory

    $ cd /your/project/dir
    $ vim .

Activate NERDTree

    : NERDTree
