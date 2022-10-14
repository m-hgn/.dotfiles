#!/bin/sh

# get application name
xprop -id $(xdotool getwindowfocus) WM_CLASS |
    sed 's/.*, \"\([a-Z][a-Z]*\).*/\L\1/' |
    sed 's/WM_CLASS:  not found\./bspwm/'

