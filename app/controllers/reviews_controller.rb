class ReviewsController < ApplicationController
  skip_after_action :verify_authorized
  def new
    @order= Order.find(params[:order_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    order = Order.find(params[:order_id])
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.order = order
    @review.restaurant = order.bill.restaurant
    @review.user = current_user
    @review.save
    redirect_to restaurant_path(order.bill.restaurant)
    flash[:notice] = "Thanks for your review!"

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
