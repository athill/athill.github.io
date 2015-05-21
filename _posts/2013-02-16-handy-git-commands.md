---
title: Handy Git Commands
author: andy
layout: post
permalink: /2013/02/16/handy-git-commands/
categories:
  - git
tags:
  - git
---
Find commit associated with tag:  
git rev-list $TAG | head -n 1

Show all changed files since a commit:  
git diff &#8211;name-status [SHA1 [SHA2]]

Find latest commit for a file:  
git rev-list -n 1 HEAD &#8212; <file_path>

Restore deleted file:  
git checkout <deleting\_commit>^ &#8212; <file\_path>