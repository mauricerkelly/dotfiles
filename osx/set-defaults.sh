if ! is_mac; then
    return
fi

# Sets reasonable OS X defaults.
#
# Or, in other words, set shit how I like in OS X.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.osx
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat
#defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
#defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder
chflags nohidden ~/Library

# Display the dock immediately
defaults write com.apple.Dock autohide-delay -float 0

# Enable text selection in QuickLook
defaults write com.apple.finder QLEnableTextSelection -bool TRUE

# Lengthen timeout for switching between spaces to 3 secs (should be 0.75)
defaults write com.apple.dock workspaces-edge-delay -float 3    


