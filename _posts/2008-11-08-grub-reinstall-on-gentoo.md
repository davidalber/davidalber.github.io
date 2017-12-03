---
layout:     post
title:      Grub Reinstall (on Gentoo)
date:       2008-11-08 11:45
tags:       [linux]
---

Last night, I reinstalled Windows XP. It had not been working for a little more than a month, and I tried a few repair approaches that did not work out. There was no urgency to do this, which is why I waited so long. Ultimately, I reinstalled Windows (but I “punished” it first by giving it a much smaller partition; I have better things I can do with that space). Of course, this means the MBR was wiped out and I needed to reinstall Grub in order to get easy access to Linux again.

This post is more of a note to myself to save time next time (not that it took that much time, but perhaps every bit counts). It assembles information from several sections of the installation portion of the [Gentoo Handbook](http://www.gentoo.org/doc/en/handbook/).

Here we go (the devices are specific to my current setup):

1. I booted using the Gentoo minimal install disk.
1. Mount partitions and change root (Sections 4 and 6).

    ```
    # mount /dev/sda5 /mnt/gentoo
    # mount /dev/sda2 /mnt/gentoo/boot
    # mount -t proc none /mnt/gentoo/proc
    # chroot /mnt/gentoo /bin/bash
    ```
1. Make mtab and reinstall Grub (Section 10).

    ```
    # grep -v rootfs /proc/mounts > /etc/mtab
    # grub --no-floppy
    grub> root (hd0,1)
    grub> setup (hd0)
    grub> quit
    ```

The parameter (hd0,1) corresponds to the /boot partition (/dev/sda2). If it is not clear how to specify the partition for /boot, that information is available in Grub with

```
grub> find /boot/grub/stage1
```
