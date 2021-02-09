class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def show
    end 

    def new
        @review = Review.new
    end 

    def create
    end

    def edit
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:content, :rating, :user_id, :restaurant_id)
    end

end