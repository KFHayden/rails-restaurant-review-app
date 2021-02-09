class RestaurantsController < ApplicationController

    def index
        @restaurants = Restaurant.all
    end

    def show
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.create(restaurant_params)
        if @restaurant.save
            redirect_to restaurants_path
        else
            render :new
        end
    end

    def edit
    end

    def destroy
    end

    private
    
    def restaurant_params
        params.require(:restaurant).permit(:name, :style)
    end

end
