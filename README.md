# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    > 2.4
* System dependencies
    * ```$ gem install bundler```
    * ```$ gem install pg```
    * ```$ gem install overcommit```
* Database creation
    * ```$ docker-compose up -d```
    * wait a moment until the db is initialized
* Database initialization
    * On First Init
        * ```$ rake db:create```
        * ```$ rake db:migrate```
    * Test Data
        * ```$ rake db:seed```
* How to run the test suite
    * ```$ rake test```
* How to run the application
    * ```$ bundle install```
    * ```$ rails s```


*TODOS:*

* Proper Testing
    * DB CLeanup
        > https://github.com/DatabaseCleaner/database_cleaner
* JSON APi
    > https://thesocietea.org/2017/02/building-a-json-api-with-rails-part-6-the-json-api-spec-pagination-and-versioning/
* Graph QL
    > https://medium.com/@DrawandCode/building-a-graphql-api-in-rails-part-1-a40aaf7e165f

* Auth
    > https://github.com/doorkeeper-gem/doorkeeper#installation
    > https://github.com/nsarno/knock
    > https://www.sitepoint.com/authenticate-your-rails-api-with-jwt-from-scratch/
    > http://apionrails.icalialabs.com/book/chapter_five
* Security
    > https://github.com/codahale/bcrypt-ruby
* Access
    > https://github.com/inossidabile/protector
