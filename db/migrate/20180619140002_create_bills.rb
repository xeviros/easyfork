class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.references :restaurant, foreign_key: true
      t.integer :total_price
      t.integer :number_of_people, :default => 1
      t.string :status
      t.datetime :date
      t.text :comment

      t.timestamps
    end
  end
end
