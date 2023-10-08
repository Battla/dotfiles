#!/bin/bash

#declaring every pkg that I want to installed
declare -a pkgToInstalled=("git" "curl" "net-tools" "tmux" "pkg-config")

distro=$(grep -E "^NAME=.*" /etc/os-release)
architecture=$(arch)
version=$(grep -E "^VERSION=.*" /etc/os-release)

for i in "${pkgToInstalled[@]}"; do
    echo "$i"
done

#echo "$distro , $architecture, $version"

if command -v nvm >/dev/null 2>&1; then
    echo "nvm was found"
    node --version
    npm -v

else
    echo "nvm was not found"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    export NVM_DIR="$HOME/.nvm"^
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    command -v nvm
    #. ~/.bashrc
    # if command -v nvm >/dev/null 2>&1; then
    #
    # nvm install --lts
    # nvm use --lts
    #fi

fi
