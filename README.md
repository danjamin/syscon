# syscon

my system configuration reference (e.g. ~/.vimrc, ~/.bash\_profile, ...)

## pre-requisites

- Install [nvm](https://github.com/nvm-sh/nvm)
- Install [brew](https://brew.sh)
- Install [pathogen](https://github.com/tpope/vim-pathogen)
- Install [p4merge](https://www.perforce.com/products/helix-core-apps/merge-diff-tool-p4merge)

### install packages with brew

```sh
brew install tree fzf the_silver_searcher
```

### install pathogen bundles

- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [vim-javascript](https://github.com/pangloss/vim-javascript)

### install onedark vim theme

- [onedark.vim](https://github.com/joshdick/onedark.vim)

## usage

- The `~/.vimrc` file contains global **vim** configurations.
- The `~/.bash_profile` file contains global **system** configurations.
- The `~/.gitconfig` file contains global **git** configurations.
- The `~/.git-diff-cmd.sh` is necessary to use **p4merge** as difftool
