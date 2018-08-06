---
layout:     post
title:      Initial Faust Impressions
date:       2018-08-05 22:35
tags:       [dev, faust]
---

[Last week](/2018/07/faust-stream-processing-library/), I wrote about
interest in
[Faust](https://faust.readthedocs.io/en/latest/index.html), a
Kafka-backed stream processing library for Python. Since then I have
gained some experience with it. We had a hackathon at work, and my
team reimplemented a data processing pipeline that is currently a
batch process using Faust.

My initial impressions are good overall. We were able to produce a
working implementation in far fewer lines than the current system, and
we have a near realtime pipeline using Faust. The
[tables](https://faust.readthedocs.io/en/latest/userguide/tables.html)
are pretty slick.

We did have a hangup using tables on macOS: they just didn't work for
us. When trying to start an agent with an empty table, it would never
get past loading the table. To get around that, we transitioned our
work to Docker containers and did not have any further trouble with
that. I need to file a ticket about it.

My take on Faust is that it is used in production at
[Robinhood](https://robinhood.com/), but it has been open sourced
recently (or only picked up attention recently). The documentation got
us going, but there were several areas where it was too sparse. If we
continue working on it, I'll either help flesh that out (where I can
figure it out) or file tickets. Finally, there are some things that I
probably need to ask a human about to really understand.

All that said, I'd like to keep going on the project. I really enjoyed
that we were able to get to something viable pretty quickly. With
regards to the viability of Faust for us, the next big thing to do
will be testing it at a larger scale than our hackathon demo.
