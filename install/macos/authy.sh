function install_authy() {
    brew list authy || brew install authy
}

function uninstall_authy() {
    brew list authy && brew uninstall authy
}
