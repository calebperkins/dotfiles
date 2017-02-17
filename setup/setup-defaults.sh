#! /usr/bin/env bash

# ==============================================
# Finder
# ==============================================
echo "Setting Finder preferences"

# Finder - Show filename extensions
defaults write com.apple.finder AppleShowAllExtensions -bool true

# New window points to home
defaults write com.apple.finder NewWindowTarget -string "PfHm"

CFPreferencesAppSynchronize "com.apple.finder"
# ==============================================
# Terminal
# ==============================================
echo "Setting Terminal preferences"

# Shell opens with: /bin/bash
defaults write com.apple.Terminal Shell -string "/bin/zsh"

CFPreferencesAppSynchronize "com.apple.Terminal"
