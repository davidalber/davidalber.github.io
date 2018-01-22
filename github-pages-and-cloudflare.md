---
layout: page
title: GitHub Pages and Cloudflare
permalink: /github-pages-and-cloudflare/
tags: [cloudflare, github pages]
---
_Last updated January 17, 2018._

## Introduction
Since [isaacs/github#156](https://github.com/isaacs/github/issues/156)
was started in early 2014, there's been a lot of discussion about the
lack of a first-class SSL solution for GitHub Pages using custom
domains. Using Cloudflare to provide SSL for a site hosted in GitHub
Pages has been one recurring theme.

The story around Cloudflare and GitHub Pages has changed substantially
over that period of time, and it's not immediately clear to a
first-time reader which information is still correct. I've created
this page to keep track of what's been said and the current validity,
as best as I know.

_Although I am claiming some information in the issue is incorrect,
please do not interpret this page as criticism._ Things change over
time, information may have gone stale, and in some cases, information
was updated further down the thread. I'm organizing it all here so
that it's not necessary to go through the entire issue for complete
context. I'm also prone to making mistakes, and I may just be wrong on
some points.

## Current State
At this point, you can use Cloudflare to provide SSL for your GitHub
Pages site that has a custom domain. If you follow [best
practices](https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/)
and use full SSL, responses will be encrypted from GitHub to
Cloudflare and from Cloudflare to the client (and requests will get a
similar, in-the-other-direction, treatment). The payload will be
plaintext at some point in Cloudflare's system, so this is not
end-to-end encryption, but there is no over-the-internet plaintext
transmission.

You don't want to use this if you are returning sensitive information
or if you are receiving sensitive information from the client.

Pros of using Cloudflare with full SSL:
- Your site is served to the client over HTTPS.
- Over-the-internet communication to and from your site is encrypted.

Cons:
- The request and response are plaintext at some point in Cloudflare's
  systems.
- According to [this
  comment](https://github.com/isaacs/github/issues/156#issuecomment-328592136),
  you might find your site blocked because it shares an IP address
  with another site fronted by Cloudflare that has been blocked. I
  haven't done any investigation to understand how commonly this
  happens or the typical regions where this occurs.

## History

In this section I give updates on some of the comments made in
[isaacs/github#156](https://github.com/isaacs/github/issues/156).

From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-50199610)
on July 25, 2014:

> You can use Cloudflare to create an HTTPS connection between user
  and Cloudflare, but not between Cloudflare and GitHub Pages.

This is no longer true. You can use Cloudflare's full SSL to have an
HTTPS connection between Cloudflare and GitHub Pages. Read about it
[here](https://support.cloudflare.com/hc/en-us/articles/200170416-What-do-the-SSL-options-mean-).

From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-57261627)
on September 29, 2014:

> It's worth noting that without configuration changes on either
  GitHub's or CloudFlare's end (or introducing a custom proxy), using
  CloudFlare for a GHP site would result in encryption for only the
  first leg of the journey (user->CF) but not the rest (CF->GHP).

Both legs of the journey described in this comment are encrypted when
using full SSL. Read about it
[here](https://support.cloudflare.com/hc/en-us/articles/200170416-What-do-the-SSL-options-mean-).

From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-57271637)
on September 29, 2014:

> That (and the reason why Strict SSL is more secure than Full SSL) is
  because CloudFlare isn't making requests to
  https://website.github.io. CloudFlare's systems aren't GitHub-aware,
  it doesn't know that your domain actually maps to some *.github.io
  domain.

If you follow the instructions in Step 2
[here](https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/),
your *.github.io domain is used in the Cloudflare DNS configuration.

From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-328551253)
on September 11, 2017:

> I'm not sure what happened since ... three years ago, maybe github
  and Cloudflare became aware of each other? Because it seems my
  personal site ... is encrypted now and hassle free.

This has been my experience.

From [this
comment](https://github.com/isaacs/github/issues/156#issuecomment-328592136)
on September 11, 2017:

> The issue with using cloudflare is that you can get an IP that is
  blacklisted, like how the github-hosted elixir language front-page
  is blocked in Russia and a few other areas because it happened to
  get such an IP from cloudflare. Thus cloudflare is not a good
  recommendation.

I don't really know about this and haven't investigated further. If
this concerns you, then it's a good call out.
