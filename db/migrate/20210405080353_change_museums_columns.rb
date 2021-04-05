class ChangeMuseumsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :museums, :opening_time, :time
    remove_column :museums, :closing_time, :time
    add_column :museums, :opening_time, :string
    add_column :museums, :closing_time, :string
  end
end
