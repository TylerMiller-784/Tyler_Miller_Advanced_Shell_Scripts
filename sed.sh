#!/bin/bash
# Tyler Miller
# Usage: ./sed.sh [replacement]  < source.txt
# Example: ./sed.sh 'tyler' < names.txt

# Replacement defaults to Elizabeth if no argument is provided.
replacement=${1:-Elizabeth}

# Use sed to find what we assume to be a name (starts with a capital letter)
# and replace it with the replacement name.
sed -E "s/[A-Z][a-z]+/${replacement}/g"
