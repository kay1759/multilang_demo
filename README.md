# Demo for Multilingual Rails Application

## Description:
* This is just a demo system base on my presentation, "How to make a multilaingual Rails application" on Ruby on Rails Meetup 28/01/2015.


## Environment:
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
Bootstrap is already installed in vender/assets/bootstrap.
I don't use gem, so you don't need to setting up for bootstrap gem like 'rails generate bootstrap:install'

* 'product.css' is used instead of 'product.scss'.
Because the css content is a topic for this system.

* Image files described in stylesheet is located in 'public/assets/images'.


## Licence:

[MIT]

## Author

[kay](https://github.com/kay1759)

