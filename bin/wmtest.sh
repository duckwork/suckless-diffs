#!/bin/bash

command="valgrind $HOME/wm/dwm/dwm"

Xephyr -ac -br -noreset -screen 800x600 :2 &
sleep 1;
ulimit -c unlimited

# DISPLAY=:2 xrdb -merge ~/.Xresources
DISPLAY=:2 xsetroot -solid "#fdf6e3"

DISPLAY=:2 exec $command

echo "return = $?"
