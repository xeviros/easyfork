class OrdersController < ApplicationController

  def create
    @item = @order.order_items.new(item_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    if @order.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit

  end


  private

  def order_params
    params.require(:order).permit(:user_id, :restaurant_id, :number_of_people, :status, :date, :comment)
  end

end
