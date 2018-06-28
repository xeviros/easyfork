class ImagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  before_action :set_restaurant, only: [:new, :create, :show]

  def new

    @image = Image.new
     authorize @image
  end

  def create
    @image = Image.new(image_params)
    @image.restaurant = @restaurant
     authorize @image
    if      @image.save
      new_restaurant_image_path(@restaurant)
    else
      render :new
    end

    flash[:notice] = "Image created"


  end

  def show
    @restaurant.images = Image.all
    @image = @restaurant.images

    authorize @image
  end

  def index
  end

  def edit
  end

  private

  def image_params
    params.require(:image).permit(:id, :content)
  end


  def set_restaurant
     @restaurant = Restaurant.friendly.find(params[:restaurant_id])
  end

end
