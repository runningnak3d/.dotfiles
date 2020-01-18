#!/bin/zsh
echo `arecord -i /dev/null -f S16_LE -r 44100 -c 2 -V mono -D sysdefault -q 2>&1` > ./test2.file
