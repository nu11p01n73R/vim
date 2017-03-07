#!/usr/local/bin/bash

function createDirectory {
        if [[ ! -d "$1" ]]
        then
                mkdir -p "$HOME/.vim/$1"
        fi
}

function installPathogen {
        if [[ ! -f "$HOME/.vim/autoload/pathogen.vim" ]]
        then
                curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
        fi
}

function createVimrc {
        if [[ ! -f "$HOME/.vimrc" ]]
        then
                ln -s "$HOME/.vim/vimrc" "$HOME/.vimrc"
        fi
}

createDirectory "autoload" \
        && createDirectory "bundle" \
        && installPathogen  \
        && createVimrc
