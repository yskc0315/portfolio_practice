class Forum < ApplicationRecord
  has_many :forum_users
  has_many :users, through: :forum_users
  has_many :forum_posts
  accepts_nested_attributes_for :forum_users
end
