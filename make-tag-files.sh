#!/usr/bin/env bash

tags=`find _posts -type f | xargs grep "^tags:" | cut -d[ -f2 | cut -d] -f1 | tr , '\n' | sed "s/^[ ]*//" | sort | uniq`

IFS=$'\n'
for tag in $tags; do
    echo Making tag file for \"$tag\"
    printf -- "---\nlayout: tagpage\ntitle: \"Tag: $tag\"\ntag: $tag\n" > tag/"$tag.md";
    if [ -f _tag_descriptions/$tag ]; then
	printf -- "description: \"`cat _tag_descriptions/$tag`\"\n" >> tag/"$tag.md";
    fi
    printf -- "---\n" >> tag/"$tag.md";
done
