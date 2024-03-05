#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail

# powerline fonts for zsh agnoster theme
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd .. && rm -rf fonts

# oh-my-zsh & plugins
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# set .zshrc
cp .zshrc ~/.zshrc