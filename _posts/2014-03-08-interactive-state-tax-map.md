---
title: Interactive State Tax Map
author: andy
layout: post
permalink: /2014/03/08/interactive-state-tax-map/
categories:
  - D3.js
  - html5
  - JavaScript
  - jQuery
tags:
  - data visualization
  - GeoJson
---
It turns out most of what I did in my last post, <a href="http://andyhill.us/codeblog/2014/03/01/installing-d3-topojson-us-states-on-fedora/" target="_blank">Installing D3 TopoJSON us-states on Fedora</a>, was unnecessary, but I did create an <a href="http://informedelectorate.net/statetax/" target="_blank">interactive state map</a> using the <a href="http://d3js.org/" target="_blank">D3</a>, <a href="https://github.com/caged/d3-tip" target="_blank">d3-tip</a>, and <a href="http://jquery.com/" target="_blank">jQuery</a> libraries and the <a href="http://geojson.org/" target="_blank">GeoJson</a> encoding format. I did use <code inline="true">ocr2ocr</code> to convert census state data to GeoJson.

First, I find the maximum value of each category (Income, Sales, Property, Corporate, and Total) and then use the maximum to build scale functions to map it to rgb (0-255).  
[cc lang="javascript" tab_size="2"]  
//// Build max map  
for (var state in data) {  
for (var type in data[state]) {  
if (!(type in max) || parseInt(data\[state\]\[type\]) > parseInt(max[type])) {  
max\[type] = data[state\]\[type\];  
}  
}  
}

//// Build basic scaling functions  
for (var type in max) {  
scales[type] = d3.scale.linear()  
.domain([0, max[type]])  
.range([255, 0])  
}  
[/cc]

Check out the <a href="http://informedelectorate.net/statetax/scripts.js" target="_blank">full source code</a> for the whole picture, but here is how the rgb values are set for each state:  
[cc lang="javascript" lines="-1"]  
function getRgb(name, area) {  
if (!(name in data)) return {};  
var rgb = {};  
var areas = area.split(&#8216;+&#8217;);  
//// create area in scales if it doesn&#8217;t exist  
if (!(area in scales)) {  
var mx = 0;  
for (var i = 0; i < areas.length; i++) {  
mx += parseInt(max[areas[i]]);  
}  
scales[area] = d3.scale.linear()  
.domain([0, mx])  
.range([255, 0]);  
}  
//// build rgb  
for (var color in colorcode) {  
var value = 0;  
for (var i = 0; i < areas.length; i++) {  
value += parseInt(data\[name\]\[areas[i\]]);  
}  
rgb\[color] = Math.floor(scales[area\](value)*colorcode[color]);  
}  
var rgbstr = 'rgb('+rgb.r+','+rgb.g+','+rgb.b+')';  
return rgbstr;  
}  
[/cc]

<a href="http://informedelectorate.net/statetax/" target="_blank">Check out the map.</a>