#!/usr/bin/env bash

list=$(git ls-files --others --exclude-standard)

for item in $list; do
    echo "upload file $item"
    git add $item
    git commit -m "upload"
    git push
done
