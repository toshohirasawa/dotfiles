function install_publish-or-perish() {
    brew list publish-or-perish || brew install publish-or-perish
}

function uninstall_publish-or-perish() {
    brew list publish-or-perish && brew uninstall publish-or-perish
}
