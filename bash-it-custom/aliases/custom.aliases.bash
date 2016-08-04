#@IgnoreInspection BashAddShebang
## Gradle
alias gwcc='./gradlew clean check'
alias gwcodenarc='./gradlew codenarcMain codenarcTest codenarcIntegrationTest'
alias gw='./gradlew'

## GIT
alias pull="git pull"
alias push="git push"

## SKAT
alias skattunnel='ssh -N -L 127.0.0.1:7011:sktdemo01esb01:7011 -L 127.0.0.1:7013:sktdemo01esb01:7013 admin@sktdemo01jmp01.ccta.dk'


# Lock screen wallpaper
alias lockscreenwallpaperdarlek='cp ~/Dropbox\ \(GR8Conf\)/mac/lockscreens/darlek.png /Library/Caches/com.apple.desktop.admin.png'

# Nice path
alias path='echo -e ${PATH//:/\\n}'

# QuickLook from the terminal
alias ql='qlmanage -p "$@" > /dev/null'

########################################################################################################################
## From bash-it -> osx.aliases.bash
########################################################################################################################
# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# Flush your dns cache
alias flush='dscacheutil -flushcache'

# Show/hide hidden files (for Mac OS X Mavericks)
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE"

# From http://apple.stackexchange.com/questions/110343/copy-last-command-in-terminal
alias copyLastCmd='fc -ln -1 | awk '\''{$1=$1}1'\'' ORS='\'''\'' | pbcopy'



########################################################################################################################
## UNALIAS
########################################################################################################################
unalias piano
unalias irc
unalias rb
unalias py
unalias ipy
unalias edit
unalias pager
unalias pcurl
unalias pass
unalias shuf


########################################################################################################################
## Unused
########################################################################################################################

# Start ScreenSaver. This will lock the screen if locking is enabled.
#alias ss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Locks the screen
#alias lx="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
