class User < ActiveRecord::Base
  has_many :rides
  has_many :drivers, through: :rides
  has_many :cabs, through: :rides
end
