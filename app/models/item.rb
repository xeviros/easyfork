class Item < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :orders, through: :order_items

  monetize :price_cents

  validates :name, presence: true
  validates :price, presence: true
end
