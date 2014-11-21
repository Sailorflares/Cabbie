class Driver < ActiveRecord::Base
  has_many :ride_reviews
  has_many :users, through: :ride_reviews


  # def self.search(medallion_number)
  #   Driver.find_by(:medallion_number => medallion_number)
  # end

  def formatted_name
    driver_name.split(',').reverse.join(' ')
  end

end
