---
title: 'More Rails 3 in Action Fun: Chapter 4'
author: andy
layout: post
permalink: /2012/10/14/more-rails-3-in-action-fun-chapter-4/
categories:
  - Uncategorized
tags:
  - cucumber
  - factory_girl
  - rails
  - ruby
---
The problems with outdated code unfortunately doesn&#8217;t end with Cucumber. FactoryGirl also has new syntax. Here is my solution:

p. 84: I kept Listing 4.1 as is.

I had to add handlers for things formerly handled by web_steps.rb. Here are the second two I had to create:

`<br />
When /^I follow "(.*?)"$/ do |arg1|<br />
&nbsp;&nbsp;click_link(arg1)<br />
end</p>
<p>Then /^I should be on the project page for "(.*?)"$/ do |arg1|<br />
&nbsp;&nbsp;current_path.should == project_path(Project.find_by_name!(arg1))<br />
end<br />
`  
On to Factory Girl:

On page 85 add &#8216;factory\_girl\_rails&#8217; instead of &#8216;factory_girl&#8217;

Then your first step definition should be:  
`<br />
Given /^there is a project called "(.*?)"$/ do |arg1|<br />
&nbsp;&nbsp;project = FactoryGirl.create(:project, :name => arg1)<br />
end<br />
`

The code for factories/project_factory.rb is (p. 86)  
`<br />
FactoryGirl.define do<br />
&nbsp;&nbsp;factory :project do<br />
&nbsp;&nbsp;&nbsp;&nbsp;name 'Ticketee'<br />
&nbsp;&nbsp;end<br />
end<br />
`

features/support/factories.rb is now unnecessary and will cause your definitions to be loaded twice.

That&#8217;s only section 4.1, but should get you going.