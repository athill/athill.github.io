---
title: Recursive chmod-ing
author: andy
layout: post
permalink: /2013/04/19/recursive-chmod-ing/
categories:
  - Linux
tags:
  - chmod
  - web permissions
---

From <a href="http://chrisgilligan.com/wordpress/chmod-recursive-files-only-directories-type/" target="_blank">http://chrisgilligan.com/wordpress/chmod-recursive-files-only-directories-type/</a>
```
find . -type d -exec chmod 755 {} \;

find . -type f -exec chmod 644 {} \;
```