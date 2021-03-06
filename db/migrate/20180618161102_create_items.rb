class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :type
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
