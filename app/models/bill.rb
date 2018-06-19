class Bill < ApplicationRecord
  belongs_to :restaurant
  has_many :orders

  validates :number_of_people, presence: true
  # validate :dates


  # def dates
  #   if date < Date.today
  #     errors.add(:date, "can't be in the past")
  #   end
  # end
end
