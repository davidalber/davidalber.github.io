---
layout:     post
title:      'Thoughts on "Why OpenStreetMap is in Serious Trouble"'
date:       2018-04-01 22:21
---

A recent bridge-burning post titled ["Why OpenStreetMap is in Serious
Trouble"](https://blog.emacsen.net/blog/2018/02/16/osm-is-in-trouble/)
covered a variety of issues the author (a former long-time contributor
and advocate of OpenStreetMap) feel are holding OpenStreetMap (OSM)
back.

It's a pretty interesting read, and I recommend looking at the post
for the details. When I read the post back in February, I took a few
notes of the parts that caught my attention. Some of these points I
already knew, but some were news to me.

- There's no review mechanism for edits, which allows bad edits to
  happen, leads to no mentoring for well-meaning new contributors, and
  enables vandalism to occur unchecked.
- OSM objects have no permanent IDs, which can lead to a variety of
  issues.
- OSM does not represent map data using layers. Instead, it uses a tag
  system, and this architectural choice makes things messy for tools
  and imports.
- There's a lack of enforced standards on how to represent
  features. The example in the article is that sometimes sidewalks are
  indicated in OSM by tags on roads, and other times, they are
  represented as their own ways. I've personally heard stories of
  difficulties working with OSM data due to no enforced standards and
  have experienced it myself.
- The project has gatekeepers who are skeptical or openly hostile to
  change.
- Many of the most influential members of the project have launched
  commercial services that use OSM data. The author argues that this
  creates conflicts of interest that incentivize keeping the project
  small in scope.

I can't write about the validity of many of the author's arguments,
which I am sure are controversial, since I am not a part of the
community. Given that, I would not normally write about it, but the
post does reinforce some of my experiences using OSM data over the
years. There was a discussion of the post in [Hacker News
here](https://news.ycombinator.com/item?id=16394604), and some of the
people posting there likely have more relevant insight than I do.

I have mentally noted in the past that the tools from OSM seem to have
not changed over the years I have worked with its data. Recently my
work was interrupted due to a lack of validation in its data. In this
case, a road speed tag had an invalid unit, which broke our
importer. I was surprised to subsequently discover the project doesn't
enforce the values that are specified as valid in that field.

That said, I really appreciate the data that is available through
OSM. I would love to see the project continue to grow, both in the
completeness of its data and the quality of its architecture and
tools.
