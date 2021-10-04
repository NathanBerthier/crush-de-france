class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cities, dependent: :delete_all
  has_many :moderators, dependent: :delete_all

  validates :username, presence: true

  def alredy_moderator(city)
    self.moderators.each do |moderator|
      if moderator.city == city
        return true
      end
    end
    return false
  end

  def prop_city(city)
    city.user == self
  end
end
