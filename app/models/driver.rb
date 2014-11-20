class Driver < ActiveRecord::Base
  has_many :ride_reviews
  has_many :users, through: :ride_reviews
end
