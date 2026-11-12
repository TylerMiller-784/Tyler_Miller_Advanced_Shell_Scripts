#!/bin/bash
# Tyler Miller
# Usage: ./awk.sh [replacement]  < source.txt
# Example: ./awk.sh 'tyler' < names.txt

#If no name is given, use Elizabeth as the default.
replacement=${1:-Elizabeth}

# Use awk to find what we assume to be a name (starts with a capital letter)
# and replace it with the replacement name.
awk -v r="$replacement  " '{ gsub(/[A-Z][a-z]+/, r); print }'
