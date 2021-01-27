if command -v direnv >/dev/null
    eval (direnv hook fish) 
end

set -x GOPATH ~/coding/go
set -x PATH /usr/local/bin $PATH
set -x PATH $GOPATH/bin $PATH
set -x PATH ~/.emacs.d/bin $PATH
set -x PATH /usr/local/opt/python@3.8/bin $PATH
set -x PATH ~/.nodenv/bin $PATH


alias abo="atom-beta"
alias ci="code-insiders"
alias ll="ls -la"
alias dps="docker ps -a"
alias v="nvim"
alias tm="tmux"
alias cl="clear"
alias com="git checkout master"
alias bd="git branch -D"


set -x SPACEFISH_BATTERY_SHOW always
set -x fish_greeting "Don't wait. The time will never be just right"
set -x SPACEFISH_DIR_PREFIX ''
set -x SPACEFISH_PACKAGE_SHOW false
set -x SPACEFISH_NODE_SHOW false
set -x SPACEFISH_DOCKER_SHOW false
set -x SPACEFISH_GOLANG_SHOW false
set -x SPACEFISH_AWS_SHOW false
set -x SPACEFISH_PROMPT_ORDER battery time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep jobs exit_code char

function tmux
  command tmux -2 $argv
end

status --is-interactive; and source (nodenv init -|psub)

source /usr/local/opt/asdf/asdf.fish
