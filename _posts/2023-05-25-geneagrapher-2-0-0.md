---
layout:     post
title:      Geneagrapher 2.0.0
date:       2023-05-25 16:03
tags:       [geneagrapher]
image:      images/gauss-geneagraph-beginning.png
summary:    Geneagrapher 2.0.0 delivers the easist way to build a math genealogy and important improvements.
---

I recently completed one of Geneagrapher's once-or-twice-per-decade
updates. This update makes Geneagrapher easier than ever to use! It
also delivers significant amounts of rebuilt code and overall
modernization. If you are a math or math history enthusiast or have a
doctoral degree and mathematician "ancestors", you might want to check
it out.

## What is Geneagrapher?
Geneagrapher is a tool that quickly constructs mathematician academic
genealogies using data from the [Math Genealogy
Project](https://www.mathgenealogy.org/) (thank you!). Once the
genealogy data is assembled, it can be visualized as a graph, such as
the image below. I have maintained Geneagrapher since 2006, when I was
in graduate school.

![Beginning of Carl Gauß's math ancestry]({{ site.image_base }}/gauss-geneagraph-beginning.png)

## What's New?
- The [Geneagrapher Observable
  notebook](https://observablehq.com/@davidalber/geneagrapher). This
  works in your web browser and is the easiest way to build a math
  genealogy.
- Updates to the [Geneagrapher Python
  package](https://github.com/davidalber/geneagrapher):
  - Increased flexibility in controlling the graph traversal
    directions. Previously, traversal from the graph's starting nodes
    was either all in the advisor direction or in the descendant
    direction. Traversal directions are now specified on a per-node
    basis. This has led to some syntax changes in the tool's usage, so
    commands that worked in Geneagrapher 1.0.0 will not work in 2.0.0.
  - The previous versions of Geneagrapher were targeted at
    Python 2. Geneagrapher 2.0.0 is the first version that is targeted
    at Python 3.

More changes are detailed in the [release
notes](https://github.com/davidalber/geneagrapher/releases/tag/v2.0.0).

## How to Use Geneagrapher
You have two options:
- Use the [Observable
  notebook](https://observablehq.com/@davidalber/geneagrapher) in your
  web browser.
- Install the Python package. Everything you need to know about using
  the Geneagrapher Python package is
  [here](https://github.com/davidalber/geneagrapher).
  
## How Geneagrapher Got Here
It has been a long time since there was a major Geneagrapher update. I
believed this project was de facto done or dead, but over the years a
few users have filed issues or made
[contributions](https://github.com/davidalber/geneagrapher/graphs/contributors). Then,
the Python Software Foundation finally removed support for Python 2
and the world switched to Python 3. That created problems for
Geneagrapher's users since it didn't work in Python 3 without some
modification. Users also began having problems with some of the old
dependencies. I decided to work on an update to eliminate the old-code
problems that users were experiencing, but I wanted to do more than
the minimal fix in this case.

Geneagrapher was originally a web service hosted on my graduate school
workstation. I eventually graduated, and that ultimately led to the
shutdown of that service. That impending shutdown is what led to the
creation of the Python package that has been available
since 2008. Since that time I have wanted to provide a service that
could make it easy for a larger audience to use Geneagrapher. For a
variety of reasons (including the difficulty of hosting a service,
initially), that didn't happen until now.

I wanted to make Geneagrapher available to a larger audience. This was
approached by publishing an Observable notebook, which empowers users
who were not interested in installing a Python package. In order to
support the notebook and the Python package with a shared code base, I
reorganized the code and have also deployed a service that is used to
retrieve records during the graph-building process.

In fact, it's not absolutely necessary to have a Geneagrapher service
to make it easy for users to build graphs. I could have reimplemented
the Geneagrapher data extraction in JavaScript and built an Observable
notebook that retrieves data, in addition to rendering graphs. Still,
I built a service, primarily for two reasons:

1. I wanted to learn how much Geneagrapher is used.
2. I wanted to centralize caching of mathematician records retrieved
   from the Math Genealogy Project. The benefits of this are that it's
   much faster for users to build graphs, and it reduces request
   volume to the Math Genealogy Project by a lot.

## Feedback
If you find Geneagrapher useful and want to say so, please star [the
repository](https://github.com/davidalber/geneagrapher) or send me an
email or message on LinkedIn. It's always motivating to hear that
people have enjoyed using Geneagrapher.

If you have other feedback or requests, consider contacting me or
[opening an
issue](https://github.com/davidalber/geneagrapher/issues/new).
