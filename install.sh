#! /usr/bin/sh

sudo apt-add-repository ppa:fish-shell/release-3 --yes
sudo apt update --yes
sudo apt install fish --yes

echo /usr/bin/fish | sudo tee -a /etc/shells
sudo chsh -s /usr/bin/fish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
sudo curl -sS https://starship.rs/install.sh | sh -s -- --yes

cp -r fish ~/.config/fish/
cp -r neofetch ~/.config/neofetch/
cp -r omf ~/.config/omf/

cp starship.toml ~/.config/starship.toml
