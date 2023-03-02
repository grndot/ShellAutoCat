#!/bin/sh


function cd() {
    builtin cd "$@" 
    if [ -f "todo" ]; then
        cat todo
    fi
}


export -f cd
