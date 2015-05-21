---
title: Installing D3 TopoJSON us-states on Fedora
author: andy
layout: post
permalink: /2014/03/01/installing-d3-topojson-us-states-on-fedora/
categories:
  - D3.js
  - html5
  - JavaScript
  - Linux
tags:
  - d3
  - fedora
  - gdal
  - node
  - TopoJSON
---
I&#8217;m trying to make maps of the (U.S.) states that can be shaded to reflect certain data (for example, tax levels by state) using <a href="http://d3js.org/" target="_blank">D3.js</a>. So I installed <a href="https://github.com/mbostock/topojson" target="_blank">TopoJSON</a>, which was straightforward enough, but that didn&#8217;t have the state boundary definitions, so I had to install <a href="https://github.com/mbostock/us-atlas" target="_blank">us-atlas</a>, which is where thing&#8217;s got interesting.

<a href="http://bost.ocks.org/mike/" target="_blank">Mike Bostock</a>&#8216;s installation directions were straightforward:  
`<br />
git clone https://github.com/mbostock/us-atlas.git<br />
cd us-atlas<br />
npm install<br />
make<br />
`

The first two commands went fine, but when I ran `nmp install`, I got an error related to the canvas package. Mike mentions this as a possible issue and gives intructions for a workaround on Mac, but I&#8217;m on Fedora. However <a href="https://github.com/LearnBoost/node-canvas/wiki/Installation---Fedora" target="_blank">I found this</a>, which told me to run this:  
`<br />
$ su -c 'yum install cairo cairo-devel cairomm-devel libjpeg-turbo-devel pango pango-devel pangomm pangomm-devel giflib-devel'<br />
`  
and then I was able to run `npm install`.

On to running `make`.  I ran it and got this error:  
`<br />
Makefile:272: *** mixed implicit and normal rules. Stop.<br />
`

I discover  that this generally is an issue with make version 3.82 and the solution <a href="https://www.sourceware.org/ml/crossgcc/2013-08/msg00048.html" target="_blank">is to temporarily downgrade to make 3.81</a> and discovered <a href="http://rootzwiki.com/topic/8037-compile-android-on-fedora-1516-by-xoomdev/" target="_blank">here</a> how to do it on Fedora. But that didn&#8217;t quite do it, as I got this error:  
`<br />
GPG key retrieval failed: [Errno 14] Could not open/read file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-13-x86_64<br />
`

So I threw caution to the wind and modified the command to  
`<br />
sudo yum --nogpgcheck downgrade make --releasever=13<br />
`

and it worked. Whew! Now to run make again. Are we out of the woods yet? No. This time I got a different error:  
`<br />
ogr2ogr: command not found<br />
`

I tried `sudo yum install ogr2ogr` to no avail, so I googled ogr2ogr and it appears to be part of the gdal package. So a  
`<br />
sudo yum install gdal<br />
`  
later, I ran make again and it successfully installed.

Hope this helps someone.