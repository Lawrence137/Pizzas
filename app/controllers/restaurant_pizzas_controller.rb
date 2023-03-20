class RestaurantPizzasController < ApplicationController
    # def index
    #     restaurant_pizzas = RestaurantPizza.all
    #     render json: restaurant_pizzas
    # end
    
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)

        if restaurant_pizza.valid?
            render json: Pizza.find(restaurant_pizza_params[:pizza_id]), only: [:id, :name, :ingredients]
        else
            render json: { errors: "validation errors" }, status: :unprocessable_entity
        end
    end

        private 

    def restaurant_pizza_params
        params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
    end
end
