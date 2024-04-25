#!/usr/bin/env bash
set -Eeuo pipefail

GITHUB_USERNAME=toshohirasawa

function main() {
    if [ ! "$(uname)" == "Darwin" ] || [ ! $(arch) == "arm64" ]; then
        echo "This script is designed for macOS (arm64)."
        exit 1
    fi

    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME

    rm ./bin/chezmoi
}

main
