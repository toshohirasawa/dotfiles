function install_moom() {
    brew list moom || brew install moom
}

function uninstall_moom() {
    brew list moom && brew uninstall moom
}
