#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

url=$1

response=$(curl -s -w '\n%{size_download}\n' -o /dev/null "$url")

response_body_size=$(echo "$response" | tail -n 1)
response_body=$(echo "$response" | head -n -1)

echo "Response Body:"
echo "$response_body"
echo "Response Body Size: $response_body_size bytes"
