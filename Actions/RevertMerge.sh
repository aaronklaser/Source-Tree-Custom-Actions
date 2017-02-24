#!/bin/bash

# Revert Merge
# Revert a Merge from current branch and commit immediately
# Created by Aaron Klaser on 02.24.17

result=$(git revert $1 -m 1 --no-edit)
echo "Commit SHA1: $1"
echo "$result"