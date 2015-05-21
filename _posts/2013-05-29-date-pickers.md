---
title: Date Pickers
author: andy
layout: post
permalink: /2013/05/29/date-pickers/
categories:
  - css3
  - html5
  - JavaScript
  - jQuery
tags:
  - Chrome
  - datepicker
  - Modernizr
---
<a href="http://tjvantoll.com/2012/06/30/creating-a-native-html5-datepicker-with-a-fallback-to-jquery-ui/" target="_blank">Great post on the pros and cons of native date pickers</a>

After much deliberation, I&#8217;ve taken the approach of originally setting the field to a &#8216;date&#8217; type and then switching it to a &#8216;text&#8217; type if Modernizr.inputtypes.date is true for both desktops and browsers. Meaning, if the browser supplies a native date picker, override it, but keep the type &#8216;date&#8217; in the original HTML for semantic purposes. I may change my mind about touch devices, as there are nice interfaces, but in Chrome&#8217;s current desktop implementation, it is definitely a hassle to change the year.`<br />
`