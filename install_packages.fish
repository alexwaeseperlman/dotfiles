#!/usr/bin/fish

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
fisher install jomik/fish-gruvbox

mkdir -p ~/.local/share/nvm