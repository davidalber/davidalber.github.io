#!/usr/bin/env bash

tags=`find _posts -type f | xargs grep "tags:" | cut -d[ -f2 | cut -d] -f1 | tr , '\n' | sed "s/^[ ]*//" | sort | uniq`

IFS=$'\n'
for tag in $tags; do
    echo Making tag file for \"$tag\"
    printf -- "---\nlayout: tagpage\ntitle: \"Tag: $tag\"\ntag: $tag\n---\n" > tag/"$tag.md";
done
