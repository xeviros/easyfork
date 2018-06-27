class AddAverageRatingToRestaurant < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :average_rating, :integer
  end
end
