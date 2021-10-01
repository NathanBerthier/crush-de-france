class Moderator < ApplicationRecord
  belong_to :user
  belong_to :city
end
