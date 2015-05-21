---
title: 'Rails 3 in Action &#8211; Cucumber Fix'
author: andy
layout: post
permalink: /2012/10/13/rails-3-in-action-cucumber-fix/
categories:
  - Uncategorized
tags:
  - bdd
  - cucumber
  - mvc
  - rails
  - ruby
---
Working my way through <a href="http://www.amazon.com/Rails-3-Action-Ryan-Bigg/dp/1935182277" target="_blank">Rails 3 in Action</a> and am **very** impressed with the general idea. Unfortunately, much of the code related to Cucumber BDD testing is out of date since the Cucumber team has removed web_steps.rb, etc., which the code relies on. Thankfully, <a href="  Scenario: Creating a project without a name      And I try to create a project without a name      Then I should be informed that the project has not been created      And I should be told that the name is required" target="_blank">someone</a> put together a<a href="http://agile-itspeople.blogspot.com/2011/10/when-cucumber-is-mightier-than-pen.html" target="_blank"> &#8220;humble solution for getting through chapter 3 of this book using the latest Cucumber.&#8221;</a> Thanks, Alexis!

Post seems rather empty without code, images, or video, so &#8230;