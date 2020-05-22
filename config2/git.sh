#!/usr/bin/env bash

# 创建项目中.gitconfig文件到系统.gitconfig文件的软链接
ln -s $HOME/.dotfiles/config/git/.gitconfig $HOME/.gitconfig
