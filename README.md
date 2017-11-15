# yelp-challenge

As a restaurateur,
So that I can write a review,
I want to be able to create a new restaurant.

As a restaurateur,
so that I can review a restaurant,
I want to be able to leave a rating & comment on the restaurant page.


### MVP functionality

* create restaurants(name, description)
* leave reviews - rating(score) & comment
* display all reviews

## Process

* We started by setting up the project file structure in order to have a working server. For this we used the commands: rails new yelp-challenge, bin/rails server (to check the website), bin/rails generate scaffold Restaurant name:string...
* We moved onto creating our first home page spec to get the project started and also decide the rubric for more tests.
* We created the first feature test for restaurant and amended the restaurant feature test to including filling in the form.
* We added the review model in which we specified the rating, review (text) and that it belonged to a restaurant.
* We set up database cleaner and simplecov.
* We added the database URL to db config, set up Travis and coveralls and removed the tests that rails generate had created.
