# Project Title

Web app to create Post and Comments

### Prerequisites

Ruby: 2.3.1 
Ruby on Rails 5.1.0 
Postgresql depends on you the version, we are using 9.6 


## Getting Started

This is a Ruby on Rails application, you only need a RoR environment configured  and setup some environment variables
Clone this repo in your local machine
Please refer to the prerequisites section to see which versions of ruby and rails you need, also yo require postgresql installed. 

Define your environment variables for postgresql
export TIMELINE_DATABASE_USER="estebance" 
export TIMELINE_DATABASE_PASSWORD="estebance"
export MAILER_TIMELINE_USERNAME="test"
export MAILER_TIMELINE_PASSWORD="test"
export MAILER_TIMELINE_ADDRESS="smtp.mailtrap.io"
export MAILER_TIMELINE_URL="smtp.mailtrap.io"
export MAILER_TIMELINE_PORT="2525"
export TIMELINE_URL="localhost:3000"

Migrate and prepare your database for tests and development 
rails db:test:prepare
rails db:create db:migrate


These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

## Running the tests

Create the test database and don't forget run migrations
Please execute: rspec 

## Deployment

Is up to you decide which technologies use for deployment 

## Built With

* [Dropwizard](http://rubyonrails.org) - The web framework used

## Authors

* **Esteban Ceron** - *Initial work* - [PurpleBooth](https://github.com/estebance)