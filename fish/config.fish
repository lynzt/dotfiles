if command -v direnv >/dev/null
    eval (direnv hook fish) 
end

set -x GOPATH ~/coding/go
set -x PATH $GOPATH/bin $PATH
set -x PATH /opt/homebrew/bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH ~/.emacs.d/bin $PATH
set -x PATH /usr/local/opt/python@3.8/bin $PATH
set -x PATH /opt/metasploit-framework/bin $PATH
# set -x PATH ~/.nodenv/bin $PATH


alias abo="atom-beta"
alias ci="code-insiders"
alias ll="ls -la"
alias dps="docker ps -a"
alias v="nvim"
alias tm="tmux"
alias cl="clear"
alias com="git checkout master"
alias nnn="nnn -d -e -H -r"

# GIT commands
alias bd="git branch -D"
alias st="git status -s"
alias st="git checkout"

set -x SPACEFISH_BATTERY_SHOW always
set -x fish_greeting "Don't wait. The time will never be just right"
set -x SPACEFISH_DIR_PREFIX ''
set -x SPACEFISH_PACKAGE_SHOW false
set -x SPACEFISH_NODE_SHOW false
set -x SPACEFISH_DOCKER_SHOW false
set -x SPACEFISH_GOLANG_SHOW false
set -x SPACEFISH_AWS_SHOW false
set -x SPACEFISH_PROMPT_ORDER battery time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep jobs exit_code char

# fish Completions
if test -d (brew --prefix)"/share/fish/completions"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
end

if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
end

function tmux
  command tmux -2 $argv
end

# status --is-interactive; and source (nodenv init -|psub)

# source /usr/local/opt/asdf/asdf.fish
echo -e "\nsource "(brew --prefix asdf)"/libexec/asdf.fish" >> ~/.config/fish/config.fish

direnv hook fish | source
set -g direnv_fish_mode eval_on_arrow    # trigger direnv at prompt, and on every arrow-based directory change (default)

source /opt/homebrew/opt/asdf/libexec/asdf.fish
