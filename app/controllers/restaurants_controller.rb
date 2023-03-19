class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants, except: [:created_at, :updated_at]
    end
end
