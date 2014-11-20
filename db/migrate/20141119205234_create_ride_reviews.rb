class CreateRideReviews < ActiveRecord::Migration
  def change
    create_table :ridereviews do |t|
      t.belongs_to :driver
      t.belongs_to :user
      t.integer :rating
      t.string :review
      t.timestamps
    end
  end
end
