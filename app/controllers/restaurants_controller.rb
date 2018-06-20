class RestaurantsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_rest, only: [:show, :edit, :update]

  def new
    @restaurant = Restaurant.new
  end

  def index
          sql_query = " \
        restaurants.name @@ :query \
        OR restaurants.category @@ :query \
        OR restaurants.address @@ :query \
      "

 #  SIMPLE SEARCH
 #  sql_query = "name ILIKE :query OR category ILIKE :query OR description ILIKE :query OR address ILIKE :query"

    if params[:query].present?
      @restaurants = Restaurant.where(sql_query, query: "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end

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

  def update
    @restaurant.update(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  private

  def find_rest
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :category, :photo, :latitude, :longitude, :user_id )
  end

end
