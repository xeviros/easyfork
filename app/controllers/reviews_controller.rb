class ReviewsController < ApplicationController
  skip_after_action :verify_authorized
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
