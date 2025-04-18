#!/usr/bin/env bash 

temp_headers=$(mktemp 2>/dev/null || mktemp -t trace)
trap 'rm -f "$temp_headers"' EXIT

trace_url() {
    local url=$1
    local status location proto base
    local count=0

    while true; do
        status=$(curl -s -D "$temp_headers" -o /dev/null -w "%{http_code}" -k "$url")

        count=$((count + 1))
        printf "%d: %s %s\n" "$count" "$url" "$status"

        location=$(grep -i '^Location:' "$temp_headers" | awk '{print $2}' | tr -d '\r\n')

        if [[ -z "$location" || ! "$status" =~ ^3[0-9][0-9]$ ]]; then
            break
        fi

        if [[ "$location" =~ ^// ]]; then
            proto=$(echo "$url" | grep -o '^[^:]*:')
            location="${proto}${location}"
        elif [[ "$location" =~ ^/ ]]; then
            base=$(echo "$url" | grep -o '^https\?://[^/]*')
            location="${base}${location}"
        fi

        url="$location"
    done
}

if [ $# -eq 0 ]; then
    echo "missing url"
    exit 1
fi

for url in "$@"; do
    trace_url "$url"
    echo "---"
done
