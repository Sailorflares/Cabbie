class Driver < ActiveRecord::Base
  has_many :violations
  has_many :rides
  has_many :users, through: :rides
  has_many :cabs, through: :rides
end
