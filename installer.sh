#!/bin/bash


#declaring every pkg that I want to installed
declare -a pkgToInstalled=("git" "curl" "net-tools" "tmux" "pkg-config")

distro=$(grep -E "^NAME=.*" /etc/os-release)
architecture=$(arch)
version=$(grep -E "^VERSION=.*" /etc/os-release)

for i in "${pkgToInstalled[@]}"; do
    echo "$i"
done

nvm=$(command -v nvm)

echo "$distro , $architecture, $version"

if ! $nvm >/dev/null 2>&1; then
   echo "nvm was not found"
   # curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
   #. ~/.bashrc
   # if ! $nvm >/dev/null 2>&1; then
   #
   # nvm install --lts
   # nvm use --lts
   #fi
else
    
    echo "nvm was found"
fi
