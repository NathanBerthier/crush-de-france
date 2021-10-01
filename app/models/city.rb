class City < ApplicationRecord
  belong_to :user

  has_many :moderators
  has_many :posts

  has_one :instagram_acount
end