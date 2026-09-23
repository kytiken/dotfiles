#!/bin/sh
set -eu
defaults write com.apple.Dock appswitcher-all-displays -bool true
killall Dock
