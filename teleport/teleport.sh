#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    if ! command -v fzf >/dev/null 2>&1; then
        echo "Error: fzf is not installed." >&2
        exit 1
    fi
    selected=$(awk '/^Host / { print $2 }' ~/.ssh/config | fzf)
fi

if [[ -z $selected ]]; then
    exit 0
fi

echo "Teleporting to ... $selected"
ssh "$selected"
