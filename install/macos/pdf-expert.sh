function install_pdf-expert() {
    brew list pdf-expert || brew install pdf-expert
}

function uninstall_pdf-expert() {
    brew list pdf-expert && brew uninstall pdf-expert
}
