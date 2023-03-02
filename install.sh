#!/bin/sh

echo 'What file (For example: "todo.txt") should I print to the console?'
read filename

echo 'Which shell (sh, bash, zsh, fish and etc.) does this terminal use?'
read shell

echo "
### Start Of ShellAutoCat ###

function cd() {
    builtin cd \"\$@\" 
    if [ -f $filename ]; then
        cat $filename
    fi
}

export cd

if [ -f $filename ]; then
    cat $filename
fi

### End Of ShellAutoCat ###
" >> ~/.${shell}rc
