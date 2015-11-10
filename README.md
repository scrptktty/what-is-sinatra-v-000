# What is Sinatra?

## Objectives

1. Learn about Sinatra
2. Understand the difference between a website and a web application
3. Learn about some real-world usage of Sinatra
4. Understand how Web Frameworks like Sinatra simplify web application development through common patterns and conventions.
5. Basic Sinatra Application.


## Overview

How does Twitter have different pages for each of its 300 million users? How can AirBnB support over 40 million guests with over 1.5 million listings worldwide? All of this is possible because of web applications.

## What's a Web Framework?

> A web application framework (WAF) is a software framework that is designed to support the development of dynamic websites, web applications, web services and web resources. The framework aims to alleviate the overhead associated with common activities performed in web development. [Wikipedia](https://en.wikipedia.org/wiki/Web_application_framework)

Building dynamic web applications in any language is a complex job requiring intimate knowledge of hundreds of technologies and specifications. The good news is that many many of these requirements are universal. Every web application must conform to these standards.

For example, any robust web application will need to handle request routing and provide a mechanism for the application to respond to different URLs with the appropriate response. Even a simple blog application has to handle a request to GET '/posts' to show all the recent blog posts vs a request to GET '/authors' to list all the authors.

Similarly, web applications require the ability to render templates to produce consistently structured dynamic content. A GET request to `/posts/1` must render the HTML for the first post just as a request to GET '/posts/2' will render identically structured HTML but with content for the second post. This is possible because of templates.

Web Frameworks take all these routine and common requirements of any web application and abstract them into code and patterns that provide these functionalities to your application without requiring you to build them yourself.

Frameworks provide structure and libraries that allow you to focus on **your** application and not **applications in general**. The bigger the framework, the more you can rely on it providing you with common needs. The smaller the framework, the more you'll have to build things yourself.

## What is Sinatra?

Sinatra is a Domain Specific Language, or DSL, used for writing web applications. Sinatra is Rack-based, which means it can fit into any Rack-based application stack, including Rails. It was created by [Blake Mizerany](https://github.com/bmizerany). It's used by companies such as Apple, BBC, GitHub, LinkedIn, and more.

Unlike Ruby on Rails, which is a Full Stack Web Development Framework, providing everything needed from front to back, Sinatra is designed to be lightweight and flexible.  Sinatra is designed to provide you with the bare minimum requirements and abstractions for building simple and dynamic Ruby web applications.

In addition to being a great tool for certain projects, Sinatra is a great way to get started in web application development with Ruby and will prepare you for learning other larger frameworks, including Rails.

Essentially, Sinatra is nothing more than some pre-written methods that we can include in our applications to turn them into Ruby web applications.

## Why Sinatra Before Rails

We've all heard of "Ruby on Rails" and how powerful it is. You can build impressive web applications in mere hours! How amazing. Rails is in fact amazing, and you can in fact, build powerful complicated web applications in just a few short hours. But to be perfectly honest, Rails can feel like a big black box of magic. Most people, when they learn Rails for the first time, literally say "Its like magic!". But we're developers, and we know that magic isn't real and that other smart developers just built an impressive framework.

So that means it's important to understand the basic concepts of Rails before diving into Rails itself. **Enter Sinatra.**


Sinatra is considered a _light weight_ framework where the responsibility of app structure and communication falls solely on the developer. Sinatra doesn't give you a lot to get started with. There is no way to auto-generate files and directories, no way for the app to make assumptions about routes, or "Sinatra magic".

Because of this, working with Sinatra allows you to dive in deep with the major concepts of MVC. You are required to manually set up routes and connect them to other pieces of your application. Without this manual setup, your application does not automatically know how to communicate with your database, or what HTML files to load in the browser. And even more importantly, without a manual setup, you lose connection to the major components of a web application, and in particular, all the moving pieces of MVC, a system for building web applications that governs 90% of the worlds' apps.

So introduce yourself to Sinatra. Get to know him, and get to know him well, because the better your foundation, the more you'll be able to get to know (and like) Rails.

## The Sinatra DSL

Any application that requires the `sinatra` library will get access to methods like: `get` and `post`. These methods provide the ability to instantly transform a ruby application into an application that can respond to HTTP requests.

## Basic Sinatra Applications

First, make sure sinatra is installed by running `gem install sinatra` in your terminal.

The simplest Sinatra application would be:

File: `app.rb`
```ruby
require 'sinatra'

get '/' do
  "Hello, World!"
end
```

You could start this web application by running `ruby app.rb`. You'll see something similar to:

```
$ ruby app.rb
== Sinatra (v1.4.6) has taken the stage on 4567 for development with backup from Thin
Thin web server (v1.6.3 codename Protein Powder)
Maximum connections set to 1024
Listening on localhost:4567, CTRL+C to stop
```

This is telling us that Sinatra has started a web application running on your computer listening to HTTP requests at port `4567`, the Sinatra default. If you start this application and navigate to http://localhost:4567 you'll see "Hello, World!" in your browser. Go back to your terminal running the Sinatra application and stop it by typing `CTRL+C`. You should see:

```
Listening on localhost:4567, CTRL+C to stop
^CStopping ...
Stopping ...
== Sinatra has ended his set (crowd applauds)
[00:01:11] (wip-lesson) what-is-sinatra
$
```

This is the most basic Sinatra application structure and is actually pretty uncommon. More commonly, Sinatra is used in a modular style encapsulated by Controller Classes and booted via the `config.ru` Rack convention.

## Resources

* [Blake Mizerany - Ruby Learning Interview](http://rubylearning.com/blog/2009/08/11/blake-mizerany-how-do-i-learn-and-master-sinatra/)
* [Companies Using Sinatra](http://www.sinatrarb.com/wild.html)
