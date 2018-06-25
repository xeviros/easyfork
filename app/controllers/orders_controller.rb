class OrdersController < ApplicationController

  def create
    @item = @order.order_items.new(item_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    authorize @order
    if @order.save
      redirect_to :back
    else
      render :new
    end
  end

  def edit
    authorize @order
  end

  def update
    @order.update
  end


  def destroy
    @order = Order.find(params[:id])
    @order.order_items.destroy_all
    authorize @order
    @order.destroy

    # if it cannont redirect back, it goes to root_path
    redirect_back(fallback_location: root_path)
  end


  private

  def order_params
    params.require(:order).permit(:user_id, :status, :special_request, :bill_id, :amount)
  end

end
