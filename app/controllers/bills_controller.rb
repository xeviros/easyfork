class BillsController < ApplicationController
  def new
  end

  def show
    @bill = Bill.find(params[:id])
    if @order = @bill.has_ordered?(current_user)
      @order
    else
      @order = Order.create(bill: @bill, user: current_user)
    end
    @order_item = OrderItem.new
  end

  def create
    # Creating a bill after clicking on "start order"
    @restaurant = Restaurant.find(params[:restaurant_id])
    @bill = Bill.create(restaurant: @restaurant)
    # redirect to the show path of the newly created bill
    redirect_to bill_path(@bill)
  end

  def edit
    @bill = Bill.find(params[:id])
    # @bill.orders.each do |order|
    #   order.update(status: "Accepted")
    # end
  end

  # def update
  #   @bill = Bill.find(params[:id])
  # end

end
