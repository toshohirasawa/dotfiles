function install_karabiner-elements() {
    brew list karabiner-elements || brew install karabiner-elements
}

function uninstall_karabiner-elements() {
    brew list karabiner-elements && brew uninstall karabiner-elements
}
