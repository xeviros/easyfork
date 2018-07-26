class BillsController < ApplicationController

  before_action :find_bill, only: [:show, :edit, :update]

  def new
    authorize @bill
  end

  def show
    authorize @bill
    if @order = @bill.has_ordered?(current_user)
        @order
    else
        @order = Order.create(bill: @bill, user: current_user)
    end
    if params[:query].present?
      sql_query = "category ILIKE :query"
      @bill.restaurant.items.where(sql_query, query: "%#{params[:query]}%").order(created_at: :desc)
    else
      @bill.restaurant.items = @bill.restaurant.items
    end

    @order_item = OrderItem.new

    respond_to do |format|
      format.js
      format.html
    end
  end

  def create
    # Creating a bill after clicking on "start order"
    @restaurant = Restaurant.friendly.find(params[:restaurant_id])
    @bill = Bill.create(restaurant: @restaurant)
    authorize @bill
    # redirect to the show path of the newly created bill
    redirect_to bill_path(@bill)
  end

  def edit
    @bill_completed = bill_completed(@bill)
    # orders_sum = 0
    # @bill.orders.each do |order|
    #   orders_sum += order.order_item.item.price
    # end

    # orders_sum = @bill.total_price

    authorize @bill
    @bill.save
  end

  def update
    @bill.update(bill_params)
    authorize @bill
    if @bill.save
      redirect_to edit_bill_path(@bill)
    else
      render :edit
    end
  end


  def bill_completed(bill)
    @orders_paid = bill.orders.select { |order| order.status == "Paid"}
    @orders_paid.size == bill.orders.size
  end


  def bill_params
    params.require(:bill).permit(:number_of_people, :total_price, :date, :restaurant_id, :user_id, :status)
  end

  def find_bill
    @bill = Bill.find(params[:id])
  end

end


