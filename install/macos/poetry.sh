function install_poetry() {
    if ! command -v poetry &>/dev/null; then
        curl -sSL https://install.python-poetry.org | python3 -
    fi

    PATH="$HOME/.local/bin:$PATH"
    poetry config virtualenvs.prefer-active-python true

    if [ ! -f $HOME/.oh-my-zsh/custom/plugins/poetry/_poetry ]; then
        mkdir -p $HOME/.oh-my-zsh/custom/plugins/poetry
        $HOME/.local/bin/poetry completions zsh >$HOME/.oh-my-zsh/custom/plugins/poetry/_poetry
    fi
}

function uninstall_poetry() {
    curl -sSL https://install.python-poetry.org | python3 - --uninstall
}
