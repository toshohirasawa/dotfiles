function install_onepassword() {
    brew list 1password || brew install 1password
    brew list 1password-cli || brew install 1password-cli
}

function uninstall_onepassword() {
    brew list 1password && brew uninstall 1password
    brew list 1password-cli && brew uninstall 1password-cli
}
