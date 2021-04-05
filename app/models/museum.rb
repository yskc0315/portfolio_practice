class Museum < ApplicationRecord
  attachment :appearance_image
  validates :entrance_fee, presence: true
  validates :regular_holiday, presence: true
end