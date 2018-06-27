class Image < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :content, PhotoUploader

end
