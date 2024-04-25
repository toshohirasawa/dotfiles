function install_mathpix-snipping-tool() {
    brew list mathpix-snipping-tool || brew install mathpix-snipping-tool
}

function uninstall_mathpix-snipping-tool() {
    brew list mathpix-snipping-tool && brew uninstall mathpix-snipping-tool
}
