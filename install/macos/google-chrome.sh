function install_google-chrome() {
    brew list google-chrome || brew install google-chrome
}

function uninstall_google-chrome() {
    brew list google-chrome && brew uninstall google-chrome
}
