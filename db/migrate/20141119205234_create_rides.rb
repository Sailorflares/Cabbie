class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.belongs_to :driver
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
