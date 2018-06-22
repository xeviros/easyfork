class Item < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :orders, through: :order_item

  monetize :price_cents

  validates :name, presence: true
  validates :price, presence: true
  validates :category, presence: true
end
