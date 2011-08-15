# Church.IO Profiles

**Profiles** is a humble little Rails 3 app meant to provide an online directory for churches and other close-knit communities.

This app was birthed out of [OneBody](https://github.com/seven1m/onebody), a monolithic application built for social networking, among other things. The scope of **Profiles** is much less ambitious, opting only to recreate the search functionality, profile page and related features instead.

**BEWARE:** this app is early ALPHA quality at the moment, so not everything works yet.

## Features

### User-Facing

* Login with Facebook or by Email
* Profile Page
* Send Email (soon)
* Search Directory (soon)
* Browse Directory (soon)

### Backend

* Compatible with Heroku
* Easy customization via yaml file
* Localized for US English, with other languages easily added
* Idiomatic Ruby

## Built With

* [Ruby](http://www.ruby-lang.org)
* [PostgreSQL](http://www.postgresql.org/)
* [Devise](https://github.com/plataformatec/devise)
* [OmniAuth](https://github.com/intridea/omniauth)
* [HAML](http://haml-lang.com/)
* [Compass](http://compass-style.org/)
* [Bootstrap](http://twitter.github.com/bootstrap/)
* [RSpec](http://relishapp.com/rspec)
* [Mocha](http://mocha.rubyforge.org/)
* [FactoryGirl](https://github.com/thoughtbot/factory_girl)

...and probably others I'm forgetting.

## Development

This app is still under heavy development, so instructions below are meant for running the app **locally** (not on a server). Later, this app should easily run on Heroku.

1. Install Ruby 1.9.2 and bundler (`gem install bundler`).
2. Install PostgreSQL.
3. Create a Facebook app for your community [here](https://developers.facebook.com/apps) (choose the website option) and give it the site URL of `http://localhost:3000`.
5. Now run the following commands:

    cd profiles
    cp config/settings.yml{.example,}
    vim config/settings.yml
    cp config/database.yml{.example,}
    vim config/database.yml
    bundle install
    rake db:reset
    rails server

## Contact

Catch Tim in the #church.io IRC channel on Freenode, on Twitter at [@seven1m](https://twitter.com/seven1m), or by email at [tim@timmorgan.org](http://timmorgan.org).

[http://church.io](http://church.io) currently hosts a blog that should correlate loosely with this and other church software projects.

## Copyright & License

Copyright (c) 2011, [Tim Morgan](http://timmorgan.org)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
