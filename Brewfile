## https://github.com/Homebrew/homebrew-bundle
# Look at 'brew bundle cleanup'

# Taps
tap 'caskroom/cask'
tap 'caskroom/fonts'
tap 'caskroom/versions'
tap 'homebrew/bundle'
tap 'homebrew/dupes'

# Make sure apps get installed in system Applications dir
cask_args appdir: '/Applications'

# Install GNU core utilities (those that come with OS X are outdated)
brew 'coreutils'

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew 'findutils'

# Install Bash 4
brew 'bash'

# Install more recent versions of some OS X tools
brew 'homebrew/dupes/grep'

# Install Binaries
brew 'git'
brew 'tree'
#brew 'mackup'
brew 'node'
brew 'trash'
brew 'wget'

# Development
brew 'mysql', restart_service: true, conflicts_with: ['homebrew/versions/mysql56']
brew 'autojump'
brew 'docker'
brew 'jenv'
brew 'httpie'

# Apps
cask 'java'
cask 'java7'
cask 'atom'
cask 'adium'
cask 'adobe-reader'
cask 'bettertouchtool'
cask 'caffeine'
cask 'commander-one'
cask 'dropbox'
cask 'evernote'
cask 'firefox'
cask 'flycut'
cask 'google-chrome'
#cask 'intellij-idea' #Has problems with patch updates
cask 'keyboardcleantool'
cask 'lastpass'
cask 'mysqlworkbench'
cask 'postgres'
cask 'skype'
cask 'slack'
cask 'sequel-pro'
cask 'sourcetree'
cask 'spotify'
cask 'sublime-text'
cask 'vagrant'
cask 'virtualbox'
cask 'virtualbox-extension-pack'
cask 'vlc'
cask 'wkhtmltopdf'

# Quicklook
cask 'qlcolorcode'
cask 'qlmarkdown'
cask 'quicklook-json'
cask 'quicklook-csv'
cask 'qlstephen'
cask 'betterzipql'
cask 'suspicious-package'