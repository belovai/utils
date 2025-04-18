#!/usr/bin/env bash

if [[ -z "$1" ]]; then
    echo "Please specify PHP version (e.g. 8.2)"
    exit 1
fi

if [[ -z "$2" ]]; then
    docker run -ti --rm php:"$1"
else
    docker run -ti --rm -v "$(pwd)":/this php:"$1" php /this/"$2"
fi

echo
