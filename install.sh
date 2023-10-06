#!/bin/bash

# Change the default shell to zsh for the current user
sudo chsh -s $(which zsh)


# Clone the asdf repo
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1
