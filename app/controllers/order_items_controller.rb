class OrderItemsController < ApplicationController

  def create
    # create order item
    @order = Order.find(params[:order_id])
    @order_item = OrderItem.new(order_item_params)
    @order_item.order = @order
    authorize @order_item
    @bill = @order_item.order.bill
    @order_item.save

    # sum all the item price in order.amount_cents
    @order.amount_cents = 0
    @order.items.each do |item|
      @order.amount_cents += item.price_cents
    end
    @order.amount_cents

    @order.user = current_user
    @order.save

    respond_to do |format|
      format.html { redirect_to bill_path(@bill) }
      format.js
    end
    # redirect to bill show page
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    authorize @order_item
    @bill = @order_item.order.bill

    @order = @order_item.order
    @order.amount_cents -= @order_item.item.price_cents
    @order.save

    @order_item.destroy

    respond_to do |format|
      format.html { redirect_to bill_path(@bill) }
      format.js
    end
  end

  private

  def order_item_params
    params.require(:order_item).permit(:item_id, :order_id)
  end
end





