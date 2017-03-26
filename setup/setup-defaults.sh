#! /usr/bin/env bash

function CFPreferencesAppSynchronize() {
    python - <<END
from Foundation import CFPreferencesAppSynchronize
CFPreferencesAppSynchronize('$1')
END
}

# ==============================================
# Finder
# ==============================================
echo "Setting Finder preferences"

# Finder - Show filename extensions
defaults write com.apple.finder AppleShowAllExtensions -bool true

# New window points to home
defaults write com.apple.finder NewWindowTarget -string "PfHm"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning when removing from iCloud Drive
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false

# delete items in trash after 30 days automatically
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

CFPreferencesAppSynchronize "com.apple.finder"

# ==============================================
# Terminal
# ==============================================
echo "Setting Terminal preferences"

# Shell opens with: /bin/bash
defaults write com.apple.Terminal Shell -string "/bin/zsh"

CFPreferencesAppSynchronize "com.apple.Terminal"

# ==============================================
# Safari & WebKit
# ==============================================
echo "Setting Safari & WebKit preferences"

# Appearance

# Show status bar
defaults write com.apple.Safari ShowStatusBar -bool true

# Do not track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Don't open "safe" files after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

CFPreferencesAppSynchronize "com.apple.Safari"
