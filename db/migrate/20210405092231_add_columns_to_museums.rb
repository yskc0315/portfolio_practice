class AddColumnsToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :entrance_fee, :string
  end
end
