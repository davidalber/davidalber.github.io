---
layout:     post
title:      Site Migration to GitHub Pages
date:       2017-12-29 21:35
---

I recently migrated this site from [WordPress](https://wordpress.com/)
hosted on [WebFaction](https://www.webfaction.com/) to a
[Jekyll](https://jekyllrb.com/) site hosted on [GitHub
Pages](https://pages.github.com/). I expect I'll be writing more
content on the new site because there's just less overhead in getting
it done, and I'm writing in a format that I enjoy more. Pages are now
written in Markdown and committed to a
[repository](https://github.com/davidalber/davidalber.github.io). The
production site redeploys automatically, and running the site locally
is a snap.

The old WordPress site was set up almost ten years ago. That was a fun
project at the time because I learned a lot about something I didn't
have experience with. It was also a project of necessity because my
old grad school machine was running my site, and it was shut off
suddenly. WordPress has a lot of power built into it, but lately I've
been longing for more simplicity. I feel like I've got that now with
Markdown content files that I can author using any tool I want, and I
haven't had any trouble learning details about parts of Jekyll when I
need to know.

The style of the site is really minimalist. I took
[Pixyll](http://pixyll.com/) and changed it to something that I was
satisfied with. The old site wasn't responsive or mobile friendly in
any way. The new site is.

I did consider some alternatives before committing to Jekyll on GitHub
Pages. The only dynamic blog I was serious about was
[Ghost](https://ghost.org/). I ran a Ghost blog at work for a while,
and I really like writing in it. The posts are visually pleasing, and
writing in it is just fun. I ended up really wanting something with
low overhead, though, and settled on Jekyll. I was planning on hosting
the site in AWS in one way or another, but then I revisited GitHub
Pages and decided to go for it. I had already done almost all of the
work for the transition at that time, and adjusting to land on GitHub
Pages was easy.

I was going to use the domain provided by GitHub, but I became
concerned about my ability to later migrate and retain search
placement (as if it really matters for this blog). That led me to use
the custom domain. If I change my mind, it will be easier to move to
the GitHub domain than go the other way. One big advantage of using
the GitHub domain is SSL without any effort on my part. While GitHub
Pages lets you use a custom domain, it doesn't have any infrastructure
to use SSL on a custom domain. I ended up using
[Cloudflare](https://www.cloudflare.com/) full SSL, combining the
information
[here](https://hackernoon.com/set-up-ssl-on-github-pages-with-custom-domains-for-free-a576bdf51bc)
and
[here](https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/). The
first article uses flexible SSL, but since full SSL works, I used
that. In both cases browser to Cloudflare traffic is encrypted. The
difference is that in flexible SSL Cloudflare to GitHub Pages is
unencrypted, and in full SSL Cloudflare to GitHub Pages is
encrypted. Full SSL works when the site's certificate does not match
its domain, which is the case on GitHub Pages with a custom domain. In
neither case is traffic encrypted end-to-end. In full SSL Cloudflare
is decrypting responses and encrypting them with its own certificate,
but since readers of this site are not sending any information that is
for my application's eyes only (as it were), this is not so
devastating.
