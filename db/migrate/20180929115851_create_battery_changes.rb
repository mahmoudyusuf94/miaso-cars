class CreateBatteryChanges < ActiveRecord::Migration[5.2]
  def change
    create_table :battery_changes do |t|
      t.references :car, foreign_key: true
      t.date :date
      t.string :type
      t.integer :waranty

      t.timestamps
    end
  end
end
