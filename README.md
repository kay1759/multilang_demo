# Demo for Multilingual Rails Application

## Description:
* This is just a demo system base on my presentation, "How to make a multilaingual Rails application" on Ruby on Rails Meetup 28/01/2015.


## Environment:
Latest environment is as below.

* Arch Linux version 5.19.11-arch1-1
* ruby 3.1.2p20
* Rails 7.0.7.2

Programing environment is as below.

* Ubuntu server 16.04 LTS x86_64
* ruby 2.3.0p0
* rails 4.2.6


## Application Installation Instructions:

    git clone git@github.com:kay1759/multilang_demo.git
    cd mutlilang_demo
    bundle install --path vendor/bundle
    rake db:migrate
    rake db:seed


## Operating Instructions:

### Usage:

    rails server -b 0.0.0.0

    connet with browzer
    http://<server name>:3000/en/products/ninja.html


### Valid URL
    /en/products/taco.html
    /ja/products/taco.html
    /en/products/horyuji.html
    /ja/products/horyuji.html
    /en/products/furinkazan.html
    /ja/products/furinkazan.html
    /en/products/ninja.html
    /ja/products/ninja.html
    /en/products/koi.html
    /ja/products/koi.html

## Discussion:
* This system is for demo, just using single controller(products_controller) and signle action(show).

* use '--skip-asset-pipeline' option.
CSS files are under public/assets/css directory. 
CSS content is not a topic for this system.

* Image files described in stylesheet is located in 'public/assets/images'.
Some failure for images in CSS within Rails 4 was reported. 

* Links of 'Global Nav','Breadcrumb' and 'Categories' are dummy.
Production 'Global Nav' looks like 'app/views/shared/_global_nav_prod.html.erb'

## Licence:

[MIT]

## Author

[Katsuyoshi Yabe](https://github.com/kay1759)


