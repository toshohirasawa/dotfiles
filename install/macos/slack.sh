function install_slack() {
    brew list slack || brew install slack
}

function uninstall_slack() {
    brew list slack && brew uninstall slack
}
