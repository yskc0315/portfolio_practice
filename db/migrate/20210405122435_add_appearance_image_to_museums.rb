class AddAppearanceImageToMuseums < ActiveRecord::Migration[5.2]
  def change
    add_column :museums, :appearance_image_id, :string
  end
end
