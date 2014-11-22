class RideReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :driver
  validates_presence_of :comments, length: { minimum: 10}
  validates_presence_of :star_rating
end
