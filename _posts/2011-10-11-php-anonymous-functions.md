---
title: PHP Anonymous Functions
author: andy
layout: post
permalink: /2011/10/11/php-anonymous-functions/
categories:
  - PHP
tags:
  - lambda
  - php
---
Sweet, but a little awkward. The good news is that PHP supports anonymous/lambda functions (that you can pass around, etc.), the bad news is you pass the function in as a string.OK, I admit the bad news isn&#8217;t that bad, but passing as a string could be a let-down if you&#8217;ve done much JavaScript.

http://php.net/manual/en/function.create-function.php

<div>
  <div>
    <code> &lt;?php&lt;br />
$newfunc = create_function('$a,$b', 'return "ln($a) + ln($b) = " . log($a * $b);');&lt;br />
echo "New anonymous function: $newfunc\n";&lt;br />
echo $newfunc(2, M_E) . "\n";&lt;br />
// outputs&lt;br />
// New anonymous function: lambda_1&lt;br />
// ln(2) + ln(2.718281828459) = 1.6931471805599&lt;br />
?&gt; </code>
  </div>
</div>

<div>
  All syntax aside, I&#8217;m impressed PHP has had this since June 2000.
</div>

<div>
  http://php.net/releases/index.php
</div>