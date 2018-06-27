class BillsController < ApplicationController

  def new
    authorize @bill
  end

  def show
    @bill = Bill.find(params[:id])
    authorize @bill
    if @order = @bill.has_ordered?(current_user)
        @order
      else
        @order = Order.create(bill: @bill, user: current_user)
    end
   if params[:query].present?
      sql_query = "category ILIKE :query"
      @bill.restaurant.items = Item.where(sql_query, query: "%#{params[:query]}%").order(created_at: :desc)
    else
      @bill.restaurant.items = Item.all
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
    @bill = Bill.find(params[:id])
    authorize @bill
    # @bill.orders.each do |order|
    #   order.update(status: "Accepted")
    # end
  end

 def update

  @bill = Bill.find(params[:id])
    @bill.update(bill_params)
    authorize @bill
    if @bill.save
      redirect_to edit_bill_path(@bill)
    else
      render :edit
    end
  end


 def bill_params
    params.require(:bill).permit(:number_of_people, :total_price, :date, :restaurant_id, :user_id, :status)
  end
  # def update
  #   @bill = Bill.find(params[:id])
  # end

end


