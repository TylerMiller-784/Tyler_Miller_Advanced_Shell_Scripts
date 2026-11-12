#!/bin/bash
# Tyler Miller
# Usage: ./grep.sh [replacement]  < source.txt
# Example: ./grep.sh '+' < delimited.txt

# Replacement defaults to _ if no argument is provided.
replacement=${1:-_}

# Use grep to find lines that contain spaces or colons and then use sed to replace them with the replacement.
# Only lines that contain spaces or colons are replaced and printed.
grep -E '[[:space:]:]' | sed -E "s/[[:space:]:]/${replacement}/g"
