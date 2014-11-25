class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :ride_review
  validates_uniqueness_of :user_id, scope: :ride_review_id
  validate :user_cannot_vote_on_own_review

  def user_cannot_vote_on_own_review
    if user_id == ride_review.user.id
      errors.add(:value_of_votes, "You can't vote on your own post")
    end
  end  
end
