class User < ApplicationRecord
  has_many :avatars 
  validates :username, presence: true 
  validates :username, uniqueness: true 

  def self.sort_av  
    self.avatars.sort_by{  | av | av[:points] }.reverse 
  end 

end
