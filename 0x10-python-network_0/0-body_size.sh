#!/bin/bash
# Get the byte size of the HTTP response header for a given URL.
curl -sI "$1" | awk '/Content-Length/{print $2}'
