#!/bin/bash

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask hyper visual-studio-code clashx microsoft-edge docker notion wechat keka

# install basic package
brew install autojump pyenv

# hyper plugin
hyper i hypercwd
hyper i hyper-statusline
hyper i hyper-alt-click
hyper i hyperterm-safepaste
hyper i hyper-search
hyper i hyperborder
hyper i hyper-tab-icons
hyper i hyper-hide-title
hyper i shades-of-purple-hyper
hyper i hyper-pane

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# replace config
cp ./zsh/.zshrc ~/.zshrc
cp ./zsh/.zprofile ~/.zprofile
