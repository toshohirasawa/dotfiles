function install_pyenv() {
    # pyenv is installed by chezmoiexternal

    # python-build requirements
    for pkg in openssl readline sqlite3 xz zlib tcl-tk; do
        brew list $pkg &>/dev/null || brew install $pkg
    done
}