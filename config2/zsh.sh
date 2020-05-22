#!/usr/bin/env bash

# 安装oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh
if [[ ! -d "/Users/xujinzhao/许锦钊/程序/shell/dotfiles/test" ]]; then
  info "Installing Oh My Zsh..."
  curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
  if [[ $? -eq 0 ]]; then
    ok "Oh My Zsh is already installed"
  else
    error "Could not install Oh My Zsh"
    exit 1
  fi
else
  error "Oh My Zsh is already installed"
fi

# 安装PowerLine（agnoster主题）
# https://github.com/agnoster/agnoster-zsh-theme
info "installing PowerLine"
easy_install pip
pip install powerline-status --user
if [[ $? -eq 0 ]]; then
  ok "Powerline is already installed"
else
  error "Could not install Poweline"
fi

# 安装PowerFonts（字体库）
# https://github.com/powerline/fonts
# 路径改为字体库安装路径
if [[ ! -d "$HOME/许锦钊/OpenSource/fonts" ]]; then
  info "installing PowerFonts"
  git clone https://github.com/powerline/fonts.git ~/许锦钊/OpenSource/fonts --depth=1
  cd ~/许锦钊/OpenSource/fonts
  ./install.sh
  ok "PowerFonts is already installed"
else
  ok "PowerFonts is already installed"
fi

# 安装Solarized（配色方案）
# https://github.com/altercation/solarized
# 路径改为字体库安装路径
# 在打开的finder窗口中，双击Solarized Dark.itermcolors和Solarized Light.itermcolors即可安装明暗两种配色：
if [[ ! -d "$HOME/许锦钊/OpenSource/solarized" ]]; then
  info "installing Solarized"
  git clone https://github.com/powerline/fonts.git ~/许锦钊/OpenSource/solarized --depth=1
  cd solarized/iterm2-colors-solarized/
  open .
  ok "Solarized is already installed"
else
  ok "Solarized is already installed"
fi

# 安装zsh-autosuggestions（命令建议和补全插件）
# https://github.com/zsh-users/zsh-autosuggestions
if [[ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]]; then
  info "installing zsh-autosuggestions plugin"
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions --depth=1
  ok "zsh-autosuggestions is already installed"
else
  ok "zsh-autosuggestions is already installed"
fi

# 安装zsh-syntax-highlighting（高亮插件）
# https://github.com/zsh-users/zsh-syntax-highlighting
if [[ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]]; then
  info "installing zsh-syntax-highlighting plugin"
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth=1
  ok "zsh-syntax-highlighting is already installed"
else
  ok "zsh-syntax-highlighting is already installed"
fi

rm -rf $HOME/.zshrc

ln -s $HOME/.dotfiles/config/zsh/.zshrc $HOME/.zshrc
