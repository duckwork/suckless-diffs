#!/bin/bash

cd $HOME/wm
cwd="$(pwd)"

for d in *; do
  if [[ -d "$d" ]]; then
    cd $d;
    make clean;
    make;
    if [[ $? == 0 ]] && [[ "$1""" == "-i" ]]; then
      sudo make install;
    fi
    cd "$cwd";
  fi
done
