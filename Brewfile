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

# Apps
cask 'java'
cask 'java7'
cask 'atom'
cask 'adium'
cask 'dropbox'
cask 'evernote'
cask 'firefox'
cask 'google-chrome'
cask 'google-drive'
cask 'mysqlworkbench'
cask 'skype'
cask 'slack'
cask 'sublime-text'
cask 'vagrant'
cask 'virtualbox'
cask 'virtualbox-extension-pack'
cask 'vlc'
cask 'wkhtmltopdf'

cask 'bettertouchtool'
cask 'flycut'
cask 'sourcetree'
cask 'intellij-idea'
cask 'lastpass'
cask 'postgres'
