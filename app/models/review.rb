class Review < ApplicationRecord
  belongs_to :order
  belongs_to :restaurant
  belongs_to :user
  validates :content, presence: :true
  validates :rating, presence: :true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }

  after_create :update_parent_rating

  def update_parent_rating
    self.restaurant.set_average_rating
  end
end
