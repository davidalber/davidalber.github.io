---
layout:     post
title:      Geneagrapher Repository Moved
date:       2011-09-06 07:57
tags:       [geneagrapher, repository]
---

I have moved the [Geneagrapher](/geneagrapher/) repository to GitHub
using [svn2git](https://github.com/nirvdrum/svn2git). The repository’s
new home: https://github.com/davidalber/Geneagrapher.

I had to reorganized my Subversion repository to make it work, and my
tags were trashed in the end due to conflicts in my tags and the way
[Git](https://git-scm.com/) tags things. That’s not a huge deal,
though, because I can recreate everything, if needed. Anyhow, the big
take-home message here is that the Geneagrapher repository is now open
to the public.

One other action that I took, after moving the repository, was to nuke
the trunk (er, master). I had made new feature progress in the trunk
years ago, but stopped. I decided it would just be easier to continue
by reverting the trunk to the latest maintenance branch.
