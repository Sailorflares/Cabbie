class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :ride_review

end
