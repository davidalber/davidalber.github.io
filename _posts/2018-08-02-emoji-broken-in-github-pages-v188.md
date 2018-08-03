---
layout:     post
title:      Emoji Broken in github-pages v188
date:       2018-08-02 22:11
tags:       [meta]
---

After publishing ["E-Bikes and Trails"](/2018/08/e-bikes-and-trails/)
I noticed emoji on this site was broken. Instead of seeing
:bicyclist:, the browser rendered \:&#8203;bicyclist:.

It's not just me. This has been reported in
[jekyll/jemoji#80](https://github.com/jekyll/jemoji/issues/80).

To fix this for now, I pinned github-pages to v187 in the Gemfile,
followed by a `bundle update github-pages`. This was done in
[1d73a64](https://github.com/davidalber/davidalber.github.io/commit/1d73a64263a90331a2fb48517c6ce7a5ded95c1e).
