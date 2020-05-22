#!/usr/bin/env bash

END=$'\e[0m'
RED=$'\e[31m'
GREEN=$'\e[32m'
CYAN=$'\e[36m'
YELLOW=$'\e[33m'

# Base infomation
info() {
  echo ${CYAN}➜ $1${END}
}

# Success message
ok() {
  echo ${GREEN}✔ $1${END}
}

# Error message
error() {
  echo ${RED}✖ $1${END}
}

# 安装PowerFonts（字体库）
# https://github.com/powerline/fonts
# 路径改为字体库安装路径
if [[ ! -d "$HOME/许锦钊/OpenSource2/fonts" ]]; then
  info "installing PowerFonts"
  git clone https://github.com/powerline/fonts.git ~/许锦钊/OpenSource2/fonts --depth=1
  cd fonts
  ok "PowerFonts is already installed"
else
  ok "PowerFontsis already installed"
fi
