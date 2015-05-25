# syscon

my system configuration (e.g. ~/.vimrc)

## installation

Run the install script

```sh
$ ./install
```

This command will install Vundle, it will also replace your ~/.vimrc and
~/.bash_profile files and back them up


## usage

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

You can then edit the sauce file at any time:

    $ vim +"SauceEdit foo"

Open a project at any time from anywhere:

    $ vim +"Sauce foo"
