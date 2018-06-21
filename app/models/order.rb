class Order < ApplicationRecord
  belongs_to :bill
  belongs_to :user
  has_many :order_item
  has_many :items, through: :order_items

  # def number_items
  #   if @item.nil?
  #   end
  # end
end
