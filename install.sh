#!/bin/zsh

stow config -t $HOME/.config
stow scripts -t $HOME/.scripts
stow user -t $HOME

mv $HOME/zshrc.sh $HOME/.zshrc
