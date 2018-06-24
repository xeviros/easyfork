class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @restaurants = Restaurant.all.where.not(latitude: nil, longitude: nil).order(popularity: :desc).first(3)
  end

end
