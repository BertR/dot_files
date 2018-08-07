#!/bin/bash

# Set-up everything in /opt
cd /opt

# List of dotfiles to install
files=".zshrc .vimrc"
# Create backups of old files, copy new ones
dir=/opt/dot_files
old_dir=/opt/dotfiles_old

echo "Creating backup in $olddir"
mkdir -p $old_dir

echo "Opening $dir"
cd $dir

for file in $files; do
  echo "Moving old version of $file"
  mv ~/$file /opt/dotfiles_old/
  echo "Symlinking $file"
  ln -s $dir/$file ~/$file
done

# Install software
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    echo "We're on linux"
    sudo apt-get update
    sudo apt-get --yes install zsh curl nodejs nmap htop vim nano git tree ncdu di
elif [[ "$OSTYPE" == "darwin"* ]]; then
        # Mac OSX
    echo "We're on a mac"
fi

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh
# Zsh completions and suggestions & history substring search
git clone https://github.com/zsh-users/zaw.git ~/.oh-my-zsh/custom/plugins/zaw
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins and exit vim
vim +PlugInstal +qall

