#!/usr/bin/env zsh
# Stolen from Kyle Isom (https://github.com/kisom)
# This is a wrapper to try and attach to a running emacs daemon.

if [ -z  "$DISPLAY" ]
then
        NW=""
else
        NW="-n"
fi
emacsclient $NW -c -a '' "$@"
