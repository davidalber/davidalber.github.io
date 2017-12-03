---
layout:     post
title:      Convex Hulls
date:       2011-11-21 08:11
tags:       [algbox, convex hull, python]
---

I have done additional work on the Delaunay triangulation that I
mentioned in the previous post. The code is less messy, has tests, and
is now packaged.

My code needs to compute the convex hull in order to start the
Delaunay triangulation. Since that is sort of interesting in itself
(and may be needed on its own in the future), I pulled out the convex
hull generation into its own class. The computation proceeds using
[Graham scan](https://en.wikipedia.org/wiki/Graham_scan). Here’s an
example (created with `conhull -s 50 -n 20`):

![Convex hull]({{ site.image_base }}/convex-hull-1.png)

You can see that’s correct, but visually, it’s not too
interesting. For fun, I added the ability to generate nested convex
hulls. The next image was created with `conhull -s 50 -n 500
-–num-hulls all -–no-plot-points`:

![Convex hulls]({{ site.image_base }}/convex-hull-2.png)

With more points (`conhull -s 50 -n 1000 -–num-hulls all
–-no-plot-points`):

![Convex hulls]({{ site.image_base }}/convex-hull-3.png)

The package is [here](https://github.com/davidalber/algbox).
