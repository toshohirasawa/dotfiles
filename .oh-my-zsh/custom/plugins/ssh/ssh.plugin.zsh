function smux() {
    local REMOTE=${1}
    local SESNAME=${2:-thirasawa}
    autossh -M 0 -t $REMOTE tmux new -A -s $SESNAME
}

# completion
compdef smux=ssh