function install_spotify() {
    brew list spotify || brew install spotify
}

function uninstall_spotify() {
    brew list spotify && brew uninstall spotify
}
