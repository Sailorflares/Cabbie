class Driver < ActiveRecord::Base
  has_many :ride_reviews
  has_many :users, through: :ride_reviews

  def formatted_name
    driver_name.split(',').reverse.join(' ')
  end

  def average_rating
    ride_reviews.average("star_rating").to_f.round(1)
  end

  def stars_earned
    ride_reviews.map{|review| review.star_rating}.inject(:+)
  end  

  def stars_possible
    ride_reviews.count * 5
  end  

  def star_percentage
    ((stars_earned.to_f / stars_possible.to_f) * 100).to_i
  end

end
