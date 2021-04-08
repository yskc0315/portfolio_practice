class CreateForumUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_users do |t|
      t.integer :forum_id
      t.integer :user_id

      t.timestamps
    end
  end
end
