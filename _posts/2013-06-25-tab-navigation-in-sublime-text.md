---
title: Tab Navigation in Sublime Text
author: andy
layout: post
permalink: /2013/06/25/tab-navigation-in-sublime-text/
categories:
  - Sublime Text
tags:
  - sublime-text
---
If you, like me, prefer ctrl+tab and ctrl+shift+tab to navigate through your tabs right and left, rather than the default stack-based navigation, add this to your your User keymap file. (Preferences -> Key Bindings &#8211; User):

{ &#8220;keys&#8221;: ["ctrl+tab"], &#8220;command&#8221;: &#8220;next_view&#8221; },

{ &#8220;keys&#8221;: ["ctrl+shift+tab"], &#8220;command&#8221;: &#8220;prev_view&#8221; }

via <a href="http://sublimetext.userecho.com/topic/30368-make-ctrltab-only-cycle-tabs-in-current-group-and-in-order-of-appearance/" target="_blank">userecho</a>