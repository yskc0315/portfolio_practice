class ChangeMuseumsColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :museums, :entrance_fee, :integer
    remove_column :museums, :entrance_fee, :string
  end
end
