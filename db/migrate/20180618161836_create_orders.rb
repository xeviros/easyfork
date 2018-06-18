class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.integer :number_of_people
      t.string :status
      t.datetime :date
      t.text :comment

      t.timestamps
    end
  end
end
