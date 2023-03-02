#!/bin/sh

echo 'What file (For example: "todo.txt") should I print to the console?'
read filename

echo 'Which shell (sh, bash, zsh, fish and etc.) does this terminal use?'
read shell

echo '''

function cd() {
    builtin cd "$@" 
    if [ -f "${filename}" ]; then
        cat ${filename}
    fi
}


export -f cd
''' >> ~/.${shell}rc
