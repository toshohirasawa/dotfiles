BREW_FORMULAE=(
    wget
    autossh
    tmux
    rsync
    openfortivpn
)
function install_formulae() {
    for formula in "${BREW_FORMULAE[@]}"; do
        brew list $formula || brew install $formula
    done
}
function uninstall_formulae() {
    for formula in "${BREW_FORMULAE[@]}"; do
        brew list $formula && brew uninstall $formula
    done
}
