class AddUberToRideReviews < ActiveRecord::Migration
  def change
    add_column :ride_reviews, :uber, :boolean, :default => false
  end
end
