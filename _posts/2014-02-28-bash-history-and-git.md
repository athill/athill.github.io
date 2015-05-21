---
title: Bash History and Git
author: andy
layout: post
permalink: /2014/02/28/bash-history-and-git/
categories:
  - bash
  - git
  - Linux
  - Sublime Text
---
Clearly need to work on my <a href="http://git-scm.com/" target="_blank">Git</a> workflow, but I currently often have test under source control and production under source control, but they are not connected. Further, I&#8217;d been slacking in commits on test, but moved a bunch of changes to production (via an <a href="http://ant.apache.org/" target="_blank">Ant script</a>). So I entered my commits on production, but test has better history and should be the repository template, imho.

All this is to say, I ran some Git commands on directory A (production) and wanted to run the same commands on directory B (test).

So I first turned to the *nix <a href="http://unixhelp.ed.ac.uk/CGI/man-cgi?history" target="_blank">history command</a> to list my recent history, then I copy-pasted into <a href="http://www.sublimetext.com/" target="_blank">Sublime Text</a> and converted via <a href="http://www.webdesignermag.co.uk/inspiration/10-must-know-sublime-text-2-tips/" target="_blank">multiple cursors </a> this (redacted):

`<br />
500 git add files<br />
501 git ci -m "description"<br />
502 git st<br />
503 git diff filename<br />
504 git add files<br />
`

to the following:

`<br />
git add files;<br />
read -p "Press [Enter] key to continue...";<br />
git ci -m "description";<br />
read -p "Press [Enter] key to continue...";<br />
git add files;<br />
read -p "Press [Enter] key to continue...";<br />
...<br />
`  
Basically (via multiple cursors) I removed the line numbers and added semi-colons to the recent history commands. Then I deleted all but the &#8216;git add &#8230;&#8217; and &#8216;git commit -m &#8220;&#8230;&#8221;&#8216; lines and ran it. But there was a problem. Bash was trying to run all the commands in parallel and there were conflicts. I then discovered the Bash <a href="http://www.cyberciti.biz/tips/linux-unix-pause-command.html" target="_blank">read command</a>, which allows you to run the commands sequentially. Not scalable, but practical for smaller lists of tasks.