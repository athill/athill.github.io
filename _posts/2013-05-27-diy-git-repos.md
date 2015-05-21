---
title: DIY Git Repos
author: andy
layout: post
permalink: /2013/05/27/diy-git-repos/
categories:
  - git
  - Linux
tags:
  - git
  - linux
  - repo
---
I have several sites that I&#8217;ve been tracking with Git on my desktop and want to be able to work on my laptop and keep it all in sync.  Here&#8217;s what I did:

  1. Created a repos directory in my home directory
  2. cd into it
  3. $ git clone &#8211;bare /var/www/html/[site-dir] for each site
  4. Go into the actual directory for each site and point the new bare repo as its master:  
    $ git remote add origin ~/repos/[site-name].git  
    $ git branch &#8211;set-upstream master origin/master
  5. On the laptop, cd to /var/www/html and for each site:  
    $ git clone user@desktop:~/repos/[site-dir].git
  6. Then use git pull and git push to keep the directories synced up