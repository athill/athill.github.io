---
layout: post
title: find ... -exec Explained!
tags:
  - linux
  - posix
  - find
  - rtfm
  - man page
  - chmod
---

What does this do?

	find . -type f -exec chmod 644 {} \;

In [posix](https://en.wikipedia.org/wiki/POSIX) systems (unix, linux, osx, cygwin, etc.), `find` is a powerful command. You give it a starting folder/directory and a set of filters and it returns all the files and/or directories in the parent directory that match the filters. For example, `find somedir -type f -name *.pdf` would return a list of all the files in the "somedir" directory that end in ".pdf". `find . -type f` means "Give me all the files in the current directory, [recursively](http://www.merriam-webster.com/dictionary/recursive) (`.` means the current directory)."

The second half, `-exec chmod 644 {} \;`, is what I never fully understood, and I had to look up every time I used it, but now that I see the reasoning, I doubt I'll ever have to look it up again, which is somewhat profound to me, as far as the connection between comprehension and memory. 

Anyway, the `-exec` option to the `find` command is well documented in its [man page (it's about 2/5 of the way down)](http://unixhelp.ed.ac.uk/CGI/man-cgi?find), but I thought I'd document.

* `-exec` says "Execute the following command"
* `chmod` is a posix command ([rtfm](http://ss64.com/bash/chmod.html)). It's used to change permissions on a file and/or directory. The purpose of the above command is to change the permissions on all files in a folder such that they can be accessed by a web server.
* `644 {}` are the arguments to `chmod`. 
  * `644` is the new permission for the file. 644 means
    * `6` I have read-write access
    * `4` The group associated with this file has read access
    * `4` Global read access
  * `{}` means the current file from the `find` command
  * `\;` is the command terminator. I'm not clear why the shell (command line) doesn't see that there are no more arguments and not require an explicit command terminator, but there are probably good reasons for it (perhaps multiple `-exec`s?), and it doesn't matter, you have to terminate your exec argument, which is terminated by a semi-colon, but because of the way the shell interprets things, the semi-colon needs to be escaped (escaped means that, for example, in this case,  a semi-colon generally has special meaning in the shell (end this statement and start a new one), but in this case, we just want to end the `-exec` argument, not the entire `find` command) so a back-slash precedes the semi-colon as if to say, "Sometimes a semi-colon is just a semi-colon" to the shell". Hence, `\;`.



