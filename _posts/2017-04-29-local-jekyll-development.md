---
title: Local Jekyll Development
author: andy
layout: post
permalink: /2017/04/29/local-jekyll-development/
categories:
  - cat1
tags:
  - tag1
---

I've [mentioned](/2015/05/21/archive/) that this site is built using the [Jekyll](https://jekyllrb.com/) preprocessor. It's hosted on [GitHub](https://github.com/), which uses the [Git](https://git-scm.com/) source control manager, and the workflow is that you create a post or make other changes, commit the change to source control, and push (upload) the changes to a GitHub repository. GitHub recognizes that it's a Jekyll site and generates the site content on the fly. 

This is nice, but doesn't allow you to preview before publishing. To do that you need to run Jekyll locally. Which means you need to run [Ruby](https://www.ruby-lang.org/en/) locally, and then you need all the required Ruby Gems, etc., ad infinitum. 

Enter [Docker](https://www.docker.com/). This allows me to run a mini-operating sytem inside of my operating system. Ruby and all the required gems are installed on the mini operating system and don't clutter up my main operating system. When I want to develop on another computer (with docker installed), I can just `docker-compose up` to run Jekyll and preview my changes in a browser, based on the settings of my docker-compose.yml file

```
jekyll:
    image: jekyll/jekyll:pages
    command: jekyll serve --watch --incremental
    ports:
        - 4000:4000
    volumes:
        - .:/srv/jekyll
```

This says to use the official Jekyll pages image, use the current directory for content (volumes), run Jekyll interactively (command) and view it in your browser at http://localhost:4000 (ports). Neat!