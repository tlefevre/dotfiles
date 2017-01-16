#!/usr/bin/env bash

source $BASH_IT/bash_it.sh

echo "Setting up bash-it..."

echo "Setting up aliases"
bash-it enable alias general

echo "Setting up plugins"
bash-it enable plugin alias-completion fasd git history sdkman

echo "Setting up completions"
bash-it enable completion bash-it git gradle sdkman system vagrant
