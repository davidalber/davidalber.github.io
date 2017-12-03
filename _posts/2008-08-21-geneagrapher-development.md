---
layout:     post
title:      Geneagrapher Development
date:       2008-08-21 21:14
tags:       [geneagrapher]
---

Earlier this year I spent some time cleaning up (and rewriting portions) of the geneagrapher tool. I intend to release the source as soon as I get it packaged, but want to take this opportunity to list some of the properties and features of the upcoming release.

- Command-line based. The previous geneagrapher was designed to be completely web-based. I have written this one so that other people can use the tool on their machines.
- Produces Graphviz dot files. Processing the file is left to the user.
The ability to generate trees with ancestors and/or descendants. The original tool only had the ability to generate ancestor trees, primarily because a descendant tree can be very large.
- The tool works by crawling the Math Genealogy site, and each time the site’s design changes, the originally geneagrapher tool breaks. This new version has a number of tests that will help to detect when this happens earlier and to hasten the time needed to adjust.
