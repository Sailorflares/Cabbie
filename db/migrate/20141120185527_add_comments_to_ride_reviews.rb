class AddCommentsToRideReviews < ActiveRecord::Migration
  def change
    add_column :ride_reviews, :comments, :string
  end
end
