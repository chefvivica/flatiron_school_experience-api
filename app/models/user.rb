class User < ApplicationRecord
  has_many :avatars 

  validates :username, uniqueness: true
end
