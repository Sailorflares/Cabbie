class Cab < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides
  has_many :drivers, through: :rides
end
