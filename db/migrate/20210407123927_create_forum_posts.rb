class CreateForumPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :forum_posts do |t|
      t.integer :forum_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
