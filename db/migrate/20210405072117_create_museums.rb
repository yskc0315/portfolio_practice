class CreateMuseums < ActiveRecord::Migration[5.2]
  def change
    create_table :museums do |t|
      t.string :name
      t.integer :entrance_fee
      t.integer :regular_holiday
      t.text :url
      t.time :opening_time
      t.time :closing_time
      t.integer :genre_id
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
