function install_elgato-stream-deck() {
    brew list elgato-stream-deck || brew install elgato-stream-deck
}

function uninstall_elgato-stream-deck() {
    brew list elgato-stream-deck && brew uninstall elgato-stream-deck
}
