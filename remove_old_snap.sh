#!/bin/bash
# Run this programs using root access

snap list --all | awk '/disabled/{print $1, $3}' | 
    while read snapname rev; do
        snap remove "$snapname" --revision="$rev"
    done