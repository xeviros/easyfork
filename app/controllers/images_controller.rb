class ImagesController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new

    @image = Image.new
     authorize @image
  end

  def create
    @image = Image.new(image_params)
    @image.restaurant = @restaurant
     authorize @image
    if @image.save

      flash[:notice] = "image created"
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
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
