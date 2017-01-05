#!/usr/local/bin/bash

function createDirectory {
    if [[ ! -d "$1" ]]
    then
        mkdir -p "$HOME/.vim/$1"
    fi
}

createDirectory "autoload" \
    && createDirectory "bundle" \
    && curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
