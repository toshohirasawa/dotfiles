function install_chezmoi() {
    brew list chezmoi || brew install chezmoi
}

function uninstall_chezmoi() {
    brew list chezmoi && brew uninstall chezmoi
}
