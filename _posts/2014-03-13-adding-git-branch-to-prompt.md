---
title: Adding Git Branch to Prompt
author: andy
layout: post
permalink: /2014/03/13/adding-git-branch-to-prompt/
categories:
  - bash
  - git
tags:
  - command prompt
---
I knew this was possible, but my increasing use of git branches made me look into it: Displaying the current git branch at the command prompt.

Thankfully, there was <a href="http://code-worrier.com/blog/git-branch-in-bash-prompt/" target="_blank">this great post from code-warrior</a> that got me going.

This then led me down the rabbit hole of <a href="http://code-worrier.com/blog/git-branch-in-bash-prompt/" target="_blank">configuring the Bash prompt</a> including <a href="https://wiki.archlinux.org/index.php/Color_Bash_Prompt" target="_blank">working with colors</a>.

Check out the links for more info. Really just scraping the surface.

Regardless, here&#8217;s what I did:  
[cc lang="bash"]  
curl https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh  
[/cc]

and add to ~/.bash_profile (these two steps are taken straight from the first link):  
[cc lang="bash"]  
\# Load in the git branch prompt script.  
source ~/.git-prompt.sh  
[/cc]

Then I added (from the third link) this to my ~/.bashrc:  
[cc lang="bash"]  
\# Reset  
Color_Off=&#8217;\e[0m' # Text Reset

\# Regular Colors  
Black='\e[0;30m' # Black  
Red='\e[0;31m' # Red  
Green='\e[0;32m' # Green  
Yellow='\e[0;33m' # Yellow  
Blue='\e[0;34m' # Blue  
Purple='\e[0;35m' # Purple  
Cyan='\e[0;36m' # Cyan  
White='\e[0;37m' # White  
[/cc]

You can read up at the link about what this all means and the link only skims the surface of the cryptic syntax of customizing the colors, etc. of the command prompt. For example, here&#8217;s what I had originally  
[cc lang="bash"]  
\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]\[\033[1;32m\]\$\[\033[m\]  
[/cc]  
Excluding all the things in square brackets (which is the coloring), it says:  
[cc lang="bash"]  
\u@\h \W\$  
[/cc]  
which means it displays:  
[cc lang="bash"]  
user@host working-directory$  
[/cc]

Finally, added this to ~/.bash_profile:  
[cc lang="bash"]  
PS1=&#8221;\[$Green\]\u@\h\[$Blue\] \W\[$Yellow\]\$(_\_git\_ps1)\[$Color_Off\]\$ &#8221;  
[/cc]