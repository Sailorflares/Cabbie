class Driver < ActiveRecord::Base
  has_many :ride_reviews
  has_many :violations
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
    if ride_reviews.size > 0
      return ride_reviews.count * 5
    else
      5  
    end  
  end  

  def star_percentage
    ((stars_earned.to_f / stars_possible.to_f) * 125).to_i
  end
end
