class User < ActiveRecord::Base
  has_many :ride_reviews
  has_many :drivers, through: :ride_reviews
  validates_uniqueness_of :email
  validates_presence_of :email
  has_secure_password 
end
