#!/bin/sh

export EDITOR="code -w"
PATH=/usr/local/sbin:$PATH
PATH="$HOME/bin:$PATH"

eval "$(/opt/homebrew/bin/brew shellenv)"

s () {
  cd "$HOME/src/$1" || return
}

d () {
  cd "$HOME/Desktop/$1" || return
}

alias ..="cd .."
alias ...="cd ../.."

PATH=$HOME/Library/Android/sdk/cmake/3.18.1/bin:$PATH
PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
