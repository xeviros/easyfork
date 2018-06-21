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

  # def update
  #   @order = Order.find(params[:id])
  #   @bill = @order.bill
  #   # @restaurant = Restaurant.find(params[:restaurant_id])
  #   @order.update
  #   if @order.save
  #     redirect_to edit_bill_path(@bill)
  #   else
  #     redirect_to back
  #   end
  # end


  private

  def order_params
    params.require(:order).permit(:user_id, :status, :special_request, :bill_id)
  end

end
