class AddTimeToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :opening_time, :time
    add_column :restaurants, :closing_time, :time
  end
end
