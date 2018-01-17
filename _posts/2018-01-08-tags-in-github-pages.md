---
layout:     post
title:      Tags in GitHub Pages
date:       2018-01-08 23:48
tags:       [meta, github pages]
---

I had this Jekyll site almost ready to go before I decided to use
GitHub Pages. One thing that I lost in going with GitHub pages was my
tagging code. This happened because GitHub Pages does not support
custom Ruby code, which is what drove my tag generation. Luckily, I
found [Jekyll Tags on Github
Pages](http://longqian.me/2017/02/09/github-jekyll-tag/), which I
followed almost completely (minus the tag cloud section).

One difference is that I wrote my own [tag page generation
script](https://github.com/davidalber/davidalber.github.io/blob/master/make-tag-files.sh),
instead of using the one in that post.

```sh
#!/usr/bin/env bash

tags=`find _posts -type f | xargs grep "tags:" | cut -d[ -f2 | cut -d] -f1 | tr , '\n' | sed "s/^[ ]*//" | sort | uniq`

IFS=$'\n'
for tag in $tags; do
    echo Making tag file for \"$tag\"
    printf -- "---\nlayout: tagpage\ntitle: \"Tag: $tag\"\ntag: $tag\n---\n" > tag/"$tag.md";
done
```
