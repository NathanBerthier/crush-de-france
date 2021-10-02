class City < ApplicationRecord
  belongs_to :user

  has_many :moderators
  has_many :posts, dependent: :delete_all

  has_one :instagram_acount

  def sub?
    DateTime.now <= self.subscription_end
  end

  def num_post
    Post.where(city: self, status: 'att').count
  end
end
