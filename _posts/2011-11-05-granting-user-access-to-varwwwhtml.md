---
title: Granting User Access to /var/www/html
author: andy
layout: post
permalink: /2011/11/05/granting-user-access-to-varwwwhtml/
categories:
  - Uncategorized
tags:
  - admin
  - apache
  - linux
---
Probably a no-brainer for many, but I can never remember, and this seems to be best practice:

<div>
  <p>
    Personally, I would set the ownership of /var/www/html to apache. You can do this by:<code>&lt;br />
chown apache /var/www/html</code><br /> Next, I would create a group of let&#8217;s say &#8220;Web admins&#8221;:<code>&lt;br />
groupadd webadmins</code><br /> Add the user webadmin to the newly created group:<code>&lt;br />
usermod -G webadmins webadmin</code><br /> Add group permissions to the newly created group:<code>&lt;br />
chmod g+rw /var/www/html </code>
  </p>
  
  <p>
    Source:
  </p>
  
  <p>
    http://serverfault.com/questions/310325/how-do-i-give-a-user-access-to-var-www-html
  </p>
  
  <p>
    I also had to<br /> <code>chgrp webadmins /var/www/html</code>
  </p>
  
  <p>
    <code></code>and log out.
  </p>
</div>