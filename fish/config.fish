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
set -x STARSHIP_CONFIG ~/.config/starship/zephyr.toml
set -x PATH $STARSHIP $PATH
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
abbr -a gst git status
abbr -a gl git log --oneline --graph --all
abbr -a gco git checkout
abbr -a gcb git checkout -b

set -x fish_greeting "Don't wait. The time will never be just right"

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

direnv hook fish | source
set -g direnv_fish_mode eval_on_arrow    # trigger direnv at prompt, and on every arrow-based directory change (default)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/lindsay/miniconda3/bin/conda
    eval /Users/lindsay/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/Users/lindsay/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/lindsay/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/Users/lindsay/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

starship init fish | source

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

