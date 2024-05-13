#!/usr/bin/env zsh

[ -z $ABCI_USER_ID ] && echo 'ABCI_USER_ID is not set. Some functions are ignored.'

function abci_keep_tunnel() {
    [ -z $ABCI_USER_ID ] && exit 1
    autossh -M 0 -N -f -L 10022:es:22 -l $ABCI_USER_ID as.abci.ai
}

function abci_connect_to() {
    local gnode=${1}
    local local_port=${2:-8888}
    autossh -M 0 -N -L $local_port:$gnode:8888 -l $ABCI_USER_ID -p 10022 localhost
}