class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :cab
  belongs_to :driver
  has_one :rating
  
end
