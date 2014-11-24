class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :ride_review
  validates_uniqueness_of :user_id, scope: :ride_review_id


end
