class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :museum_id
      t.string :title
      t.text :body
      t.integer :how_to_visit
      t.integer :companion

      t.timestamps
    end
  end
end
