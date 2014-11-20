class User < ActiveRecord::Base
  has_many :ride_reviews
  has_many :drivers, through: :ride_reviews
end
