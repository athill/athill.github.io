---
title: 'Installing Git on Shared Hosts Where I Didn&#8217;t Think I Could?'
author: andy
layout: post
permalink: /2014/03/30/installing-git-on-shared-hosts-where-i-didnt-think-i-could/
categories:
  - bash
  - git
  - Linux
tags:
  - webhost
---
This would be a game changer. Shared hosts such as Bluehost and GoDaddy don&#8217;t currently offer Git (last time I checked) and there&#8217;s no root privileges, so you can&#8217;t install it that way, but it does allow

<code lang="bash">&lt;br />
$ make&lt;br />
$ make install&lt;br />
</code>

locally, so I found <a href="http://willjackson.org/blog/installing-git-bluehost-shared-hosting" target="_blank">this idea</a> pretty clever: Install it locally. If the host supports it later, just delete it from your path.

Haven&#8217;t tried it yet, but seems like a neat idea. For Git especially, as it&#8217;s pretty straight-forward, but I can see even on my own machine trying new software locally in this fashion before yup/apt-getting it. 

Props: <a href="http://willjackson.org/blog/installing-git-bluehost-shared-hosting" target="_blank">Installing GIT on Bluehost Shared Hosting</a>