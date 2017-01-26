#@IgnoreInspection BashAddShebang

## COPY
# cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/

#export GRAILS_OPTS="-Xmx2G -Xms512m -Dfile.encoding=UTF-8 -Djava.encoding=UTF-8"
export GRAILS_OPTS="-Xmx2G -Xms512m -XX:MaxPermSize=512m -Dfile.encoding=UTF-8 -Djava.encoding=UTF-8"

# Switch between multiple java versions -> http://askubuntu.com/a/845300
export JAVA_HOME="$(jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home"));')"

export LC_ALL=da_DK.UTF-8

## Removes (ugly!) clock char from bash-it theme
export THEME_SHOW_CLOCK_CHAR=false


## Enables dual network at SKAT (WiFi must be at the top!)
function ccta() {
    sudo route -n delete 192.168.146.0 10.3.0.1 -netmask 255.255.255.0
    sudo route -n delete 172.20.0.0 10.3.0.1 -netmask 255.255.0.0
    sudo route -n delete 172.23.0.0 10.3.0.1 -netmask 255.255.0.0
    sudo route -n delete 172.24.0.0 10.3.0.1 -netmask 255.255.0.0
    sudo route -n add 192.168.146.0 10.3.0.1 -netmask 255.255.255.0
    sudo route -n add 172.20.0.0 10.3.0.1 -netmask 255.255.0.0
    sudo route -n add 172.23.0.0 10.3.0.1 -netmask 255.255.0.0
    sudo route -n add 172.24.0.0 10.3.0.1 -netmask 255.255.0.0
}


