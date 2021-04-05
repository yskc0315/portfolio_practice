class ChangeUsersColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :prefecture, :integer
    add_column :users, :prefecture, :integer, null: false, default: 0
  end
end
