#!/bin/bash

home=`echo ~`
vimrc="$home/.vimrc"
vimrcbackup="$home/.vimrc_backup"
vundle="$home/.vim/bundle/Vundle.vim"
bashprofile="$home/.bash_profile"
bashprofilebackup="$home/.bash_profile_backup"

# Install vimrc
echo ""
echo "#####"
echo "Instaling vim configuration"
echo "#####"
echo ""

  ## Install Vundle
  if [ ! -d "$vundle" ]
  then
    echo "Installing Vundle"
    git clone https://github.com/gmarik/Vundle.vim.git $vundle
  else
    echo "Vundle already installed"
  fi

  ## Backup current vimrc file
  if [ -f "$vimrc" ]
  then
    echo "Backing up old $vimrc"
    cp $vimrc $vimrcbackup

    echo "Removing existing $vimrc"
    rm $vimrc
  else
    echo "$vimrc not found"
  fi

  ## Create a symbolic link to vimrc
  echo "Linking $vimrc"
  ln -s `pwd`/vimrc $vimrc

  ## Install Vundle dependencies
  echo "Installing Vundle dependencies"
  vim +PluginInstall +qall


# Install bash_profile
echo ""
echo "#####"
echo "Instaling bash profile configuration"
echo "#####"
echo ""

  ## Backup current bash_profile file
  if [ -f "$bashprofile" ]
  then
    echo "Backing up old $bashprofile"
    cp $bashprofile $bashprofilebackup

    echo "Removing existing $bashprofile"
    rm $bashprofile
  else
    echo "$bashprofile not found"
  fi

  ## Create a symbolic link to bash_profile
  echo "Linking $bashprofile"
  ln -s `pwd`/bash_profile $bashprofile

  ## Source the new profile
  echo "Sourcing $bashprofile"
  source $bashprofile

echo "SUCCESS!"
