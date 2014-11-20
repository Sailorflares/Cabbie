class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :stars
      t.belongs_to :ride
      t.timestamps
    end
  end
end
