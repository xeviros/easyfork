class ItemsController < ApplicationController

  before_action :set_restaurant
  def new

    @item = Item.new
    @item.restaurant = @restaurant
  end

  def create
    @item = Item.new(item_params)
    @item.restaurant = @restaurant
    if @item.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :picture, :type, :restaurant_id)
  end

  def set_restaurant
     @restaurant = Restaurant.find(params[:restaurant_id])
  end
end


