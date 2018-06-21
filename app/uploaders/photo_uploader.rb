class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

 def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    if self.model.is_a?(User)
      "http://steamavatars.co/?media_dl=2408"
    else
      "rest1.jpg"
    end
  end

end
