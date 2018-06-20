class Bill < ApplicationRecord
  belongs_to :restaurant
  has_many :orders
  has_many :users, through: :orders

  # validates :number_of_people, presence: true
  # validate :dates


  # def dates
  #   if date < Date.today
  #     errors.add(:date, "can't be in the past")
  #   end
  # end

  def has_ordered?(user)
    self.orders.find_by(user_id: user.id)
  end
end
