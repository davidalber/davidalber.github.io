---
layout:     post
title:      Thoughts on Gerrit After a Brief Trial
date:       2018-03-11 23:25
tags:       [code review]
---

The topic of code review tools comes up from time-to-time at work when
talking with an engineer on my team. Our current code review tool is
simple, straightforward, and deeply integrated with our version
control system, but it's not very powerful. We long for something more
featureful with things like inline commenting, multi-line commenting,
and the ability to see comments in the context the CR iteration in
which they were added. Oh, and performance!

Sometimes we look at
[Phabricator](https://github.com/phacility/phabricator). Another team
tried using one of the Phabricator tools, but it ended up not working
well. We suspect it was not given enough resources, but haven't looked
further into it yet. Our most recent discussion was about
[Gerrit](https://www.gerritcodereview.com/).

I decided to get Gerrit running on my work laptop for a brief
exploration. I created a Docker image to keep it self-contained and
was able to show it to a couple engineers on the team. Some of what I
learned about Gerrit and my observations follow. It's possible that
I've developed some misunderstandings -- I only toyed with this for a
couple hours -- and maybe I'll figure out my mistakes with more
examination. In any case, I need to read more of the documentation to
understand some of the "philosophy" of the system.

- Gerrit is a complete replacement for whatever version control system
  you may already be using. That is, it is more than a code review
  system that uses your existing Git repository; it hosts the central
  repository for you.
- What surprised me the most: code reviews in Gerrit are for single
  commits. That's pretty different from our current workflow and
  elicited confusion from people that I showed the system to. I
  suggested at the time that the workflow is probably to do work as
  normal, squash the commits, and submit for review. I could also
  envision doing the work in a single commit the whole time and
  pushing each change to the review. In that approach the review would
  contain discrete "commits" that could be looked it if someone wanted
  to see the story of how you got there.
- Some engineers were confused by what they were looking at. I think
  that's just the difference of having a more powerful tool that can't
  be completely understood the first moment that you see it. If we
  were to try and advocate for a switch, however, we would need to
  have a lot of justification and create training.
- Gerrit defaults to its "old UI". The first comments I received were
  about Gerrit's visual appeal. People strongly preferred the new UI
  once it was discovered. I have no idea why the old UI is the
  default, but I wouldn't be surprised if there's a setting somewhere
  that switches the default view for new users.

Again, this was a really brief trial. I'd like to try Gerrit out some
more, but it would be a hard sell to switch the entire version control
system. A lot of work has been done to integrate custom tools into our
current system, and that alone would create a big cost to changing.

If you want to check it out, My Dockerfile is in
[davidalber/gerrit-docker](https://github.com/davidalber/gerrit-docker). I
may keep improving it, but right now, that image is only good for a
trial. Here's why:
- Everything about the repository and code reviews are lost when the
  container stops.
- The Gerrit instance is running in a mode where users can switch to
  any other user and can create new accounts. You'd want to lock that
  down for real use. :lock:
