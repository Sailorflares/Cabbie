class CreateRideReviews < ActiveRecord::Migration
  def change
    create_table :ride_reviews do |t|
      t.belongs_to :driver
      t.belongs_to :user
      t.integer :star_rating
      
      t.timestamps
    end
  end
end
