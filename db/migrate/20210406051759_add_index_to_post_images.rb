class AddIndexToPostImages < ActiveRecord::Migration[5.2]
  def change
    add_index :post_images, :image_id
  end
end
