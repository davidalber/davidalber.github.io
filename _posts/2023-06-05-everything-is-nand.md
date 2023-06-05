---
layout:     post
title:      Everything is NAND
date:       2023-06-05 16:28
tags:       []
image:      images/og/everything-is-nand.png
summary:    NAND gates can be used to build all other logic gates. As a refresher, I designed gates using NAND. The designs aren't novel, but the drawn designs look nice.
---

I was reading the beginning of the first chapter of [_Neural Networks
and Deep Learning_](http://neuralnetworksanddeeplearning.com/) last
night. In the introduction of perceptrons it reminded me that NAND
gates can be used to construct all other logic gates. Surely I learned
that in my first computer architecture course and explained it to
others when I was a TA for "Computer Architecture I" during my first
graduate school semester!

For a fun refresher, I decided to design other logic gates using NAND
gates. While the design results aren't novel, the figures I ended up
with are attractive enough to share.

![Logic gates built from NAND gates]({{ site.image_base }}/nand-everything.png)

Here's a better XNOR gate that I didn't get until verifying my other
gates on another website. It has three layers instead of the four
layers above.

![A better XNOR gate]({{ site.image_base }}/nand-everything-better-xnor.png)

_The gate designs were made using
[Excalidraw](https://excalidraw.com/) and the [Logic Gates
library](https://libraries.excalidraw.com/#thebrahmnicboy-logic-gates)
by [Bhargav Modak](https://github.com/TheBrahmnicBoy)._
