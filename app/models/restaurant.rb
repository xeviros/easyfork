class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :name, presence: true, uniqueness: true

  geocoded_by :address
  after_validation :geocode
end

