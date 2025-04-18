#!/usr/bin/env bash

if [[ "$1" == "--utc" ]]; then
    shift
    export TZ=UTC
    tz_label="UTC"
else
    tz_label=$(date +%Z)
fi

if [[ $# -ne 1 ]]; then
    date +%s
    exit 0
fi

timestamp="$1"

date -r "$timestamp" "+%Y-%m-%d %H:%M:%S ($tz_label)"
