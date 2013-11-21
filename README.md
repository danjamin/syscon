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

The `~/.vimrc` file contains global configurations.

Projects are managed with [Sauce for Vim](https://github.com/joonty/vim-sauce).

Individual projects often have their own configurations (e.g. code sniffing rules, tag file names, etc.).
These are configurable in a sauce file for each project.

    $ vim +"SauceNew foo"

Here is an example sauce file:

    " Add vim commands, mappings, functions, etc for this source

    let g:current_dir = "/path/to/project/root"

    exec 'cd ' . g:current_dir
    exec 'NERDTree ' . g:current_dir

    " configure tags
    " initially, you need to run:
    " ctags -f php.tags --languages=PHP -R
    set tags=php.tags

    " configure phpqa (code sniffing)
    let g:phpqa_codesniffer_args = "--standard=/usr/local/opt/php-code-sniffer/CodeSniffer/Standards/PSR2/ruleset.xml"
    let g:phpqa_messdetector_autorun = 0  " Disable mess detector

You can then edit the sauce file at any time:

    $ vim +"SauceEdit foo"

Open a project at any time from anywhere:

    $ vim +"Sauce foo"
