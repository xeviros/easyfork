class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  after_commit :update_order_total_price

  def update_order_total_price
    order.set_total_price
  end
end
