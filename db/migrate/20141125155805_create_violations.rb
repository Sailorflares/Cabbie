class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.string :license_number
      t.string :date
      t.string :charge
      t.string :description
      t.integer :driver_id
    end
  end
end
