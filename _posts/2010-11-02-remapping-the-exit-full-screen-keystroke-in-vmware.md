---
layout:     post
title:      Remapping the 'exit full screen' keystroke in VMware
date:       2010-11-02 22:33
tags:       [linux, ubuntu, virtual machine, vmware]
---

Tonight I installed [VMware
Player](http://www.vmware.com/products/player/) on my Windows machine
to experiment with a few things. After getting it installed, I
downloaded the [latest Ubuntu
image](http://www.ubuntu.com/desktop/get-ubuntu/download) and created
a virtual machine with it. Everything went pretty smoothly.

VMware, by default, intercepts Ctrl-Alt to exit full-screen
mode. Switching virtual workspaces in the windows manager in the new
Ubuntu machine uses Ctrl-Alt-&lt;Arrow key&gt;, and the VMware
keystroke interfered with left and right. It took a while to find it,
but Ctrl-Alt-Space followed by Ctrl-Alt-Right, for example,
accomplishes the switch, but this is inconvenient. Remapping the
keystrokes that switch virtual workspaces is straightforward, but I am
too accustomed to Ctrl-Alt-&lt;Arrow key&gt; to do that.

I found how to change the VMware keystroke
[here](http://sanbarrow.com/vmx/vmx-preferences-ini.html). The sixth
box on that page had what I needed and changed the VMware keystroke to
Ctrl-Alt-Shift. I only used the first three lines because the second
block has some syntax error in my version of the Player.
