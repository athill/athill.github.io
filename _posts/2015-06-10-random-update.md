---
layout: post
title: Random Update!
---

I just realized I hadn't posted for over a month. I've mostly been working on [athill/PHP-Utils](https://github.com/athill/PHP-Utils) and websites utilizing it ([athill/PHP-Utils-Demo](https://github.com/athill/PHP-Utils-Demo), [athill/informedelectorate.net](https://github.com/athill/informedelectorate.net), and [athill/bucket-vote](https://github.com/athill/bucket-vote)).

What's been interesting about developing the library (PHP-Utils) while implementing different sites with the library is all the chicken and egg scenarios. One of the primary goals of the project is, "Convention over configuration," meaning there are sensible defaults that can be overridden. The issues arise when some defaults depend on other defaults and also when you don't want to hardwire everything at startup.

* PHP-Utils is an infrastructure to help you focus on the content of your (simple) site. If your site is ambitious, use [Laravel](http://laravel.com/).
* bucket-vote is the best example of this. I was focusing on the page content within five mintes of starting this site. It's probably all I need unless I want to modify the header or whatever.
* [PHP-Utils-Demo](http://demo.andyhill.us/) is meant to be the place to demonstrate moderately advanced features such as menus, authentication (pending), datasource interaction (pending), etc.
* [informedelectorate.net](http://ie.andyhill.us/) is the most challenging and exciting. The goal here is a rewrite of the current [informedelectorate.net](http://informedelectorate.net/) to use the new library. Convinced me to add a [(really) basic cURL utility](https://github.com/athill/PHP-Utils/blob/master/src/Curl.php) to PHP-Utils. I realize neither site works completely right now. 