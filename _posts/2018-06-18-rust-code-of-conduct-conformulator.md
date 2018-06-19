---
layout:     post
title:      Rust Code of Conduct Conformulator
date:       2018-06-18 22:14
tags:       [dev]
---

A while back I created the [Rust Code of Conduct
Conformulator](https://github.com/davidalber/rust-conduct-conformulator)
to help address a consistency problem.

Rust has dozens of repositories across three GitHub
organizations. Right now, five of those have the Rust Code of
Conduct. One of those is the Rust website, which has the Code of
Conduct [here](https://www.rust-lang.org/conduct.html). The other four
have a variant of the website's Conduct. All of them should be in
sync, but enforcing that requires tools.

The Conformulator was created to help with that
enforcement. Initially, it was a project with unit tests that verified
the Code of Conduct in whitelisted repositories matched the Code of
Conduct on the website. That works well for a small list of
repositories, but there's a scenario where I imagine the Rust team
would want to put the Code of Conduct in all of its
repositories. Before that seems like a good idea, though, they
probably need tools to help with the consistency enforcement. For
that, I expanded the Conformulator to be a
[Rocket](https://rocket.rs/) site with a simple dashboard. More
sophisticated alerting can be created from there.

At the moment, there's an experimental deployment of the site at
[https://rust-conduct.davidalber.net/](https://rust-conduct.davidalber.net/). That's
probably not a final home. Also, the current build seems to sometimes
stop serving pages after running for a couple days. I need to figure
out what to do about that before I feel comfortable not calling it
experimental.
