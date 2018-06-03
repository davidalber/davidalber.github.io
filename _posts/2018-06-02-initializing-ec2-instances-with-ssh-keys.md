---
layout:     post
title:      Initializing EC2 Instances with SSH Keys
date:       2018-06-02 21:49
tags:       [dev]
---

In most situations I prefer to not use key pairs with EC2 instances. I
just want to use my own SSH keys. Thus, most of the time I opt out of
specifying or creating a key pair in the last step of launching an
instance. Instead, I use
[cloud-init](http://cloudinit.readthedocs.io/en/latest/) to install my
keys when the instance is created. This isn't groundbreaking, but I
have to look up the syntax each time I do it. Hopefully putting it
here will save me time in the future.

When spinning up an instance, the following goes into the user data
text box in "Advanced Details" of the instance details step.

```
#cloud-config

ssh_authorized_keys:
  - ssh-rsa AAAAB3NzaC1thewholekeything david@work
  - ssh-rsa AAAAB3NzaC1theotherwholekeything david@home
```
