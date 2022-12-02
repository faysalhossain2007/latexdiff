#!/bin/bash

for name in ./minor/*.tex; do
    [ ! -f "$name" ] && continue  
    minor="$name"
    readarray -d / -t tokens <<< "$name"
    
    submission="./submission/${tokens[-1]}"
    difffile="./diff/${tokens[-1]}"

    latexdiff ${submission} $minor > $difffile


done
