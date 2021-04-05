class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :entrance_fee, :string
  end
end
