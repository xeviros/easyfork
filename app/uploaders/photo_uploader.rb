# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

 def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))

    "http://res.cloudinary.com/dmbqqlt51/image/upload/v1528882087/RestaurantBNB/restaurants/restaurant1.jpg"
  end

end
