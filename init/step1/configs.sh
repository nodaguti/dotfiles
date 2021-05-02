#!/bin/sh

###
# Link config files
###

ln -s "$HOME/workspaces/dotfiles/configs/.editorconfig" "$HOME/.editorconfig"
ln -s "$HOME/workspaces/dotfiles/configs/.gitconfig" "$HOME/.gitconfig"
ln -s "$HOME/workspaces/dotfiles/configs/.gitignore" "$HOME/.gitignore"
sudo ln -s "$HOME/workspaces/dotfiles/configs/dnscrypt-proxy.toml" /usr/local/etc/dnscrypt-proxy.toml


###
# General UI/UX
###

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Date options
defaults write com.apple.menuextra.clock 'DateFormat' -string 'EEE MMM d  h:mm:ss a'

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set standby delay to 24 hours (default is 1 hour)
sudo pmset -a standbydelay 86400

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable automatic termination of inactive apps
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true

# Set Help Viewer windows to non-floating mode
defaults write com.apple.helpviewer DevMode -bool true

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


###
# Dock
###

# Show the Dock in left
defaults write com.apple.dock orientation -string "left"

# Wipe all app icons from the Dock
defaults write com.apple.dock persistent-apps -array

# Set the icon size
defaults write com.apple.dock tilesize -int 39

# Magnificate the Dock
defaults write com.apple.dock magnification -bool true

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Put display to sleep
defaults write com.apple.dock wvous-tl-corner -int 10
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → No-op
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → No-op
defaults write com.apple.dock wvous-br-corner -int 0
defaults write com.apple.dock wvous-br-modifier -int 0


###
# Finder
###

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Set Desktop as the default location for new Finder windows
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop"

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Show Tab bar in Finder
defaults write com.apple.finder ShowTabView -bool true

# Show the ~/Library directory
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Show the hidden files
defaults write com.apple.finder AppleShowAllFiles YES

# Avoid creating `.DS_Store` files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Disable the "Are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use column view in all Finder windows by default
# Four-letter codes for the other view modes: icnv|Nlsv|clmv|Flwv
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Arrange by kind
defaults write com.apple.Finder FXPreferredGroupBy kind
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy kind" ~/Library/Preferences/com.apple.finder.plist


###
# Safari
###

# Enable the `Develop` menu and the `Web Inspector`
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true

# Enable `Debug` menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Show the full URL in the address bar (note: this will still hide the scheme)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Add a context menu item for showing the `Web Inspector` in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Don't remember passwords
defaults write com.apple.Safari AutoFillPasswords -bool false

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Enable “Do Not Track”
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

# Update extensions automatically
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true


###
# Trackpad, mouse, keyboard, Bluetooth accessories, and input
###

# Enable `Tap to click`
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable `Secondary click`
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Enable `Three Finger Drag`
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en-GB" "en-US" "ja-US"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=JPY"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Asia/Tokyo" > /dev/null


###
# Screen
###

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots to the desktop/screenshots
mkdir "${HOME}/Desktop/screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Desktop/screenshots"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Save screenshots as PNGs
defaults write com.apple.screencapture type -string "png"

# Enable subpixel font rendering on non-Apple LCDs
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true


###
# xbar
###

mkdir -p "${HOME}/Library/Application Support/xbar"
ln -s "${HOME}/workspaces/dotfiles/xbar/plugins" "${HOME}/Library/Application Support/xbar/plugins"

###
# iTerm2
###

# Set the preference directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "${HOME}/workspaces/dotfiles/configs"
