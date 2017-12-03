---
layout:     post
title:      Geneacache
date:       2012-01-09 00:13
tags:       [geneacache, geneagrapher]
---

First a note about the [Geneagrapher](/geneagrapher/): a new release
is impending. The release includes many internal changes: lots of
refactoring to improve the code, better conformance to Python coding
conventions (remember, I wrote the first version a long time ago and
my proficiency with Python has improved a lot since then), better code
coverage by the tests, better design to enable more extensibility, and
a local caching mechanism to eliminate multiple network requests for
the same record. I will explain what I mean by extensibility in a
later post.

Now, the point of this post: thanks to the changes to Geneagrapher
mentioned above, I have set up a web-based
"[Geneacache](http://math-genealogy.davidalber.net/)". It is a _very
early_ preview, so the API may change in the near future. A lot of
other changes are needed, too, and it is possible I will move the page
to a different address. Here’s the idea: your software can use the
Geneacache to retrieve records from the [Mathematics Genealogy
Project](https://www.genealogy.math.ndsu.nodak.edu/) (MGP), saving you
the trouble of scraping the MGP pages or having to use Geneagrapher to
do it for you. The response contains the record’s information in
JSON. For example, for
[Gauß](http://math-genealogy.davidalber.net/record/18231) you
currently get:

```
{
    "advisors": [
        18230
    ],
    "descendants": [
        151876,
        55175,
        29642,
        18603,
        19953,
        29458,
        62547,
        18232,
        18233
    ],
    "institution": "Universität Helmstedt",
    "name": "Carl Friedrich Gauß",
    "year": 1799
}
```

Behind the scenes, the Geneacache either returns what it has locally
or fetches it from the MGP, stores it locally, and then returns the
record to you.

This is not used for anything at the moment, but I intend to start
exposing Geneagrapher through a web page again (history lesson: the
first version of Geneagrapher, from when I was in graduate school, was
a web service) at some point in the future. The Geneagrapher client is
nice and all, but I imagine most users are not interested in
installing it locally to use it.

I am also planning to get in touch with the MGP folks about this and
related topics.
