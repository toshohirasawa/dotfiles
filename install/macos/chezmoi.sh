function install_chezmoi() {
    brew list chezmoi || brew install chezmoi
    
    if [ ! -f $HOME/.oh-my-zsh/custom/plugins/chezmoi/_chezmoi ]; then
        mkdir -p $HOME/.oh-my-zsh/custom/plugins/chezmoi
        chezmoi completion zsh >$HOME/.oh-my-zsh/custom/plugins/chezmoi/_chezmoi
    fi
}

function uninstall_chezmoi() {
    brew list chezmoi && brew uninstall chezmoi
}
