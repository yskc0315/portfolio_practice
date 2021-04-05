class ChangeMuseumColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :museums, :regular_holiday, :integer
    add_column :museums, :regular_holiday, :string
  end
end
