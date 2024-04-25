function install_obsidian() {
    brew list obsidian || brew install obsidian
}

function uninstall_obsidian() {
    brew list obsidian && brew uninstall obsidian
}
