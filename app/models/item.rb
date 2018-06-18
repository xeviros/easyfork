class Item < ApplicationRecord
  belongs_to :restaurant
  monetize :price_cents
end
