function install_vlc() {
    brew list vlc || brew install vlc
}

function uninstall_vlc() {
    brew list vlc && brew uninstall vlc
}
