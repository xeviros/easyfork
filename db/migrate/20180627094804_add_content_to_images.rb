class AddContentToImages < ActiveRecord::Migration[5.2]
  def change
    add_column :images, :content, :string
  end
end
