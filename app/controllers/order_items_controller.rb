class OrderItemsController < ApplicationController

  def create
    # create order item
    @order_item = OrderItem.new(order_item_params)
    @order = Order.find(params[:order_id])
    @order_item.order = @order
    @bill = @order_item.order.bill
    @order_item.save
    raise
    # redirect to bill show page
    redirect_to bill_path(@bill)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:item_id, :order_id)
  end
end





