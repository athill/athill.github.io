---
title: Web Host Migration
author: andy
layout: post
permalink: /2012/11/18/web-host-migration/
categories:
  - Linux
---
For the past ten years this site had been hosted by <a href="http://www.totalchoicehosting.com/" target="_blank">Total Choice Hosting</a>. They did a great job and I would recommend them to entry level users, but about 7 years ago they removed access to the command line and a couple months ago, I had finally had enough. I looked around and <a href="http://www.midphase.com/" target="_blank">Midphase</a> seemed to offer what I wanted. It&#8217;s been a rough road, but as of today, I believe I&#8217;m ready to cut the TCH umbilical cord. Here&#8217;s the story:

I decided to go with Midphase and tried to do their &#8220;Quick Switch&#8221; option, but they don&#8217;t currently support the .us toplevel domain, so I called their support and it was great. He told me to register a new domain (which is free with the account) and we could work out the transfer my current domain later. Awesome. Due to issues on my end and theirs and the novelty of the process for both of us, it took a while to get the basics set up.  
They moved my files and databases and allowed me to preview it at the new domain I had acquired until I was ready to update my DNS (Domain Name Server) settings.  This is what tells the internet what IP (Internet Protocol) address is associated with your domain. For example, IP address <a href="http://74.125.225.35/" target="_blank">74.125.225.35</a> is one of the addresses for google.com. Anyway, I knew I had to update this somehow, so I talked to Midphase and they ran a <a href="http://en.wikipedia.org/wiki/Whois" target="_blank">whois</a> and discovered I needed to talk to <a href="http://www.wildwestdomains.com/" target="_blank">Wild West Domains</a> who own andyhill.us (I lease it from them, <a href="http://en.wikipedia.org/wiki/Domain_name_registrar" target="_blank">or something</a>). So I get with WWD and they link me to a TCH related site to update my DNS info. I updated my primary record and mail server to the new IP address and was able to see my site and send and receive mail.

But something was wrong. I couldn&#8217;t get to my <a href="http://ttmsoia.andyhill.us/" target="_blank">Trying to Make Sense of it All</a> sub-domain (ttmsoia.andyhill.us is a sub-domain of andyhill.us). I thought I needed to add another record to my DNS settings, however, I hadn&#8217;t needed to do that on my old host. I called Midphase and was correct in being wrong. I needed to update my DNS <a href="http://en.wikipedia.org/wiki/Name_server" target="_blank">name servers</a>. He gave me the correct name server names. I went to the WWD/TCH domain settings and the name server options were uneditable, so I called WWD and the respondent was awesome. I gave him my confused status and he explained that Midphase was correct that I needed to update my name servers and also mentioned that the current interface I was using to update my DNS would vanish.

Back to Midphase, I express my gratitude for their guidance so far as well as my apprehension that I won&#8217;t be able to tweak my DNS, if necessary. The respondent informs me I can update my DNS via <a href="http://en.wikipedia.org/wiki/CPanel" target="_blank">cPanel</a>. Golden.

ttmsoia was working within an hour. Everything else, too.

Almost done, but a couple other issues I resolved.

I mentioned I got a free domain with the web hosting contract and it is <a href="http://informedelectorate.net/" target="_blank">Informed Electorate</a>. However, I wasn&#8217;t clear on how to add files to the site. While working on the sub-domain/name server issue, the Midphase respondent also helped me find my way on that and I finally discovered that the place to add files is ~/public_html/informedelectorate.com/. As I write this, it just says, &#8220;<a href="http://en.wikipedia.org/wiki/Hello_world" target="_blank">Hello World</a>&#8220;, but hoping to get a <a href="https://github.com/athill/ElectionCentral#electioncentral" target="_blank">manifesto</a> if not a prototype up soon.

My final issue was mail. As I mentioned, I could send and receive mail, but my history was lost. I had backed up my mail directory from my old host (as well as the rest of the site), but didn&#8217;t know where to put it. Here is what I learned:

  1. Both my hosts used the same protocol for storing emails. This was critical. Still not sure what it is, but here&#8217;s kind of how it works.
  2. Each of your domains has a directory (domain.com, etc2.net) and then users (user@domain.com) have subdirectories below those.
  3. When I initially set up andyhill.us (circa 2002), I just used the default username email (username@domain.com). When I switched to a custom address (custom@domain.com), I started from scratch. I backed the old email data up, but had no way to view the old emails. I&#8217;ll come back to this later.
  4. It took me a while to figure out point two. Once that was accomplished I looked at the ~/mail/domain/custom directories on the new server and my backup and recognized that (roughly speaking): 
      1. Your inbox is generally in ~/mail/domain/custom/cur
      2. If you have a folder called &#8220;hypothetical&#8221;, you can find you emails at ~/mail/domain/custom/.hypothetical/cur/
      3. These folders contain text files of each email.
      4. So I was easily able to judiciously copy my old emails and folders of emails to the new host.
  5. Back to point three, I was also able to grab the old username@domain.com emails, which go back to 2002. Interesting time capsule.

Good times, good times &#8230;