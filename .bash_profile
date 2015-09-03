#!/usr/bin/env bash

# for autojump

# [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# for bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='DoubleTime'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
# export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

alias eg="ember generate"
alias ls="ls -GF"

# Middleman
alias mb="middleman build --verbose"
alias ms="middleman server"
alias mde="middleman deploy"

# Jekyll
alias jb="jekyll build"
alias js="jekyll serve"

# Fix for tmux/vim color issues
export TERM="screen-256color"
alias tmux="tmux -2"

# todo.sh
alias td="todo.sh"
alias c="clear"

# Tmux
alias kat="killall tmux"
alias tmd="tmux detach"
alias tma="tmux attach-session -t"

alias rs="bundle exec rspec"
alias h="history"
alias yt="youtube-dl FORMAT --no-playlist"

# Rake
alias rr="rake routes"
alias bi="bundle install"
alias rdm="rake db:migrate"


# GIT
alias gi="git init"
alias gs="git status"
alias gac="git add . && git commit -m"
alias glo='git log --pretty=format:"%h%x09%an%x09%s"'
alias gpp="git push production master"
alias gco="git checkout -b"

# CLIPBOARD
alias pc="pbcopy"
alias pp="pbpaste"
alias cp="cp -R"

# HOMEBREW
alias bu="brew update"
alias bug="brew upgrade"

#HEROKU
alias gph="git push heroku master"
alias hl="heroku logs"
alias ho="heroku open"

#POWDER
alias pss="powder -o"
alias pop="powder open"

# Be considerate
alias vi=vim
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ls='\ls -F $LS_OPTIONS'
alias ll='\ls -aFl $LS_OPTIONS'
alias lsd='\ls -ald $LS_OPTIONS * | egrep "^d"'
alias psg="ps -auxww | grep -i "
alias +='pushd .'
alias _='popd'

#enable vi command line editing
set -o vi

#Open current directory
alias o="open ."
# Load Bash It


# Functions
take () {
  mkdir $1
  cd $1
}

export NVM_DIR="/Users/Bokeh/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm














source $BASH_IT/bash_it.sh
