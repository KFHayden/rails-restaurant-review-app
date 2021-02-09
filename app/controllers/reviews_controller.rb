class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find_by_id(params[:id])
    end 

    def new
        @review = Review.new
    end 

    def create
        @review = Review.create(review_params)
        redirect_to review_path
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