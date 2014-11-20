class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
    t.string :medallion_number
    t.string :driver_name
    end
  end
end
