function smux() {
    local REMOTE=${1}
    local SESNAME=${2:-thirasawa}

    if zstyle -t ':omz:plugins:ssh' ssh-colorization; then
        REMOTE_ID=$(echo $REMOTE | md5)
        RED=$(printf '%d' 0x${REMOTE_ID:0:2})
        GREEN=$(printf '%d' 0x${REMOTE_ID:2:2})
        BLUE=$(printf '%d' 0x${REMOTE_ID:4:2})
        iterm2_tab_color $RED $GREEN $BLUE
        echo -ne "\033]0;"$REMOTE"\007"
    fi
    autossh -M 0 -t $REMOTE tmux new -A -s $SESNAME
}

# completion
compdef smux=ssh