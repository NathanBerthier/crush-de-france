class City < ApplicationRecord
  belongs_to :user

  has_many :moderators, dependent: :delete_all
  has_many :posts, dependent: :delete_all

  has_one :insta_acount, dependent: :delete

  validates :name, :short_name, presence: true, uniqueness: true

  def sub?
    DateTime.current <= self.subscription_end
  end

  def num_post
    Post.where(city: self, status: 'att').count
  end
end
