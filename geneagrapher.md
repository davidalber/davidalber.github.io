---
layout: page
title: Mathematics Genealogy Grapher
permalink: /geneagrapher/
---

## What is it?
The Mathematics Genealogy Grapher (Geneagrapher) is a tool to build
graphs of mathematical genealogies. Geneagrapher gets data using
information from the [Mathematics Genealogy
Project](https://genealogy.math.ndsu.nodak.edu/) by starting at
specified nodes and then crawling through the ancestor or descendent
connections from mathematician to mathematician. The result is a "dot"
file that contains each of the mathematicians as nodes with the edges
between them indicating advisor-advisee connections.

Geneagrapher code and usage information lives
[here](https://github.com/davidalber/geneagrapher).

## History
- The original version of the Geneagrapher was deployed in October
  2006 and was a web-based service where users entered information
  about the graph they wanted to construct. It was available at my old
  site until its deletion sometime in August 2009. It was only able to
  produce ancestor trees.
- Version 0.2 was released on October 6, 2008 as a Python package that
  a user runs from his or her workstation. This version is able to
  produce ancestor and descendant trees, and since it runs from the
  user's machine, there is no software-imposed limit on the number of
  starting nodes. Try not to abuse the power.
- Version 0.2-r1 was released on October 7, 2008 and was a maintenance
  release related to installation activities on Python 2.6.
- Version 0.2.1 was released on September 1, 2009. This version fixed
  a parsing bug that caused only one advisor to be extracted from
  pages with multiple advisors. This bug was created due to minor
  changes in the Mathematics Genealogy Project pages.
- Version 0.2.1-r1 was released on November 3, 2010. This was a
  maintenance release fixing tests that broke sometime after the
  release of version 0.2.1.
- Version 0.2.1-r2 was released on August 11, 2011. This was a
  maintenance release fixing a test broken by updates to the genealogy
  data.
