#!/bin/bash

cwd="$(pwd)"

for d in *; do
  if [[ -d "$d" ]]; then
    cd $d;
    make && sudo make install;
    cd "$cwd";
  fi
done
