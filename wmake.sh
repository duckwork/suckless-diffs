#!/bin/bash

cwd="$(pwd)"

for d in *; do
  if [[ -d "$d" ]]; then
    cd $d;
    make clean;
    make && sudo make install;
    cd "$cwd";
  fi
done
