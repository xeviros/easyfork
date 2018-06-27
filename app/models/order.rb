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

  def set_total_price
    self.amount_cents = items.pluck(:price_cents).sum
    self.save
  end
end
