class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # { content: "It was great", rating: 5, restaurant_id: nil }
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    # { content: "It was great", rating: 5, restaurant_id: 4 }

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
