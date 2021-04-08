class AddPrefectureToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :prefecture, :integer
  end
end
