class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :plate_no
      t.string :brand
      t.string :model
      t.date :date_added
      t.string :assigned

      t.timestamps
    end
  end
end
