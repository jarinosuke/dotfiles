# ls color
set -gx LSCOLORS gxfxcxdxbxegedabagacad

set -x PATH $PATH /sbin/
set -g -x PATH /usr/local/bin /usr/local/sbin $PATH

# rustup
set PATH $HOME/.cargo/bin $PATH

# rbenv
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
. (rbenv init -)
rbenv init - | source
status --is-interactive; and . (rbenv init -|psub)
fix_path

# nodeenv
set PATH $HOME/.nodebrew/current/bin $PATH

# flutter
set -x PATH $HOME/Documents/workspace/flutter/bin $PATH
set -x PATH $HOME/.pub-cache/bin $PATH

# pyenv
#set -x PATH $HOME/.pyenv/versions $PATH
#. (pyenv init - | psub)
#. (pyenv virtualenv-init -)

# xcenv
#. (xcenv init -)

# goenv
#set -x GOENV_ROOT $HOME/.goenv
#set -x PATH $GOENV_ROOT/shims $PATH
#goenv rehash >/dev/null ^&1

# direnv
#eval (direnv hook fish)

# Flutter
set -x PATH /Users/jarinosuke/Documents/workspace/flutter/bin $PATH

# alias
alias history "history --show-time='%Y-%m-%d %T | '"
alias ll "ls -AlhF"

# peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \cf peco_change_directory
end

# Go
set -x GOPATH $HOME/.go
set -x PATH $PATH $GOPATH/bin

# Google Cloud SDK
set -x GOOGLE_CLOUD_SDK_PATH $HOME/google-cloud-sdk/platform
set -x PATH $HOME/google-cloud-sdk/bin/ $PATH
set -x PATH $GOOGLE_CLOUD_SDK_PATH/google_appengine/ $PATH

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Applications/google-cloud-sdk/path.fish.inc' ]; . '/Applications/google-cloud-sdk/path.fish.inc'; end
#

# Miniconda3
set -U fish_user_paths $HOME/miniconda3/bin $fish_user_paths
set -U fish_user_paths $HOME/miniconda3/codabin $fish_user_paths
eval /Users/jarinosuke/miniconda3/bin/conda "shell.fish" "hook" $argv | source
