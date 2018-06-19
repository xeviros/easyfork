class ChangeBillDefaultStatus < ActiveRecord::Migration[5.2]
  def change
    change_column :bills, :status, :string, :default => "Pending"
  end
end
