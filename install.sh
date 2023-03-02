#!/bin/sh

echo 'What file (For example: "todo.txt") should I print to the console?'
read filename


echo '''
function cd() {
    builtin cd "$@" 
    if [ -f "${filename}" ]; then
        cat ${filename}
    fi
}


export -f cd
''' >> ~/.zshrc
