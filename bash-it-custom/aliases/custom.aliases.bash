#@IgnoreInspection BashAddShebang

## COPY
# cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/

## Gradle
alias gwcc='./gradlew clean check'
alias gwcodenarc='./gradlew codenarcMain codenarcTest codenarcIntegrationTest'
alias gw='./gradlew'

## GRAILS
alias gt='grails -reloading test --non-interactive'
alias gta='grails test-app -echoOut --non-interactive'
alias grun='grails -reloading run-app --non-interactive'
alias gcta='clear && grails clean-all && grails compile && grails test-app'
alias opentests='open target/test-reports/html/index.html'

## JAVA
alias useJava8='yes | sudo apt-get install oracle-java8-set-default && source ~/.bashrc'
alias useJava7='yes | sudo apt-get install oracle-java7-set-default && source ~/.bashrc'

## Open reports
alias opentestreports='open build/reports/tests/index.html'

## GIT
alias pull="git pull"
alias push="git push"
alias openGithubPage="openGithubPageFunc"

## SKAT
alias skattunnel='ssh -N -L 127.0.0.1:7011:sktdemo01esb01:7011 -L 127.0.0.1:7013:sktdemo01esb01:7013 admin@sktdemo01jmp01.ccta.dk'
alias skatdualnetwork='ccta'

# sublime text
alias s='subl'

# Nice path
alias path='echo -e ${PATH//:/\\n}'


########################################################################################################################
## From bash-it -> osx.aliases.bash
########################################################################################################################

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
#unalias pcurl
unalias pass
#unalias shuf

