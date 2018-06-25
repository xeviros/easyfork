class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :bills
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  extend FriendlyId
  friendly_id :name, use: :slugged
end

