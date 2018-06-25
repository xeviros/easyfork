class AddPopularityToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :popularity, :integer, default: 0
  end
end
