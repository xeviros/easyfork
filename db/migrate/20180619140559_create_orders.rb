class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :bill, foreign_key: true
      t.references :user, foreign_key: true
      t.string :status
      t.text :special_request

      t.timestamps
    end
  end
end
