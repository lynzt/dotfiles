if command -v direnv >/dev/null
    eval (direnv hook fish) 
end

set -x GOPATH ~/coding/go
set -x PATH /usr/local/bin $PATH
set -x PATH $GOPATH/bin $PATH

alias abo="atom-beta"
alias ll="ls -la"
alias dps="docker ps -a"
alias tm="tmux"
alias cl="clear"
alias com="git checkout master"


set -x SPACEFISH_BATTERY_SHOW always
set -x fish_greeting "Don't wait. The time will never be just right"
set -x SPACEFISH_DIR_PREFIX ''
set -x SPACEFISH_PACKAGE_SHOW false
set -x SPACEFISH_NODE_SHOW false
set -x SPACEFISH_DOCKER_SHOW false
set -x SPACEFISH_GOLANG_SHOW false
set -x SPACEFISH_AWS_SHOW false
set -x SPACEFISH_PROMPT_ORDER battery time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep jobs exit_code char

