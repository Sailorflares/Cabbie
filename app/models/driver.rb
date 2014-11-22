class Driver < ActiveRecord::Base
  has_many :ride_reviews
  has_many :users, through: :ride_reviews

  def formatted_name
    driver_name.split(',').reverse.join(' ')
  end

  def average_rating
    ride_reviews.average("star_rating").to_f.round(1)
  end

end
