class Driver < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides
  has_many :ratings, through: :rides
end
