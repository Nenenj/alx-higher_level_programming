#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

response=$(curl -s -w '%{http_code}' "$url")

status_code=$(echo "$response" | tail -n 1)
response_body=$(echo "$response" | head -n -1)

if [ "$status_code" -eq 200 ]; then
    echo "Response Body:"
    echo "$response_body"
else
    echo "Request returned status code: $status_code"
fi
