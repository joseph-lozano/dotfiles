#!/bin/bash

# Change the default shell to zsh for the current user
sudo chsh -s $(which zsh)

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Clone the asdf repo
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

curl -fL https://github.com/dandavison/delta/releases/download/0.15.1/git-delta-musl_0.15.1_amd64.deb -o delta.deb

sudo apt update && sudo apt upgrade -y

sudo apt install gh

yes | sudo dpkg -i delta.deb

cat <<EOL >> ~/.gitconfig
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true    # use n and N to move between diff sections
    light = false      # set to true if you're in a terminal w/ a light background color (e.g. the default macOS terminal)

[merge]
    conflictstyle = diff3

[diff]
    colorMoved = default
EOL


cat .zshrc > $HOME/.zshrc
cat .p10k.zsh > $HOME/.p10k.zsh
