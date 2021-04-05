class ChangeMsueColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :museums, :entrance_fee, :string
    add_column :museums, :entrance_fee, :integer
  end
end
