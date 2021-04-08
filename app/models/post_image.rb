class PostImage < ApplicationRecord
  belongs_to :comment
  attachment :image
end
