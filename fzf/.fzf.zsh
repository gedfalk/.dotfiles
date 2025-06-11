# include fzf directory in PATH, if it is not already
if [[ ! "$PATH" == */home/gedfalk/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/gedfalk/.fzf/bin"
fi

# kinda initializing fzf
source <(fzf --zsh)

export FZF_DEFAULT_OPTS="
    --tmux 90%,80% 
    --style full
    --bind 'ctrl-i:up,ctrl-k:down'
    --preview 'bat --color=always {}'
"

### Rearranging 3 classic widgets
# insert selected file into terminal with Alt-C
bindkey -r "\ec"
bindkey "\ec" fzf-file-widget
# search for history with Alt-H
bindkey "\eh" fzf-history-widget
# change directory with 'fd' command
fd() {
  local dir
  dir=$(find ${1:-.} -type d 2>/dev/null | fzf +m) &&
  cd "$dir"
}

# open nvim from fzf
# if no path is passed - it will run fzf from ~ directory
# if '.' is passed - it will run from current directory
fvim() {
    local dir
    if [[ $# -eq 0 ]]; then
        dir="$HOME"
    elif [[ $1 == '.' ]]; then
        dir="."
    else
        dir="$1"
    fi
    
    local file
    file=$(cd "$dir" && fzf) || return 
    nvim "$dir/$file"
}

