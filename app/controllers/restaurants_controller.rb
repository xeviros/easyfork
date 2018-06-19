class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @Restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end
end
