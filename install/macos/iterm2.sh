function install_iterm2() {
    brew list iterm2 || brew install iterm2
}

function uninstall_iterm2() {
    brew list iterm2 && brew uninstall iterm2
}
