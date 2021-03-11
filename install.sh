#!/bin/bash
cd "${0%/*}"
read -p "This file will replace all of your dotfiles without restraint. Are you sure you want to continue? (yN) " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]; then
	sudo apt install fish neovim tmux

	rm $HOME/.bashrc
	rm $HOME/.tmux.conf
	ln -s "$(pwd)/.bashrc" $HOME/.bashrc
	ln -s "$(pwd)/.tmux.conf" $HOME/.tmux.conf 

	for f in .config/*; do
		rm -rf $HOME/$f
		ln -s "$(pwd)/$f" $HOME/$f
	done

	fish ./install_packages.fish
fi
