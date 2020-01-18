#!/bin/zsh
export ARTIST=`playerctl -p io.github.Pithos metadata artist`
export TITLE=`playerctl -p io.github.Pithos metadata title`
echo "$ARTIST - $TITLE"
