#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected="$1"
else
    selected=$(find "$HOME/Code/Projects" -mindepth 1 -maxdepth 1 -type d | awk -F '/' '{ print $NF }' | fzf)
fi

if [[ -z "$selected" ]]; then
    exit 0
fi

cd "$HOME/Code/Projects/$selected"
