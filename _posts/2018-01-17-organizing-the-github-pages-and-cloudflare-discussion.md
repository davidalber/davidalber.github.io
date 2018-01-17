---
layout:     post
title:      Organizing the GitHub Pages and Cloudflare Discussion
date:       2018-01-17 10:59
tags:       [cloudflare, github pages]
---

There's been a lot of talk about Cloudflare in the context of GitHub
Pages with custom domains and SSL
([isaacs/github#156](https://github.com/isaacs/github/issues/156))
over the years, and there was a burst of posts in that issue today due
to a report that Chrome started blocking HTTP sites. From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-358362089):

> Chrome now blocks http sites as of today, apparently even if the
  site does not have any forms, so GitHub pages with custom hostnames
  are officially unusable on a major browser. You have to dig through
  "advanced" settings and click on multiple "unsafe" links.

The discussion has been going for almost four years, so some
information is stale, and it's a little hard to follow on first
glance. I thought this was a good time to organize the Cloudflare
content in that issue, so I created [GitHub Pages and
Cloudflare](/github-pages-and-cloudflare/).