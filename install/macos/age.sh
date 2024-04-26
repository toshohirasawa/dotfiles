function install_age() {
    brew list age || brew install age
}

function uninstall_age() {
    brew list age && brew uninstall age
}
