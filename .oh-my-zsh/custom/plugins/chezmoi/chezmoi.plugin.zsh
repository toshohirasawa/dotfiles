alias cz="chezmoi"

function cz-update-source-state() {
    chezmoi add --encrypt $HOME/.ssh/config
    chezmoi add --encrypt $HOME/Library/Preferences/com.manytricks.Moom.plist
    chezmoi add $HOME/.config/karabiner/karabiner.json
    chezmoi add -r $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/preferences
    chezmoi add -r $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/remote
    chezmoi add -r $HOME/Library/Application\ Support/Alfred/Alfred.alfredpreferences/snippets
}
