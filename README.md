# README

* Ruby version: 3.0.2 (use chruby)

* System dependencies: postgresql (`brew update && brew install postgresql`)

## Running the app locally
Once you have installed postgres you need to run it `postgres -D /usr/local/var/postgres &`.
You should then be able to run the app normally with `bin/rails server -b 0.0.0.0` 

To test you can use rspec using `bundle exec rspec`

## Deploying
To deploy to production push to main and then run `git push heroku main`