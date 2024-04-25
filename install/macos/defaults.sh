function defaults_trackpad() {
    defaults write -g com.apple.swipescrolldirection 0
}

function defaults_dock() {
    # Remove all the icons in the Dock
    defaults write com.apple.dock persistent-apps -array ""
    defaults write com.apple.dock recent-apps -array ""
    defaults write com.apple.dock persistent-others -array ""

    function dock_item() {
        local app_file_path="$1"
        printf '
        <dict>
            <key>tile-data</key>
                <dict>
                    <key>file-data</key>
                        <dict>
                            <key>_CFURLString</key><string>%s</string>
                            <key>_CFURLStringType</key><integer>0</integer>
                        </dict>
                </dict>
        </dict>', "${app_file_path}"
    }

    function get_system_app_path() {
        local system_preferences_path="/System/Applications/System Preferences.app/"
        local system_settings_path="/System/Applications/System Settings.app/"

        if [ -e "${system_preferences_path}" ]; then
            echo "${system_preferences_path}"
        elif [ -e "${system_settings_path}" ]; then
            # for Ventura
            echo "${system_settings_path}"
        else
            echo "Could not found system app ${system_preferences_path} and ${system_settings_path}" >&2
            exit 1
        fi
    }

    defaults write com.apple.dock persistent-apps -array \
        "$(dock_item /Applications/Google\ Chrome.app)" \
        "$(dock_item /Applications/Visual\ Studio\ Code.app)" \
        "$(dock_item /Applications/iTerm.app)" \
        "$(dock_item /Applications/WorkFlowy.app)" \
        "$(dock_item /Applications/Obsidian.app)" \
        "$(dock_item /Applications/Slack.app)" \
        "$(dock_item /Applications/Microsoft\ Teams\ classic.app)" \
        "$(dock_item /Applications/Microsoft\ Outlook.app)" \
        "$(dock_item "$(get_system_app_path)")"
}

function kill_affected_applications() {
    local apps=(
        "Dock"
        "Finder"
    )
    for app in "${apps[@]}"; do
        killall "${app}" || echo "Process \`${app}\` was not running."
    done
}
