---
layout: post
title: "Deploying Octopress to Github user pages."
date: 2014-06-25 10:40:54 -0400
comments: true
categories: 
---

So far, I'm very impressed with the Octopress docs. They are clear and (at the time of this writing) they work as advertised. Following the steps on these pages worked for me.

   1. [Initial Setup](http://octopress.org/docs/setup/)
   1. [Configuring Octopress](http://octopress.org/docs/configuring/)
   1. [Deploying](http://octopress.org/docs/deploying/)

There was one small hiccup on my first attempt, which was probably my own fault. Somehow, I configured it to generate the site into the directory `source/afred/` instead of just `source/`. The result of this was when I published to Github user pages, none of the styles or javascript loaded, because the `afred` directory was in the path. E.g. it was trying to load `/afred/stylesheets/screen.css`, which existed on my local machine, but on github, that file is at `/stylesheets/screen.css`.

I found that in `config.rb` the lines:

  ```ruby
  # Publishing paths
  http_path = "/afred"
  http_images_path = "/afred/images"
  http_generated_images_path = "/afred/images"
  http_fonts_path = "afred/fonts"
  css_dir = "public/afred/stylesheets"
  ```

This turned out to be the issue. I removed the `afred` part of these paths, re-deployed, and the assets loaded.

  ```ruby
  # Publishing paths
  http_path = "/"
  http_images_path = "/images"
  http_generated_images_path = "/images"
  http_fonts_path = "/fonts"
  css_dir = "public/stylesheets"
  ```

Now.. I'm still not sure how it got to be that way in the first place. In an effort to find out, I removed my Github repo and started over from scratch. But the 2nd time, I must have followed the directions better, because I didn't have the same issue. Go figure.

Anyway, I'm pleased with Octopress so far. I am not a blogger at all, so we'll see how well I stick to making posts. Actually, the real reason for trying it out now is that I'm looking for a drop-in blog solution for Rails apps. I had the idea that if Octopress could be mounted as an Rails engine, and if I could find a Markdown editor for the front end, then it might be a good solution into which we could integrate functionality from the containing Rails app via Octopress plugins. Not sure how well that would work. But playing with Octopress is step one.