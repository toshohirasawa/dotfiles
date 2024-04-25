function install_alfred() {
    brew list alfred || brew install alfred
}

function uninstall_alfred() {
    brew list alfred && brew uninstall alfred
}
