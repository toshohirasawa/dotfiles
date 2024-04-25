function install_docker() {
    brew list docker || brew install docker
}

function uninstall_docker() {
    brew list docker && brew uninstall docker
}
