#!/bin/sh

start_pattern="### Start Of ShellAutoCat ###"
end_pattern="### End Of ShellAutoCat ###"

files=$(find ~ -maxdepth 1 -name ".*shrc")

for file in $files; do
  sed -i "/$start_pattern/,/$end_pattern/d" "$file"
done

echo 'ShellAutoCat has been uninstalled from .*shrc!'
