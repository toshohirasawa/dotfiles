function install_visual-studio-code() {
    brew list visual-studio-code || brew install visual-studio-code
}

function uninstall_visual-studio-code() {
    brew list visual-studio-code && brew uninstall visual-studio-code
}
