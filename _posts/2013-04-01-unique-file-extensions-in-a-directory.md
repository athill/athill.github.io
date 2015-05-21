---
title: Unique File Extensions in a Directory
author: andy
layout: post
permalink: /2013/04/01/unique-file-extensions-in-a-directory/
categories:
  - Linux
tags:
  - file extension
  - find
  - linux
  - perl
  - stackoverflow
---
Needed to get a grip on the file extensions in a large inherited project. Need to review my Perl, but you could do the same thing in another language. Regardless, nice one line pipe.

via <a href="http://stackoverflow.com/questions/1842254/how-can-i-find-all-of-the-distinct-file-extensions-in-a-folder-hierarchy" target="_blank">Stack Overflow</a>

`<br />
find . -type f | perl -ne 'print $1 if m/\.([^.\/]+)$/' | sort -u<br />
`