---
layout:     post
title:      Geneagrapher 0.2 Released
date:       2008-10-06 23:06
tags:       [geneagrapher]
---

I am pleased to announce the first release of the Mathematics Genealogy Grapher (Geneagrapher) package. The Geneagrapher has been around for a couple years, but it was previously only a web-based tool. ~~At this time the original version is still available on my old site.~~ This package is written in Python, so users will need to have Python installed.

Here are the most significant changes, from the perspective of the user:

- Descendant trees. Now trees can be built placing a starting node at the top and graphing all of its descendants. A couple points on this:
  - These sorts of graphs tend to have a lot of “fan out” because some people have a lot of students.
  - Be careful. Do not inadvertently (or intentionally!) run a job that requests the data for thousands of nodes.
- Better character handling. I believe all characters are now displayed correctly, as long as the generated dot file is processed by [Graphviz](http://www.graphviz.org/) a certain way (see the [Geneagrapher 0.2 Usage Guide](http://www.davidalber.net/2008/10/geneagrapher-02-usage-guide/)).
- No limit on the number of starting nodes.
- This is a client application, meaning the user installs it somewhere and runs it there. Furthermore, this package only generates the input file to Graphviz, so that also needs to be installed. This is probably more of a hassle than most Geneagrapher users want to go through (not all, though), but this is just the first step.

Additionally, behind-the-scenes changes happened:

- Large portions of the code were rewritten.
- Added a test suite to make it more maintainable. In particular, this should allow quicker diagnosis and modifications when the Mathematics Genealogy Project pages have changed.

**Getting the Package**

For downloading and installation information, see the [Geneagrapher Page](http://www.davidalber.net/geneagrapher/).

**Instructions**

Usage examples are in the [Geneagrapher 0.2 Usage Guide](http://www.davidalber.net/2008/10/geneagrapher-02-usage-guide/).
