class RideReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :driver
  has_many :votes
  validates :comments, length: { minimum: 10 }
  validates_presence_of :star_rating

  def star_rating_percentage
    ((star_rating.to_f / 5) * 125).to_i
  end  

end
