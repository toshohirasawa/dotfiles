function install_zoom() {
    brew list zoom || brew install zoom
}

function uninstall_zoom() {
    brew list zoom && brew uninstall zoom
}
