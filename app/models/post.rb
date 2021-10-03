class Post < ApplicationRecord
  belongs_to :city
  validates :message, :username, presence: true
end
