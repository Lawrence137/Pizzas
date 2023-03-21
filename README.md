# Pizzas

This is an API for tracking pizzas restaurants.

# Pre-Requisites

Operating System (Windows 10+, Linux 3.8+, or MacOS X 10.7+)

Ruby 2.7.4 or later

Rails 6.1.4 or later

# Setup

You can setup this repository by following this manual;

Clone the repository

`git clone https://github.com/Lawrence137/pizzas`

Ensure the ruby gems are setup in your machine

`bundle install`

Perform any pending database migrations

`rails db:migrate db:seed`

Run the application

`rails serve`

Open the application on Postman using this URL to test the various endpoints

`http://127.0.0.1:3000`

# Option 2

You can simply run the api by clicking on the deployed link below;

`https://piza-api.onrender.com/restaurants`

# Routes

GET /restaurants

- Return a list of all Restaurants

GET /restaurants/:id

- Returns a restaurant with associated pizzas

DELETE /restaurants/:id

- Deletes/destroy restaurant along with its associations

GET /pizzas

- Returns a list of pizzas

POST /restaurant_pizzas

- Creates new Restaurant Pizza associated with existing Pizza and Restaurant

# Authors

This project was contributed to by;

Lawrence Kimani

Email: lawrencekimani18@gmail.com

# License

This project is licensed under GNU

General Public License v2.0