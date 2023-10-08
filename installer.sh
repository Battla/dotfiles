#!/bin/bash


#declaring every pkg that I want to installed
declare -a pkgToInstalled=("git" "curl" "net-tools" "tmux" "pkg-config")

for i in "${pkgToInstalled[@]}"; do
    echo "$i"
done

nvm=$(command -v nvm)



if ! $nvm >/dev/null 2>&1; then
   echo "nvm was not found"
   #curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
   # nvm install --lts
   # nvm use --lts
else
    
    echo "nvm was found"
fi
