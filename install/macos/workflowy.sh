function install_workflowy() {
    brew list workflowy || brew install workflowy
}

function uninstall_workflowy() {
    brew list workflowy && brew uninstall workflowy
}
