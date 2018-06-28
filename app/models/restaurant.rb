class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :images
  has_many :bills
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  extend FriendlyId
  friendly_id :name, use: :slugged

  def set_average_rating
    denominator = self.reviews.count
    nominator = 0
    self.reviews.each do |review|
      nominator += review.rating
    end
    av_rating = nominator / denominator
    self.average_rating = av_rating
    self.save!
  end

end

