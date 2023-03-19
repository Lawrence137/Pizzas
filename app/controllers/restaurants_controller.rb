class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants, except: [:created_at, :updated_at]
    end

    def show
        restaurant = Restaurant.includes(:pizzas).find_by(id: params[:id])
        if restaurant
            render json: restaurant.as_json(except: [:created_at, :updated_at], include: { pizzas: { only: [:id, :name, :ingredients] } })

        else
          render json: { error: "Restaurant not found" }, status: :not_found
        end
    end
end
