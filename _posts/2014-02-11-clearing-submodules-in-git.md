---
title: Clearing Submodules in Git
author: andy
layout: post
permalink: /2014/02/11/clearing-submodules-in-git/
categories:
  - git
tags:
  - git
  - submodule
---
I have a site that I inherited and at first, I just set up git repos in the subfolders I was working on, however, as time went on it seemed to be a better idea to have the entire site be one large repo. I didn&#8217;t formally set up submodules, but when I would run git status on the top level repository, it looked like this:

#       modified:   www/reports/compliance/cds (modified content, untracked content)  
#       modified:   www/reports/pic2 (modified content)  
#       modified:   www/reports/standard/degree/time2deg (modified content)  
#       modified:   www/reports/standard/enrollment/dailyEnrollment/report.php  
#       modified:   www/reports/standard/factbook (new commits, modified content, untracked content)  
#       modified:   www/reports/standard/financial (modified content)

I wanted to keep the history from the sub-repos and <a href="http://stackoverflow.com/questions/1759587/un-submodule-a-git-submodule" target="_blank">this link was a major help</a>, but I didn&#8217;t do exactly what they said, so I thought I&#8217;d document it here.

  1. git remote add submodule_origin path/to/sub/repo
  2. git fetch submodule_origin
  3. git merge -s ours &#8211;no-commit submodule_origin/master
  4. git rm &#8211;cached path/to/sub/repo
  5. rm -rf path/to/sub/repo/.git
  6. git add path/to/sub/repo
  7. git commit -m &#8220;removed submodule&#8221;
  8. git remove rm submodule_origin