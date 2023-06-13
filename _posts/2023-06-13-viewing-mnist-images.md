---
layout:     post
title:      Viewing MNIST Images
date:       2023-06-13 15:39
tags:       []
image:      images/og/mnist-digits-2.png
summary:    The MNIST Browser and MNIST Viewer are Observable notebooks that make it easy to browse and view details of handwritten digit samples in the MNIST database.
---

I've been reading a little about deep learning, and a problem
typically presented to approach using neural networks is handwritten
digit recognition. The data set I've seen repeatedly in this context
is the Modified National Institute of Standards and Technology (MNIST)
database.

MNIST contains 70,000 samples of handwritten digits that are divided
into training and test sets.

I tend to want to see things visually, so I created two Observable
notebooks to view the digits in the MNIST database. There's probably
already great tools available for this, but I felt like writing some
code to do it myself.

Since they are Observable notebooks, it all happens in your web
browser. Beyond that, there are no dependencies.

- [MNIST Browser](https://observablehq.com/@davidalber/mnist-browser)
  -- view samples grouped by digit
- [MNIST Viewer](https://observablehq.com/@davidalber/mnist-viewer) --
  view a single sample in the database using its index

![MNIST Browser]({{ site.image_base }}/og/mnist-digits-2.png)
