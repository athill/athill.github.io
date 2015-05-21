---
title: First jQuery Plugin
author: andy
layout: post
permalink: /2011/11/22/first-jquery-plugin/
categories:
  - JavaScript
tags:
  - html5
  - jquery
  - plugin
---
I wrote my first jQuery plugin. It&#8217;s nothing fancy, but I&#8217;ve got the boilerplate down for future plugins.

Thanks to <a href="http://blog.jeremymartin.name/2008/02/building-your-first-jquery-plugin-that.html" target="_blank">jMar</a> for the jump start.

<pre class="wp-code-highlight prettyprint">(function($){
 $.fn.truncate = function() {                    ////truncate is the name of the plugin
    var defaults = {                             ////set up default parameters
         ////default values here
    };
    var options = $.extend(defaults, options);   ////options will be the parameter scope
    return this.each(function() {                ////loop through each matched element

    });
 };
})(jQuery);</pre>

My plugin takes containers and horizontally spaces all images they contain. I built it for the images across the top of <a href="http://andyhill.us" target="_blank">my web site</a>. It could definitely be expanded upon. Currently, it only takes a width option (default: 120) and only works horizontally.

Regardless, you can check it out <a title="jquery.imageArray.js" href="http://andyhill.us/js/jquery.imageArray.js" target="_blank">here</a>.