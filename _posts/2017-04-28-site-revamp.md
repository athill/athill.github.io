---
title: Site Revamp
author: athill
layout: post  
---

Trying to clean things up a bit. This site uses the [Sass](http://sass-lang.com/) [CSS preprocessor](https://www.sitepoint.com/6-current-options-css-preprocessors/). [CSS](https://en.wikipedia.org/wiki/Cascading_Style_Sheets) (Cascading Style Sheets) defines the look of a web site. For example, before I made some changes, each post on this blog was rather generic looking. I modified the CSS so that it kind of looks like a computer terminal, with a header, green on black, and modified the [font](https://fonts.google.com/?category=Monospace&selection.family=VT323).

Sass gets you a few things. For example, this:

Sass
```sass
@mixin terminal {
  background-color: black;
  color: #0A0;
  font-family: $terminal;
}

.post {
  @include terminal;
  border-radius: 1em;
  overflow: hidden;
  margin-top: 1em;
  blockquote {
    margin: 1.8em .8em;
    border-left: 2px solid $gray;
  }
}
```
becomes this:

CSS
```css
.post {
  background-color: black;
  color: #0A0;
  font-family: $terminal;
  border-radius: 1em;
  overflow: hidden;
  margin-top: 1em;	
}

.post blockquote {
    margin: 1.8em .8em;
    border-left: 2px solid #CCC;	
}
```

In normal CSS, you need to duplicate nested items, like the `.post blockquote` in the CSS. In Sass, you can nest these. Sass also allows mixins, like `terminal` in the Sass, that can be reused. Finally, there are variables like `$gray`, that can be reused rather than specifying the same color over and over. It can do a lot more actually. Pretty cool.