#!/bin/sh

brew update
brew upgrade

brew tap caskroom/cask
brew tap caskroom/homebrew-versions

brew install caskroom/cask/brew-cask
brew update brew-cask

brew install peco
brew install ctags

brew install sbt
brew install pyenv

brew install vim --with-lua
brew install emacs --with-cocoa
brew cask install sublime-text3

brew install tmux
brew install reattach-to-user-namespace
sudo gem install tmuxinator


brew cask install skyfonts
brew cask install messenger

brew cask install pomodone

brew cask install disk-inventory-x
