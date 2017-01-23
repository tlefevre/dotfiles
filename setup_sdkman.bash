#!/usr/bin/env bash

source ~/.bashrc

echo "Setting up sdkman..."

sdk install grails
sdk install grails 2.5.0  < /dev/null #Quiet mode (https://github.com/sdkman/sdkman-cli/issues/101)
sdk install groovy
sdk install gradle
sdk install maven