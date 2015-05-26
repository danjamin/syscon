# syscon

my system configuration (e.g. ~/.vimrc, ~/.bash_profile, ...)

## installation

Run the install script

```sh
$ ./install.sh
```

This command will install [Vundle](https://github.com/gmarik/Vundle.vim),
it will also replace your ~/.vimrc and ~/.bash_profile files and back them up,
it installs [homebrew](http://brew.sh/) and **node** and **git** via **homebrew**.
Installing **git** via **homebrew** on Mac OS X restores `git gui`


## usage

The `~/.vimrc` file contains global **vim** configurations.
The `~/.bash_profile` file contains global **system** configurations.
