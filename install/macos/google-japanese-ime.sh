function install_google-japanese-ime() {
    brew list google-japanese-ime || brew install google-japanese-ime
}

function uninstall_google-japanese-ime() {
    brew list google-japanese-ime && brew uninstall google-japanese-ime
}
