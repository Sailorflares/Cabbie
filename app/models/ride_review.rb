class RideReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :driver
  
end
