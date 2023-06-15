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

PATH=$PATH:$HOME/Library/Android/sdk/cmake/3.18.1/bin
PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

PATH=$HOME/bin:/usr/local/bin:$PATH

GOPATH=$HOME/go
export GOPATH

PATH=$GOPATH/bin:$PATH
go env -w GOPRIVATE="github.com/hu-ma-ne/*"

alias axbrew="arch -x86_64 /usr/local/homebrew/bin/brew"

export GIT_PILE_PREFIX="$(echo "${USER}" | tr '[:upper:]' '[:lower:]')/"
export GIT_PILE_USE_PR_TEMPLATE=true
