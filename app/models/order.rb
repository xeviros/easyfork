class Order < ApplicationRecord
  belongs_to :bill
  belongs_to :user
  has_many :order_items
  has_many :items, through: :order_items
  monetize :amount_cents
  # def number_items
  #   if @item.nil?
  #   end
  # end
end
