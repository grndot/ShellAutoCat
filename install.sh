#!/bin/sh

echo '''
function cd() {
    builtin cd "$@" 
    if [ -f "todo" ]; then
        cat todo
    fi
}


export -f cd
''' >> ~/.zshrc
