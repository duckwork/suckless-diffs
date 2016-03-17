# My suckless diffs, yall

Okay, so I've started to use dwm, st, surf, and tabbed from the peeps over at
[suckless](http://suckless.org), which are all rad softwares.  I have them in my
own local git repos, branched and all, and the diffs are in the "patch" folder
for easy installation (I hope .... I haven't actually tried `git apply`ing them
from there).

Other than that, wmake.sh `cd`s into each directory and `sudo make install`s
them, and `test.sh` shoots up a `valgrind`'d `dwm` in a Xephyr window to see if
I have memory leaks (I'm not sure what to make of the output yet, but there it
is).

Wm.h is the header file that defines common fonts and colors for all the
applications. Chill beans, yall.
