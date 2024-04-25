function install_todoist() {
    brew list todoist || brew install todoist
}

function uninstall_todoist() {
    brew list todoist && brew uninstall todoist
}
