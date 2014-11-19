class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.belongs_to :driver
      t.string :violation_no
      
      t.timestamps
    end
  end
end
