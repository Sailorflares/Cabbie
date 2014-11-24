class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :ride_review
      t.belongs_to :user
      t.integer :vote

      t.timestamps
    end
  end
end
