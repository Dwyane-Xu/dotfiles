#!/bin/sh
#
# Homebrew install apps.

apps=(
  alfred
  iterm2
  google-chrome
  qq
  iina
  visual-studio-code
  shadowsocksx-ng
  sketch
  the-unarchiver
  postman
  qingg
  docker
  onedrive
  emacs
  recordit
  qlcolorcode
  qlmarkdown
  quicklook-json
  qlimagesize
  webpquicklook
  qlvideo
)

brew cask install "${apps[@]}"