class RestaurantsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end


   def create
      @restaurant = Restaurant.new(restaurant_params)
      @restaurant.user = current_user
      # calls for the same method within restaurant_policy
      # authorize @restaurant
      if @restaurant.save
        redirect_to restaurant_path(@restaurant)
      else
        render :new
      end
    end


  def edit
  end


private

  def restaurant_params
    params.require(:restaurant).permit(:name, :user_id, :photo, :address, :category, :description)
  end


end
