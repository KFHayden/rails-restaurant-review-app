class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end

    def show
        @review = Review.find_by_id(params[:id])
    end 

    def new
        @review = Review.new
        @restaurants = Restaurant.all
    end 

    def create
        @review = Review.create(review_params)
        if @review.save
            redirect_to review_path
        else
            render :new
        end
    end

    def edit
    end

    def destroy
    end

    private

    def review_params
        params.require(:review).permit(:content, :user_id, :restaurant_id)
    end

end