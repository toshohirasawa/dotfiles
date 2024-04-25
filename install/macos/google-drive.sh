function install_google-drive() {
    brew list google-drive || brew install google-drive
}

function uninstall_google-drive() {
    brew list google-drive && brew uninstall google-drive
}
